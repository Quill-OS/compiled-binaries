Latest command to compile qt:
```
./configure --recheck-all -opensource -confirm-license -release -verbose \
 -prefix /mnt/onboard/.adds/${QTDIR} \
 -extprefix /home/build/inkbox/compiled-binaries/qt-bin/${QTDIR} \
 -xplatform linux-kobo-gnueabihf-g++ \
 -sysroot ${SYSROOT} \
 -openssl-linked OPENSSL_PREFIX="${SYSROOT}/usr" \
 -qt-libjpeg -qt-zlib -qt-libpng -qt-freetype -qt-harfbuzz -qt-pcre -sql-sqlite -linuxfb \
 -no-sse2 -no-xcb -no-xcb-xlib -no-tslib -no-icu -no-iconv \
 -nomake tests -no-compile-examples -no-opengl \
 -skip qtx11extras -skip qtwayland -skip qtwinextras -skip qtmacextras -skip qtandroidextras \
 -skip qttools -skip qtdoc -skip qtlocation -skip qtremoteobjects -skip qtgamepad \
 -skip qt3d -skip qtquick3d -skip qtquickcontrols -skip qtsensors -skip qtspeech -skip qtdatavis3d \
 -skip qtpurchasing -skip qtserialbus -skip qtserialport -skip qtquicktimeline -skip qtlottie \
 -skip activeqt -skip qtscript \
 -skip qtwebengine -skip qtwebview -skip qtwebglplugin \
 -no-cups -no-pch -no-libproxy \
 -libudev -evdev -libinput -xkbcommon \
 -dbus-runtime -release
```
notes on compiling qt:
- dbus for kde things
- examples are enabled, look here: https://forum.qt.io/topic/84247/qt5linguisttoolsconfig-cmake-doesn-t-exist/7 - it doesn't work anyway, but just to be sure
- more Qml / Qt Quick enabled
- qt multimedia for RSSGuard

 Overall notes:
- there is also qvirtualkeyboard compiled - I wasn't able to run it, but if someone has better skills, then maybe ~Szybet
