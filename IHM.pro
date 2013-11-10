#-------------------------------------------------
#
# Project created by QtCreator 2013-11-05T06:44:43
#
#-------------------------------------------------


CONFIG += qwt

QT += core gui
include(3rdparty/qextserialport/src/qextserialport.pri)
TARGET = IHM
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    portselection.cpp \
    plot.cpp

HEADERS  += mainwindow.h \
    portselection.h \
    plot.h


