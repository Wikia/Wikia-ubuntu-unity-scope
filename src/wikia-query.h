#include <unity/scopes/SearchQueryBase.h>
#include <unity/scopes/ReplyProxyFwd.h>

class WikiaQuery : public unity::scopes::SearchQueryBase
{
public:
    WikiaQuery(unity::scopes::CannedQuery const& query, unity::scopes::SearchMetadata const& metadata);
    ~WikiaQuery();
    virtual void cancelled() override;

    virtual void run(unity::scopes::SearchReplyProxy const& reply) override;

private:
    std::string query_;
};
