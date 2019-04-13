macx:BIN_DIR = $$PWD/bin-osx
win32:BIN_DIR = $$PWD/bin-win
linux:BIN_DIR = $$PWD/bin-linux

isEmpty(BIN_DIR): error("Only mac/win32/linux supported")
else:DESTDIR = $$BIN_DIR

CONFIG += c++11
