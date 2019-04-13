include(../Config.pri)
include(Bison.pri)
include(Flex.pri)

QT -= gui

TARGET = QtnPEG

CONFIG += cmdline

TEMPLATE = app
VERSION = 1.0.0

SOURCES += main.cpp \
    PropertyEnumGenerator.cpp

BISON_SOURCES += PropertyEnum.y
FLEX_SOURCES += PropertyEnum.l

OTHER_FILES += \
    PropertyEnum.l \
    PropertyEnum.y

HEADERS += \
    PropertyEnumGeneratorCommon.h \
    PropertyEnumGenerator.h
