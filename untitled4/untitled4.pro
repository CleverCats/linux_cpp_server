QT       += core gui
QT      += network
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    c_crc32.cpp \
    c_pthreadpool.cpp \
    clogicsocket.cpp \
    csocket.cpp \
    logic_func.cpp \
    main.cpp \
    mytimer.cpp \
    pingthread.cpp \
    recvthread.cpp \
    sendthread.cpp \
    widget.cpp \
    workerthread.cpp

HEADERS += \
    _include.h \
    c_crc32.h \
    c_global.h \
    c_macro.h \
    c_pthreadpool.h \
    c_struct.h \
    clogicsocket.h \
    csocket.h \
    mytimer.h \
    pingthread.h \
    recvthread.h \
    sendthread.h \
    widget.h \
    workerthread.h\
    winsock2.h

FORMS += \
    widget.ui

LIBS += \
    WS2_32.Lib

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target