
add_library(Qt5::QSGOpenVGAdaptation MODULE IMPORTED)

_populate_Quick_plugin_properties(QSGOpenVGAdaptation RELEASE "scenegraph/libqsgopenvgbackend.so")

list(APPEND Qt5Quick_PLUGINS Qt5::QSGOpenVGAdaptation)
