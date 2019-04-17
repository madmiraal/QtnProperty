include(Config.pri)

INCLUDEPATH += $$PWD/Core
INCLUDEPATH += $$PWD/PropertyWidget

LIBS += -L$$LIB_DIR -lQtnPropertyCore -lQtnPropertyWidget

equals(QMAKE_EXTENSION_STATICLIB, a) {
    PRE_TARGETDEPS += \
        $$LIB_DIR/libQtnPropertyCore.$$QMAKE_EXTENSION_SHLIB \
        $$LIB_DIR/libQtnPropertyWidget.$$QMAKE_EXTENSION_SHLIB
} else {
    PRE_TARGETDEPS += \
        $$LIB_DIR/QtnPropertyCore.$$QMAKE_EXTENSION_SHLIB \
        $$LIB_DIR/QtnPropertyWidget.$$QMAKE_EXTENSION_SHLIB
}
