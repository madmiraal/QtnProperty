include(Config.pri)

INCLUDEPATH += $$PWD/Core
INCLUDEPATH += $$PWD/PropertyWidget

LIBS += -L$$LIB_DIR -lQtnPropertyCore -lQtnPropertyWidget

equals(QMAKE_EXTENSION_STATICLIB, a) {
    PRE_TARGETDEPS += $$LIB_DIR/libQtnPropertyCore.a $$LIB_DIR/libQtnPropertyWidget.a
} else {
    PRE_TARGETDEPS += $$LIB_DIR/QtnPropertyCore.lib $$LIB_DIR/QtnPropertyWidget.lib
}
