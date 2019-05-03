TEMPLATE = subdirs

SUBDIRS += \
    Core \
    PEG \
    Tests

Tests.depends = Core PEG
