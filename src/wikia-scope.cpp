#include "wikia-scope.h"
#include "wikia-query.h"
#include "wikia-preview.h"
#include <unity-scopes.h>

using namespace unity::scopes;

/*
 * Scope initialization
 */
void WikiaScope::start(std::string const&, unity::scopes::RegistryProxy const&)
{

}

void WikiaScope::stop()
{
    /* The stop method should release any resources, such as network connections where applicable */
    delete app;
}

void WikiaScope::run()
{
    // an instance of QApplication is needed to make Qt happy
    int zero = 0;
    app = new QCoreApplication(zero, nullptr);
}

/*
 * Scope search
 */
SearchQueryBase::UPtr WikiaScope::search(unity::scopes::CannedQuery const &q,
                                               unity::scopes::SearchMetadata const& metadata)
{
    unity::scopes::SearchQueryBase::UPtr query(new WikiaQuery(q, metadata));
    return query;
}

/*
 * Scope result presentation
 */
PreviewQueryBase::UPtr WikiaScope::preview(Result const& result, ActionMetadata const& metadata) {
    unity::scopes::PreviewQueryBase::UPtr preview(new WikiaPreview(result, metadata));
    return preview;
}

/*
 * The scope needs to be compiled into a .so shared library. To be succesfully loaded at runtime
 * it must provide two C functions to create and destroy it
 */
#define EXPORT __attribute__ ((visibility ("default")))

extern "C"
{
    EXPORT unity::scopes::ScopeBase* UNITY_SCOPE_CREATE_FUNCTION()
    {
        return new WikiaScope();
    }

    EXPORT void UNITY_SCOPE_DESTROY_FUNCTION(unity::scopes::ScopeBase* scope_base)
    {
        delete scope_base;
    }
}
