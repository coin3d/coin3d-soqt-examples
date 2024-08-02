# This project now requires a Coin v4.0 build as well as a SoQt v1.6 build.
# For Windows, it assumes that Coin and SoQt have been installed in the C:\Coin3D
# directory.

SOURCES += \
    HelloCone.cpp

win32 {
    INCLUDEPATH += C:\Coin3D\include
    LIBS += -L"C:\Coin3D\lib" -lCoin4 -lSoQt1
    DEFINES += SOQT_NOT_DLL
}
unix {
    LIBS += -lCoin4 -lSoQt1
}
