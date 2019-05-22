include(Config.pri)

QT += widgets script

equals(QMAKE_EXTENSION_SHLIB, "dll") {
    DEFINES -= QTN_EXPORT=Q_DECL_EXPORT
    DEFINES += QTN_EXPORT=Q_DECL_IMPORT
}

INCLUDEPATH += $$PWD/Core
INCLUDEPATH += $$PWD/PropertyWidget

LIBS += -L$$LIB_DIR \
    -lQtnPropertyCore$${LIB_VERSION} \
    -lQtnPropertyWidget$${LIB_VERSION}

PRE_TARGETDEPS += \
    $$LIB_DIR/$${QMAKE_PREFIX_SHLIB}QtnPropertyCore$${LIB_VERSION}.$${QMAKE_EXTENSION_SHLIB} \
    $$LIB_DIR/$${QMAKE_PREFIX_SHLIB}QtnPropertyWidget$${LIB_VERSION}.$${QMAKE_EXTENSION_SHLIB}

# If DESTDIR is specified copy the lib directory to the expected location.
!isEmpty(DESTDIR) {
    SOURCE_LIB_DIR = $${LIB_DIR}
    equals(QMAKE_EXTENSION_SHLIB, "dll") {
        DEST_LIB_DIR = $${DESTDIR}
    } else {
        DEST_LIB_DIR = $${DESTDIR}/..
    }
    win32:SOURCE_LIB_DIR ~= s,/,\\,g
    win32:DEST_LIB_DIR ~= s,/,\\,g
    QMAKE_POST_LINK += $$QMAKE_COPY_DIR $$quote($$SOURCE_LIB_DIR) $$quote($$DEST_LIB_DIR) $$escape_expand(\\n\\t)
}
