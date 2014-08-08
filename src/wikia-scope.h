#ifndef DEMOSCOPE_H
#define DEMOSCOPE_H

#include <unity/scopes/ScopeBase.h>
#include <unity/scopes/QueryBase.h>
#include <unity/scopes/ReplyProxyFwd.h>
#include <unity/scopes/QueryBase.h>
#include <unity/scopes/PreviewQueryBase.h>
#include <QCoreApplication>

class WikiaScope : public unity::scopes::ScopeBase
{
public:
    virtual void start(std::string const&, unity::scopes::RegistryProxy const&);

    virtual void stop() override;

    unity::scopes::PreviewQueryBase::UPtr preview(const unity::scopes::Result&,
                                                  const unity::scopes::ActionMetadata&) override;

    virtual unity::scopes::SearchQueryBase::UPtr search(unity::scopes::CannedQuery const& q,
                                                        unity::scopes::SearchMetadata const&) override;

    void run() override;
private:
    QCoreApplication *app;
};

#endif
