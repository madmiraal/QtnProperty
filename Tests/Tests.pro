include(../Config.pri)
include(../PEG.pri)

TEMPLATE = app
TARGET = QtnPropertyTests
DESTDIR = $$BIN_DIR

QT += testlib

CONFIG -= app_bundle
CONFIG += console

INCLUDEPATH += ../Core
LIBS += -L$$LIB_DIR -lQtnPropertyCore
PRE_TARGETDEPS += $$LIB_DIR/$${QMAKE_PREFIX_SHLIB}QtnPropertyCore.$${QMAKE_EXTENSION_SHLIB}

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
