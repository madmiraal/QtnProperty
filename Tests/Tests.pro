include(../Config.pri)
include(../PEG.pri)

TEMPLATE = app
TARGET = QtnPropertyTests
DESTDIR = $$BIN_DIR

QT -= gui
QT += script testlib

CONFIG -= app_bundle
CONFIG += console

INCLUDEPATH += ../Core
LIBS += -L$$LIB_DIR -lQtnPropertyCore
equals(QMAKE_EXTENSION_STATICLIB, a) {
    PRE_TARGETDEPS += $$LIB_DIR/libQtnPropertyCore.a
} else {
    PRE_TARGETDEPS += $$LIB_DIR/QtnPropertyCore.lib
}

HEADERS += \
    TestEnum.h \
    TestGeneratedProperty.h \
    TestProperty.h

SOURCES += \
    main.cpp \
    TestEnum.cpp \
    TestGeneratedProperty.cpp \
    TestProperty.cpp

PEG_SOURCES += \
    PEG/test.pef \
    PEG/test2.pef

OTHER_FILES += $$PEG_SOURCES
