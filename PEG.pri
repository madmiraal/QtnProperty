# To use *.pef files in your project you should:
# 1. Include this PEG.pri file in your project file
# 2. Add your *.pef files to the PEG_SOURCES variable

isEmpty(PEG_TOOL) {
win32: PEG_TOOL = $$PWD/bin/QtnPEG.exe
else:  PEG_TOOL = $$PWD/bin/QtnPEG
}

peg.name = Create PEG header and source files from ${QMAKE_FILE_IN}
peg.input = PEG_SOURCES
peg.output = ${QMAKE_FILE_PATH}/${QMAKE_FILE_BASE}.peg.cpp
peg.commands = $$PEG_TOOL ${QMAKE_FILE_IN}
peg.CONFIG += target_predeps
peg.variable_out = SOURCES
QMAKE_EXTRA_COMPILERS += peg
QMAKE_EXTRA_TARGETS += peg

peg_header.name = Add PEG Header created from ${QMAKE_FILE_IN} to PEG_MOC_HEADERS
peg_header.input = PEG_SOURCES
peg_header.output = ${QMAKE_FILE_PATH}/${QMAKE_FILE_BASE}.peg.h
peg_header.commands = @echo Adding ${QMAKE_FILE_BASE}.peg.h to PEG_MOC_HEADERS
peg_header.CONFIG += target_predeps no_link
peg_header.variable_out = PEG_MOC_HEADERS
QMAKE_EXTRA_COMPILERS += peg_header
QMAKE_EXTRA_TARGETS += peg_header

load(moc)
peg_moc.name = Run moc on PEG headers
peg_moc.output = $$moc_header.output
peg_moc.input = PEG_MOC_HEADERS
peg_moc.depends = $$moc_header.depends peg peg_header
peg_moc.commands = $$moc_header.commands
peg_moc.variable_out = GENERATED_SOURCES
QMAKE_EXTRA_COMPILERS += peg_moc
