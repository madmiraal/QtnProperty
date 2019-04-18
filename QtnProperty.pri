include(Config.pri)

INCLUDEPATH += $$PWD/Core
INCLUDEPATH += $$PWD/PropertyWidget

LIBS += -L$$LIB_DIR \
    -lQtnPropertyCore \
    -lQtnPropertyWidget

PRE_TARGETDEPS += \
    $$LIB_DIR/$${QMAKE_PREFIX_SHLIB}QtnPropertyCore.$${QMAKE_EXTENSION_SHLIB} \
    $$LIB_DIR/$${QMAKE_PREFIX_SHLIB}QtnPropertyWidget.$${QMAKE_EXTENSION_SHLIB}
