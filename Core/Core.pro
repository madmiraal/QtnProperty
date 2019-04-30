include(../Config.pri)

TARGET = QtnPropertyCore
TEMPLATE = lib
DESTDIR = $$LIB_DIR
VERSION = 1.1.0

QT += script

# Enable applications to link to the library using rpath.
macx: QMAKE_LFLAGS_SONAME = -Wl,-install_name,@rpath/

HEADERS += \
    CoreAPI.h\
    Enum.h\
    Property.h\
    PropertyBase.h \
    PropertyCore.h \
    PropertyGUI.h \
    PropertySet.h\
    QObjectPropertySet.h \
    Auxiliary/PropertyAux.h \
    Auxiliary/PropertyDelegateInfo.h \
    Auxiliary/PropertyMacro.h \
    Auxiliary/PropertyTemplates.h \
    Core/PropertyBool.h \
    Core/PropertyDouble.h \
    Core/PropertyEnum.h \
    Core/PropertyEnumFlags.h \
    Core/PropertyFloat.h \
    Core/PropertyInt.h \
    Core/PropertyQPoint.h \
    Core/PropertyQPointF.h \
    Core/PropertyQRect.h \
    Core/PropertyQRectF.h \
    Core/PropertyQSize.h \
    Core/PropertyQSizeF.h \
    Core/PropertyQString.h \
    Core/PropertyUInt.h \
    GUI/PropertyButton.h \
    GUI/PropertyQBrush.h \
    GUI/PropertyQColor.h \
    GUI/PropertyQFont.h \
    GUI/PropertyQPen.h

SOURCES += \
    Enum.cpp \
    Property.cpp \
    PropertyBase.cpp \
    PropertySet.cpp \
    QObjectPropertySet.cpp \
    Core/PropertyBool.cpp \
    Core/PropertyDouble.cpp \
    Core/PropertyEnum.cpp \
    Core/PropertyEnumFlags.cpp \
    Core/PropertyFloat.cpp \
    Core/PropertyInt.cpp \
    Core/PropertyQPoint.cpp \
    Core/PropertyQPointF.cpp \
    Core/PropertyQRect.cpp \
    Core/PropertyQRectF.cpp \
    Core/PropertyQSize.cpp \
    Core/PropertyQSizeF.cpp \
    Core/PropertyQString.cpp \
    Core/PropertyUInt.cpp \
    GUI/PropertyButton.cpp \
    GUI/PropertyQBrush.cpp \
    GUI/PropertyQColor.cpp \
    GUI/PropertyQFont.cpp \
    GUI/PropertyQPen.cpp
