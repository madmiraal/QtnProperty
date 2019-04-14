include(../QtnProperty.pri)
include(../PEG.pri)

TEMPLATE = app
TARGET = QtnPropertyDemo
DESTDIR = $$BIN_DIR

QT += widgets scripttools

HEADERS += \
    MainWindow.h \
    mydialog.h \
    AB/PropertyABColor.h \
    AB/PropertyDelegateABColor.h \
    Freq/PropertyDelegateFreq.h \
    Freq/PropertyFreq.h \
    Int/PropertyDelegateIntList.h \
    Layer/PropertyDelegateLayer.h \
    Layer/PropertyLayer.h \
    PenWidth/PropertyDelegatePenWidth.h \
    PenWidth/PropertyPenWidth.h

SOURCES += \
    main.cpp\
    MainWindow.cpp \
    mydialog.cpp \
    AB/PropertyABColor.cpp \
    AB/PropertyDelegateABColor.cpp \
    Freq/PropertyDelegateFreq.cpp \
    Freq/PropertyFreq.cpp \
    Int/PropertyDelegateIntList.cpp \
    Layer/PropertyDelegateLayer.cpp \
    Layer/PropertyLayer.cpp \
    PenWidth/PropertyDelegatePenWidth.cpp \
    PenWidth/PropertyPenWidth.cpp

FORMS += \
    MainWindow.ui \
    mydialog.ui

PEG_SOURCES += Demo.pef

OTHER_FILES += $$PEG_SOURCES
