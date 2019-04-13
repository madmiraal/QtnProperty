include(Config.pri)

INCLUDEPATH += $$PWD/Core
INCLUDEPATH += $$PWD/PropertyWidget

LIBS += -L$$BIN_DIR -lQtnPropertyCore -lQtnPropertyWidget

equals(QMAKE_EXTENSION_STATICLIB, a) {
    PRE_TARGETDEPS += $$BIN_DIR/libQtnPropertyCore.a $$BIN_DIR/libQtnPropertyWidget.a
} else {
    PRE_TARGETDEPS += $$BIN_DIR/QtnPropertyCore.lib $$BIN_DIR/QtnPropertyWidget.lib
}
