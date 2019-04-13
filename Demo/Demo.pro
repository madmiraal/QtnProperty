include(../Config.pri)

TARGET = QtnPropertyDemo
TEMPLATE = app

QT += widgets script scripttools

SOURCES +=  main.cpp\
            MainWindow.cpp \
            mydialog.cpp \
            AB/PropertyABColor.cpp \
            AB/PropertyDelegateABColor.cpp \
            Int/PropertyDelegateIntList.cpp \
            Layer/PropertyLayer.cpp \
            Layer/PropertyDelegateLayer.cpp \
            PenWidth/PropertyPenWidth.cpp \
            PenWidth/PropertyDelegatePenWidth.cpp \
            Freq/PropertyFreq.cpp \
            Freq/PropertyDelegateFreq.cpp

HEADERS  += MainWindow.h \
            mydialog.h \
            AB/PropertyABColor.h \
            AB/PropertyDelegateABColor.h \
            Int/PropertyDelegateIntList.h \
            Layer/PropertyLayer.h \
            Layer/PropertyDelegateLayer.h \
            PenWidth/PropertyPenWidth.h \
            PenWidth/PropertyDelegatePenWidth.h \
            Freq/PropertyFreq.h \
            Freq/PropertyDelegateFreq.h

FORMS    += MainWindow.ui \
            mydialog.ui

include(../PEG.pri)
PEG_SOURCES += Demo.pef

INCLUDEPATH += ../Core
INCLUDEPATH += ../PropertyWidget

LIBS += -L$$BIN_DIR -lQtnPropertyCore -lQtnPropertyWidget

equals(QMAKE_EXTENSION_STATICLIB, a) {
    PRE_TARGETDEPS += $$BIN_DIR/libQtnPropertyCore.a $$BIN_DIR/libQtnPropertyWidget.a
} else {
    PRE_TARGETDEPS += $$BIN_DIR/QtnPropertyCore.lib $$BIN_DIR/QtnPropertyWidget.lib
}

OTHER_FILES += \
    Demo.pef
