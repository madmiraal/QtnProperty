CONFIG += c++11

BIN_DIR = $$PWD/bin

# Older versions of Qt didn't set QMAKE_EXTENSION_SHLIB in conf files,
# so using QMAKE_EXTENSION_STATICLIB to determine the correct value.
isEmpty(QMAKE_EXTENSION_SHLIB) {
    equals(QMAKE_EXTENSION_STATICLIB, a) {
        QMAKE_EXTENSION_SHLIB = so
    } else {
        QMAKE_EXTENSION_SHLIB = dll
    }
}

# Specify library variables.
equals(QMAKE_EXTENSION_SHLIB, "dll") {
    LIB_VERSION = 1
    LIB_DIR = $$BIN_DIR
    DEFINES += QTN_EXPORT=Q_DECL_EXPORT
} else {
    LIB_DIR = $$PWD/lib
    QMAKE_RPATHDIR += ../lib
    DEFINES += QTN_EXPORT=
}
