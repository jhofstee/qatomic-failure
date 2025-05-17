QT = core

HEADERS = 

SOURCES = \
    reduced.cpp \

QMAKE_CXXFLAGS *= -ffunction-sections
QMAKE_LFLAGS *= -Wl,--gc-sections
QMAKE_CXXFLAGS += -O2 -save-temps -fverbose-asm -std=c++17 -fdump-rtl-all
