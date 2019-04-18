include(../Config.pri)

TARGET = QtnPropertyWidget
TEMPLATE = lib
DESTDIR = $$LIB_DIR
VERSION = 1.1.0

QT += widgets

INCLUDEPATH += ../Core
LIBS += -L$$LIB_DIR -lQtnPropertyCore
PRE_TARGETDEPS += $$LIB_DIR/$${QMAKE_PREFIX_SHLIB}QtnPropertyCore.$${QMAKE_EXTENSION_SHLIB}

HEADERS += \
    PropertyView.h \
    PropertyWidget.h \
    PropertyWidgetAPI.h \
    Delegates/PropertyDelegate.h \
    Delegates/PropertyDelegateAux.h \
    Delegates/PropertyDelegateFactory.h \
    Delegates/Core/PropertyDelegateBool.h \
    Delegates/Core/PropertyDelegateDouble.h \
    Delegates/Core/PropertyDelegateEnum.h \
    Delegates/Core/PropertyDelegateEnumFlags.h \
    Delegates/Core/PropertyDelegateFloat.h \
    Delegates/Core/PropertyDelegateQPoint.h \
    Delegates/Core/PropertyDelegateInt.h \
    Delegates/Core/PropertyDelegateQPointF.h \
    Delegates/Core/PropertyDelegateQRect.h \
    Delegates/Core/PropertyDelegateQRectF.h \
    Delegates/Core/PropertyDelegateQSize.h \
    Delegates/Core/PropertyDelegateQSizeF.h \
    Delegates/Core/PropertyDelegateQString.h \
    Delegates/Core/PropertyDelegateUInt.h \
    Delegates/GUI/PropertyDelegateButton.h \
    Delegates/GUI/PropertyDelegateQBrush.h \
    Delegates/GUI/PropertyDelegateQColor.h \
    Delegates/GUI/PropertyDelegateQFont.h \
    Delegates/GUI/PropertyDelegateQPen.h \
    Delegates/Utils/PropertyDelegateGeoCoord.h \
    Delegates/Utils/PropertyDelegateGeoPoint.h \
    Delegates/Utils/PropertyDelegateMisc.h \
    Delegates/Utils/PropertyDelegatePropertySet.h \
    Delegates/Utils/PropertyDelegateSliderBox.h \
    Delegates/Utils/PropertyEditorAux.h \
    Delegates/Utils/PropertyEditorHandler.h \
    Utils/AccessibilityProxy.h \
    Utils/InplaceEditing.h

SOURCES += \
    PropertyWidget.cpp \
    PropertyView.cpp \
    Delegates/PropertyDelegate.cpp \
    Delegates/PropertyDelegateAux.cpp \
    Delegates/PropertyDelegateFactory.cpp \
    Delegates/Core/PropertyDelegateBool.cpp \
    Delegates/Core/PropertyDelegateDouble.cpp \
    Delegates/Core/PropertyDelegateEnum.cpp \
    Delegates/Core/PropertyDelegateEnumFlags.cpp \
    Delegates/Core/PropertyDelegateFloat.cpp \
    Delegates/Core/PropertyDelegateInt.cpp \
    Delegates/Core/PropertyDelegateQPoint.cpp \
    Delegates/Core/PropertyDelegateQPointF.cpp \
    Delegates/Core/PropertyDelegateQRect.cpp \
    Delegates/Core/PropertyDelegateQRectF.cpp \
    Delegates/Core/PropertyDelegateQSize.cpp \
    Delegates/Core/PropertyDelegateQSizeF.cpp \
    Delegates/Core/PropertyDelegateQString.cpp \
    Delegates/Core/PropertyDelegateUInt.cpp \
    Delegates/GUI/PropertyDelegateButton.cpp \
    Delegates/GUI/PropertyDelegateQBrush.cpp \
    Delegates/GUI/PropertyDelegateQColor.cpp \
    Delegates/GUI/PropertyDelegateQFont.cpp \
    Delegates/GUI/PropertyDelegateQPen.cpp \
    Delegates/Utils/PropertyDelegateGeoCoord.cpp \
    Delegates/Utils/PropertyDelegateGeoPoint.cpp \
    Delegates/Utils/PropertyDelegateMisc.cpp \
    Delegates/Utils/PropertyDelegatePropertySet.cpp \
    Delegates/Utils/PropertyDelegateSliderBox.cpp \
    Delegates/Utils/PropertyEditorAux.cpp \
    Delegates/Utils/PropertyEditorHandler.cpp \
    Utils/AccessibilityProxy.cpp \
    Utils/InplaceEditing.cpp
