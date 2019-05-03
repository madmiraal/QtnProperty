CONFIG += c++11

BIN_DIR = $$PWD/bin
LIB_DIR = $$PWD/lib
QMAKE_RPATHDIR += ../lib

# Older versions of Qt didn't set QMAKE_EXTENSION_SHLIB in conf files,
# so using QMAKE_EXTENSION_STATICLIB to determine the correct value.
isEmpty(QMAKE_EXTENSION_SHLIB) {
    equals(QMAKE_EXTENSION_STATICLIB, a) {
        QMAKE_EXTENSION_SHLIB = so
    } else {
        QMAKE_EXTENSION_SHLIB = dll
    }
}
