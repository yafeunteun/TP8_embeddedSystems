#############################################################################
# Makefile for building: IHM
# Generated by qmake (2.01a) (Qt 4.8.4) on: dim. nov. 10 19:38:38 2013
# Project:  IHM.pro
# Template: app
# Command: /usr/share/qt4/bin/qmake -o Makefile IHM.pro
#############################################################################

####### Compiler, tools and options

CC            = gcc
CXX           = g++
DEFINES       = -DQESP_NO_UDEV -D__linux__ -DQWT_DLL -DQT_NO_DEBUG -DQT_SVG_LIB -DQT_GUI_LIB -DQT_CORE_LIB -DQT_SHARED
CFLAGS        = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
CXXFLAGS      = -m64 -pipe -O2 -Wall -W -D_REENTRANT $(DEFINES)
INCPATH       = -I/usr/share/qt4/mkspecs/linux-g++-64 -I. -I/usr/include/qt4/QtCore -I/usr/include/qt4/QtGui -I/usr/include/qt4/QtSvg -I/usr/include/qt4 -I3rdparty/qextserialport/src -I/usr/include/qwt -I.
LINK          = g++
LFLAGS        = -m64 -Wl,-O1
LIBS          = $(SUBLIBS)  -L/usr/lib/x86_64-linux-gnu -L/usr/lib -lqwt -lQtSvg -lQtGui -lQtCore -lpthread 
AR            = ar cqs
RANLIB        = 
QMAKE         = /usr/share/qt4/bin/qmake
TAR           = tar -cf
COMPRESS      = gzip -9f
COPY          = cp -f
SED           = sed
COPY_FILE     = $(COPY)
COPY_DIR      = $(COPY) -r
STRIP         = strip
INSTALL_FILE  = install -m 644 -p
INSTALL_DIR   = $(COPY_DIR)
INSTALL_PROGRAM = install -m 755 -p
DEL_FILE      = rm -f
SYMLINK       = ln -f -s
DEL_DIR       = rmdir
MOVE          = mv -f
CHK_DIR_EXISTS= test -d
MKDIR         = mkdir -p

####### Output directory

OBJECTS_DIR   = ./

####### Files

SOURCES       = 3rdparty/qextserialport/src/qextserialport.cpp \
		3rdparty/qextserialport/src/qextserialenumerator.cpp \
		3rdparty/qextserialport/src/qextserialport_unix.cpp \
		3rdparty/qextserialport/src/qextserialenumerator_linux.cpp \
		main.cpp \
		mainwindow.cpp \
		portselection.cpp \
		plot.cpp moc_mainwindow.cpp \
		moc_portselection.cpp \
		moc_plot.cpp
OBJECTS       = qextserialport.o \
		qextserialenumerator.o \
		qextserialport_unix.o \
		qextserialenumerator_linux.o \
		main.o \
		mainwindow.o \
		portselection.o \
		plot.o \
		moc_mainwindow.o \
		moc_portselection.o \
		moc_plot.o
DIST          = /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		3rdparty/qextserialport/src/qextserialport.pri \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/qwtconfig.pri \
		/usr/share/qt4/mkspecs/features/qwt.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		IHM.pro
QMAKE_TARGET  = IHM
DESTDIR       = 
TARGET        = IHM

first: all
####### Implicit rules

.SUFFIXES: .o .c .cpp .cc .cxx .C

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cc.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.cxx.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.C.o:
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o "$@" "$<"

.c.o:
	$(CC) -c $(CFLAGS) $(INCPATH) -o "$@" "$<"

####### Build rules

all: Makefile $(TARGET)

$(TARGET):  $(OBJECTS)  
	$(LINK) $(LFLAGS) -o $(TARGET) $(OBJECTS) $(OBJCOMP) $(LIBS)

Makefile: IHM.pro  /usr/share/qt4/mkspecs/linux-g++-64/qmake.conf /usr/share/qt4/mkspecs/common/unix.conf \
		/usr/share/qt4/mkspecs/common/linux.conf \
		/usr/share/qt4/mkspecs/common/gcc-base.conf \
		/usr/share/qt4/mkspecs/common/gcc-base-unix.conf \
		/usr/share/qt4/mkspecs/common/g++-base.conf \
		/usr/share/qt4/mkspecs/common/g++-unix.conf \
		/usr/share/qt4/mkspecs/qconfig.pri \
		/usr/share/qt4/mkspecs/features/qt_functions.prf \
		/usr/share/qt4/mkspecs/features/qt_config.prf \
		/usr/share/qt4/mkspecs/features/exclusive_builds.prf \
		/usr/share/qt4/mkspecs/features/default_pre.prf \
		3rdparty/qextserialport/src/qextserialport.pri \
		/usr/share/qt4/mkspecs/features/release.prf \
		/usr/share/qt4/mkspecs/features/default_post.prf \
		/usr/share/qt4/mkspecs/features/qwtconfig.pri \
		/usr/share/qt4/mkspecs/features/qwt.prf \
		/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf \
		/usr/share/qt4/mkspecs/features/warn_on.prf \
		/usr/share/qt4/mkspecs/features/qt.prf \
		/usr/share/qt4/mkspecs/features/unix/thread.prf \
		/usr/share/qt4/mkspecs/features/moc.prf \
		/usr/share/qt4/mkspecs/features/resources.prf \
		/usr/share/qt4/mkspecs/features/uic.prf \
		/usr/share/qt4/mkspecs/features/yacc.prf \
		/usr/share/qt4/mkspecs/features/lex.prf \
		/usr/share/qt4/mkspecs/features/include_source_dir.prf \
		/usr/lib/x86_64-linux-gnu/libQtSvg.prl \
		/usr/lib/x86_64-linux-gnu/libQtGui.prl \
		/usr/lib/x86_64-linux-gnu/libQtCore.prl
	$(QMAKE) -o Makefile IHM.pro
/usr/share/qt4/mkspecs/common/unix.conf:
/usr/share/qt4/mkspecs/common/linux.conf:
/usr/share/qt4/mkspecs/common/gcc-base.conf:
/usr/share/qt4/mkspecs/common/gcc-base-unix.conf:
/usr/share/qt4/mkspecs/common/g++-base.conf:
/usr/share/qt4/mkspecs/common/g++-unix.conf:
/usr/share/qt4/mkspecs/qconfig.pri:
/usr/share/qt4/mkspecs/features/qt_functions.prf:
/usr/share/qt4/mkspecs/features/qt_config.prf:
/usr/share/qt4/mkspecs/features/exclusive_builds.prf:
/usr/share/qt4/mkspecs/features/default_pre.prf:
3rdparty/qextserialport/src/qextserialport.pri:
/usr/share/qt4/mkspecs/features/release.prf:
/usr/share/qt4/mkspecs/features/default_post.prf:
/usr/share/qt4/mkspecs/features/qwtconfig.pri:
/usr/share/qt4/mkspecs/features/qwt.prf:
/usr/share/qt4/mkspecs/features/unix/gdb_dwarf_index.prf:
/usr/share/qt4/mkspecs/features/warn_on.prf:
/usr/share/qt4/mkspecs/features/qt.prf:
/usr/share/qt4/mkspecs/features/unix/thread.prf:
/usr/share/qt4/mkspecs/features/moc.prf:
/usr/share/qt4/mkspecs/features/resources.prf:
/usr/share/qt4/mkspecs/features/uic.prf:
/usr/share/qt4/mkspecs/features/yacc.prf:
/usr/share/qt4/mkspecs/features/lex.prf:
/usr/share/qt4/mkspecs/features/include_source_dir.prf:
/usr/lib/x86_64-linux-gnu/libQtSvg.prl:
/usr/lib/x86_64-linux-gnu/libQtGui.prl:
/usr/lib/x86_64-linux-gnu/libQtCore.prl:
qmake:  FORCE
	@$(QMAKE) -o Makefile IHM.pro

dist: 
	@$(CHK_DIR_EXISTS) .tmp/IHM1.0.0 || $(MKDIR) .tmp/IHM1.0.0 
	$(COPY_FILE) --parents $(SOURCES) $(DIST) .tmp/IHM1.0.0/ && $(COPY_FILE) --parents 3rdparty/qextserialport/src/qextserialport.h 3rdparty/qextserialport/src/qextserialenumerator.h 3rdparty/qextserialport/src/qextserialport_global.h 3rdparty/qextserialport/src/qextserialport_p.h 3rdparty/qextserialport/src/qextserialenumerator_p.h mainwindow.h portselection.h plot.h .tmp/IHM1.0.0/ && $(COPY_FILE) --parents 3rdparty/qextserialport/src/qextserialport.cpp 3rdparty/qextserialport/src/qextserialenumerator.cpp 3rdparty/qextserialport/src/qextserialport_unix.cpp 3rdparty/qextserialport/src/qextserialenumerator_linux.cpp main.cpp mainwindow.cpp portselection.cpp plot.cpp .tmp/IHM1.0.0/ && (cd `dirname .tmp/IHM1.0.0` && $(TAR) IHM1.0.0.tar IHM1.0.0 && $(COMPRESS) IHM1.0.0.tar) && $(MOVE) `dirname .tmp/IHM1.0.0`/IHM1.0.0.tar.gz . && $(DEL_FILE) -r .tmp/IHM1.0.0


clean:compiler_clean 
	-$(DEL_FILE) $(OBJECTS)
	-$(DEL_FILE) *~ core *.core


####### Sub-libraries

distclean: clean
	-$(DEL_FILE) $(TARGET) 
	-$(DEL_FILE) Makefile


check: first

mocclean: compiler_moc_header_clean compiler_moc_source_clean

mocables: compiler_moc_header_make_all compiler_moc_source_make_all

compiler_moc_header_make_all: moc_qextserialport.cpp moc_qextserialenumerator.cpp moc_mainwindow.cpp moc_portselection.cpp moc_plot.cpp
compiler_moc_header_clean:
	-$(DEL_FILE) moc_qextserialport.cpp moc_qextserialenumerator.cpp moc_mainwindow.cpp moc_portselection.cpp moc_plot.cpp
moc_qextserialport.cpp: 3rdparty/qextserialport/src/qextserialport_global.h \
		3rdparty/qextserialport/src/qextserialport.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) 3rdparty/qextserialport/src/qextserialport.h -o moc_qextserialport.cpp

moc_qextserialenumerator.cpp: 3rdparty/qextserialport/src/qextserialport_global.h \
		3rdparty/qextserialport/src/qextserialenumerator.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) 3rdparty/qextserialport/src/qextserialenumerator.h -o moc_qextserialenumerator.cpp

moc_mainwindow.cpp: 3rdparty/qextserialport/src/qextserialport.h \
		3rdparty/qextserialport/src/qextserialport_global.h \
		plot.h \
		mainwindow.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) mainwindow.h -o moc_mainwindow.cpp

moc_portselection.cpp: 3rdparty/qextserialport/src/qextserialport.h \
		3rdparty/qextserialport/src/qextserialport_global.h \
		portselection.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) portselection.h -o moc_portselection.cpp

moc_plot.cpp: plot.h
	/usr/lib/x86_64-linux-gnu/qt4/bin/moc $(DEFINES) $(INCPATH) plot.h -o moc_plot.cpp

compiler_rcc_make_all:
compiler_rcc_clean:
compiler_image_collection_make_all: qmake_image_collection.cpp
compiler_image_collection_clean:
	-$(DEL_FILE) qmake_image_collection.cpp
compiler_moc_source_make_all:
compiler_moc_source_clean:
compiler_uic_make_all:
compiler_uic_clean:
compiler_yacc_decl_make_all:
compiler_yacc_decl_clean:
compiler_yacc_impl_make_all:
compiler_yacc_impl_clean:
compiler_lex_make_all:
compiler_lex_clean:
compiler_clean: compiler_moc_header_clean 

####### Compile

qextserialport.o: 3rdparty/qextserialport/src/qextserialport.cpp 3rdparty/qextserialport/src/qextserialport.h \
		3rdparty/qextserialport/src/qextserialport_global.h \
		3rdparty/qextserialport/src/qextserialport_p.h \
		moc_qextserialport.cpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qextserialport.o 3rdparty/qextserialport/src/qextserialport.cpp

qextserialenumerator.o: 3rdparty/qextserialport/src/qextserialenumerator.cpp 3rdparty/qextserialport/src/qextserialenumerator.h \
		3rdparty/qextserialport/src/qextserialport_global.h \
		3rdparty/qextserialport/src/qextserialenumerator_p.h \
		moc_qextserialenumerator.cpp
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qextserialenumerator.o 3rdparty/qextserialport/src/qextserialenumerator.cpp

qextserialport_unix.o: 3rdparty/qextserialport/src/qextserialport_unix.cpp 3rdparty/qextserialport/src/qextserialport.h \
		3rdparty/qextserialport/src/qextserialport_global.h \
		3rdparty/qextserialport/src/qextserialport_p.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qextserialport_unix.o 3rdparty/qextserialport/src/qextserialport_unix.cpp

qextserialenumerator_linux.o: 3rdparty/qextserialport/src/qextserialenumerator_linux.cpp 3rdparty/qextserialport/src/qextserialenumerator.h \
		3rdparty/qextserialport/src/qextserialport_global.h \
		3rdparty/qextserialport/src/qextserialenumerator_p.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o qextserialenumerator_linux.o 3rdparty/qextserialport/src/qextserialenumerator_linux.cpp

main.o: main.cpp mainwindow.h \
		3rdparty/qextserialport/src/qextserialport.h \
		3rdparty/qextserialport/src/qextserialport_global.h \
		plot.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o main.o main.cpp

mainwindow.o: mainwindow.cpp mainwindow.h \
		3rdparty/qextserialport/src/qextserialport.h \
		3rdparty/qextserialport/src/qextserialport_global.h \
		plot.h \
		portselection.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o mainwindow.o mainwindow.cpp

portselection.o: portselection.cpp portselection.h \
		3rdparty/qextserialport/src/qextserialport.h \
		3rdparty/qextserialport/src/qextserialport_global.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o portselection.o portselection.cpp

plot.o: plot.cpp plot.h
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o plot.o plot.cpp

moc_mainwindow.o: moc_mainwindow.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_mainwindow.o moc_mainwindow.cpp

moc_portselection.o: moc_portselection.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_portselection.o moc_portselection.cpp

moc_plot.o: moc_plot.cpp 
	$(CXX) -c $(CXXFLAGS) $(INCPATH) -o moc_plot.o moc_plot.cpp

####### Install

install:   FORCE

uninstall:   FORCE

FORCE:
