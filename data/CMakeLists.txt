# Put the ini file in the build directory next to the scope
# .so file so test tools can find both easily.
configure_file(wikia-scope.ini.in ../src/wikia-scope.ini)

INSTALL(FILES ${CMAKE_BINARY_DIR}/src/wikia-scope.ini
DESTINATION ${INI_INSTALLDIR})
