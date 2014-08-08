#ifndef DEMOPREVIEW_H
#define DEMOPREVIEW_H

#include <unity/scopes/PreviewQueryBase.h>
#include <unity/scopes/Result.h>

class WikiaPreview : public unity::scopes::PreviewQueryBase
{
public:
    WikiaPreview(unity::scopes::Result const& result, unity::scopes::ActionMetadata const& metadata);
    ~WikiaPreview();

    virtual void cancelled() override;
    virtual void run(unity::scopes::PreviewReplyProxy const& reply) override;

private:
    std::string uri_;
};

#endif
