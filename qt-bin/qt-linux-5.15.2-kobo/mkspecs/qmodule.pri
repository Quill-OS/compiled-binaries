host_build {
    QT_CPU_FEATURES.x86_64 = mmx sse sse2
} else {
    QT_CPU_FEATURES.arm = neon
}
QT.global_private.enabled_features = alloca_h alloca private_tests dbus dlopen gui libudev network posix_fallocate reduce_exports relocatable sql testlib widgets xml
QT.global_private.disabled_features = sse2 alloca_malloc_h android-style-assets avx2 dbus-linked gc_binaries intelcet reduce_relocations release_tools stack-protector-strong system-zlib zstd
PKG_CONFIG_EXECUTABLE = /sbin/pkg-config
QMAKE_LIBS_LIBDL = -ldl
QMAKE_LIBS_LIBUDEV = -L/home/build/inkbox/compiled-binaries/arm-kobo-linux-gnueabihf/arm-kobo-linux-gnueabihf/sysroot/lib -ludev
QMAKE_INCDIR_LIBUDEV = /home/build/inkbox/compiled-binaries/arm-kobo-linux-gnueabihf/arm-kobo-linux-gnueabihf/sysroot/include
QT_COORD_TYPE = double
CONFIG -= precompile_header
CONFIG += cross_compile enable_new_dtags headersclean largefile neon warnings_are_errors
QT_BUILD_PARTS += libs examples
QT_HOST_CFLAGS_DBUS += -I/usr/include/dbus-1.0 -I/usr/lib/dbus-1.0/include
