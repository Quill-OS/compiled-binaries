host_build {
    QT_CPU_FEATURES.x86_64 = mmx sse sse2
} else {
    QT_CPU_FEATURES.arm = neon
}
QT.global_private.enabled_features = alloca_h alloca dlopen gui libudev network posix_fallocate reduce_exports relocatable sql testlib widgets xml
QT.global_private.disabled_features = sse2 alloca_malloc_h android-style-assets avx2 private_tests dbus dbus-linked gc_binaries intelcet reduce_relocations release_tools stack-protector-strong system-zlib zstd
PKG_CONFIG_EXECUTABLE = /usr/bin/pkg-config
QMAKE_LIBS_LIBDL = -ldl
QMAKE_LIBS_LIBUDEV = -L/home/build/inkbox/compiled-binaries/arm-kobo-linux-gnueabihf/arm-kobo-linux-gnueabihf/sysroot/lib -ludev
QMAKE_INCDIR_LIBUDEV = /home/build/inkbox/compiled-binaries/arm-kobo-linux-gnueabihf/arm-kobo-linux-gnueabihf/sysroot/include
QT_COORD_TYPE = double
CONFIG -= precompile_header
CONFIG += cross_compile enable_new_dtags largefile neon
QT_BUILD_PARTS += libs
QT_HOST_CFLAGS_DBUS += -I/usr/include/dbus-1.0 -I/usr/lib/dbus-1.0/include
