host_build {
    QT_CPU_FEATURES.arm = 
} else {
    QT_CPU_FEATURES.arm = neon
}
QT.global_private.enabled_features = alloca_h alloca dbus dbus-linked gui libudev network posix_fallocate qml-debug reduce_exports sql system-zlib testlib widgets xml
QT.global_private.disabled_features = sse2 alloca_malloc_h android-style-assets avx2 private_tests reduce_relocations release_tools stack-protector-strong
PKG_CONFIG_EXECUTABLE = /usr/bin/pkg-config
QMAKE_LIBS_DBUS = -ldbus-1
QMAKE_INCDIR_DBUS = //usr/include/dbus-1.0 //usr/lib/arm-linux-gnueabihf/dbus-1.0/include
QMAKE_LIBS_LIBUDEV = -ludev
QT_COORD_TYPE = double
QMAKE_LIBS_ZLIB = -lz
CONFIG += cross_compile use_gold_linker enable_new_dtags largefile neon precompile_header
QT_BUILD_PARTS += libs
QT_HOST_CFLAGS_DBUS += -I//usr/include/dbus-1.0 -I//usr/lib/arm-linux-gnueabihf/dbus-1.0/include
