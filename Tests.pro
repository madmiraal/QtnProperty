TEMPLATE = subdirs

SUBDIRS += \
    Core \
    Tests

Tests.depends = Core
