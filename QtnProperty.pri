include(Config.pri)

QT += widgets script

equals(QMAKE_EXTENSION_SHLIB, "dll") {
    DEFINES -= QTN_EXPORT=Q_DECL_EXPORT
    DEFINES += QTN_EXPORT=Q_DECL_IMPORT
}

INCLUDEPATH += $$PWD/Core
INCLUDEPATH += $$PWD/PropertyWidget

LIBS += -L$$LIB_DIR \
    -lQtnPropertyCore$${LIB_VERSION} \
    -lQtnPropertyWidget$${LIB_VERSION}

PRE_TARGETDEPS += \
    $$LIB_DIR/$${QMAKE_PREFIX_SHLIB}QtnPropertyCore$${LIB_VERSION}.$${QMAKE_EXTENSION_SHLIB} \
    $$LIB_DIR/$${QMAKE_PREFIX_SHLIB}QtnPropertyWidget$${LIB_VERSION}.$${QMAKE_EXTENSION_SHLIB}
