find_package(Qt5Network REQUIRED)
add_definitions(-DQT_NO_KEYWORDS)

add_library(${SCOPE_NAME} SHARED wikia-preview.cpp wikia-query.cpp wikia-scope.cpp)
qt5_use_modules(${SCOPE_NAME} Network)
target_link_libraries(${SCOPE_NAME} ${UNITY_SCOPES_LDFLAGS})
set_property(TARGET ${SCOPE_NAME} PROPERTY COMPILE_FLAGS ${UNITY_SCOPES_CFLAGS})

install(TARGETS ${SCOPE_NAME}
LIBRARY DESTINATION ${SCOPE_INSTALLDIR}
)
