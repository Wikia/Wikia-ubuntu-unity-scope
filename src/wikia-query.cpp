#include "wikia-query.h"
#include <unity/scopes/Annotation.h>
#include <unity/scopes/CategorisedResult.h>
#include <unity/scopes/CategoryRenderer.h>
#include <unity/scopes/QueryBase.h>
#include <unity/scopes/SearchReply.h>

#include <QDebug>
#include <QJsonArray>
#include <QJsonDocument>
#include <QJsonObject>
#include <QNetworkAccessManager>
#include <QNetworkReply>
#include <QNetworkRequest>
#include <QUrl>
#include <QCoreApplication>

using namespace unity::scopes;


namespace
{
const static std::string CATEGORY_TEMPLATE =
        R"(
{
        "schema-version": 1,
        "template": {
            "category-layout": "grid",
            "card-size": "small"
        },
        "components": {
            "title": "title",
            "art" : {
                "field": "art"
            },
            "subtitle": "subtitle"
        }
}
        )";
}

const QString BASE_URI = "http://www.wikia.com/wikia.php?controller=SearchApi&method=getCrossWiki&expand=1&query=%1";

WikiaQuery::WikiaQuery(CannedQuery const& query, SearchMetadata const& metadata) :
    SearchQueryBase(query, metadata)
{
    query_ = query.query_string();
}

WikiaQuery::~WikiaQuery()
{
}

void WikiaQuery::cancelled()
{
    // TODO: it would be nice to stop QEventLoop that's used in run() here,
    // but let's keep it simple for this example.
}

void WikiaQuery::run(unity::scopes::SearchReplyProxy const& reply)
{
    CategoryRenderer rdr(CATEGORY_TEMPLATE);
    auto cat = reply->register_category("Wikia", "Article", "", rdr);


    QEventLoop loop;

    QNetworkAccessManager manager;
    QObject::connect(&manager, SIGNAL(finished(QNetworkReply*)), &loop, SLOT(quit()));
    QObject::connect(&manager, &QNetworkAccessManager::finished,
            [reply, cat, this](QNetworkReply *msg){
                QByteArray data = msg->readAll();
                QJsonParseError err;
                QJsonDocument doc = QJsonDocument::fromJson(data, &err);

                if (err.error != QJsonParseError::NoError) {
                    qCritical() << "Failed to parse server data: " << err.errorString();
                } else {
                    // Find the "payload" array of results
                    QJsonObject obj = doc.object();
                    QJsonArray results = obj["items"].toArray();

                    //loop through results of our web query with each result called 'result'
                    for(const auto &result : results) {
                        //create our categorized result using our pointer, which is either to out
                        //grid or our carousel Category
                        CategorisedResult catres((cat));

                        //treat result as Q JSON
                        QJsonObject resJ = result.toObject();

                        // load up vars with from result
                        auto title = resJ["title"].toString();
                        //auto artist = "Artist: " + resJ["drawn_by"].toString();
                        auto uri = resJ["url"].toString();
                        auto image = resJ["image"].toString();
                        auto desc = resJ["desc"].toString();

                        //set our CateogroisedResult object with out searchresults values
                        catres.set_uri(uri.toStdString());
                        catres.set_dnd_uri(uri.toStdString());
                        catres.set_title(title.toStdString());
                        catres.set_art(image.toStdString());
                        //Here we add a non-standard key/value which therefore has no convenience method
                        //Note that such non-standard keys do not display in the Results display phase.
                        //They may be displayed in the Preview phase. See wikia-preview.cpp and
                        //search for 'description' to see how
                        catres["description"] = Variant(desc.toStdString());
//                        catres["artist"] = Variant(artist.toStdString());

                        //push the categorized result to the client
                        if (!reply->push(catres)) {
                            break; // false from push() means search waas cancelled
                        }
                    }
                }
            }
            );

    // The query is the search string and was passed to this Query object's constructor by the client
    // Empty search string yields no results with wikia API.
    // Let's set the query string to "cat" if empty so the scope displays results at first launch
    // in demo/devel mode

    if ( query_.empty() ) {
      query_ = "muppet";
    }
    QString queryUri = BASE_URI.arg(query_.c_str());
    manager.get(QNetworkRequest(QUrl(queryUri)));
    loop.exec();
}
