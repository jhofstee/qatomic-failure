QT = core dbus core-private

#equals(QT_MAJOR_VERSION, 6): QMAKE_CXXFLAGS += -std=c++17

HEADERS = 

SOURCES = \
    test.cpp \

QMAKE_CXXFLAGS *= -ffunction-sections
QMAKE_LFLAGS *= -Wl,--gc-sections

