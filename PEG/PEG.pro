include(../Config.pri)
include(Bison.pri)
include(Flex.pri)

TARGET = QtnPEG
TEMPLATE = app
DESTDIR = $$BIN_DIR
VERSION = 1.1.0

CONFIG += cmdline
QT -= gui

SOURCES += \
    main.cpp \
    PropertyEnumGenerator.cpp

HEADERS += \
    PropertyEnumGenerator.h \
    PropertyEnumGeneratorCommon.h

BISON_SOURCES += PropertyEnum.y
FLEX_SOURCES += PropertyEnum.l

OTHER_FILES += \
    PropertyEnum.y \
    PropertyEnum.l
