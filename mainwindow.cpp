#include "mainwindow.h"
#include <QMenuBar>
#include <QStatusBar>
#include <QApplication>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{

    m_drawingZone = new QLabel;
    m_drawingZone->setFixedHeight(550);
    m_drawingZone->setFixedWidth(800);

    this->setCentralWidget(m_drawingZone);

    this->createActions();
    this->createMenus();
    this->createStatusBar();
}

MainWindow::~MainWindow()
{
    
}

void MainWindow::createMenus(void)
{
    m_fileMenu = menuBar()->addMenu("&File");
    m_fileMenu->addAction(m_startRead);
    m_fileMenu->addAction(m_stopRead);
    m_fileMenu->addAction(m_saveCurve);
    m_fileMenu->addAction(m_loadCurve);
    m_fileMenu->addAction(m_quit);

    m_viewMenu = menuBar()->addMenu("&View");
    m_viewMenu->addAction(m_clearCurve);

    m_setupMenu = menuBar()->addMenu("&Setup");
    m_setupMenu->addAction(m_selectSerialPort);

    m_helpMenu = menuBar()->addMenu("&Help");
    m_helpMenu->addAction(m_about);
    m_helpMenu->addAction(m_aboutQt);
}

void MainWindow::createActions(void)
{
    m_startRead = new QAction("Start reading", this);
    connect(m_startRead, SIGNAL(triggered()), this, SLOT(startReadingPort()));
    m_stopRead = new QAction("Stop reading", this);
    connect(m_stopRead, SIGNAL(triggered()), this, SLOT(stopReadingPort()));
    m_saveCurve = new QAction("Save curve", this);
    connect(m_saveCurve, SIGNAL(triggered()), this, SLOT(saveCurve()));
    m_loadCurve = new QAction("Load curve", this);
    connect(m_loadCurve, SIGNAL(triggered()), this, SLOT(loadCurve()));
    m_quit = new QAction("Exit", this);
    connect(m_quit, SIGNAL(triggered()), qApp, SLOT(quit()));

    m_clearCurve = new QAction("Clear curve", this);
    connect(m_clearCurve, SIGNAL(triggered()), this, SLOT(clearCurve()));

    m_selectSerialPort = new QAction("Select serial port", this);
    connect(m_selectSerialPort, SIGNAL(triggered()), this, SLOT(selectSerialPort()));

    m_about = new QAction("About this application", this);
    connect(m_about, SIGNAL(triggered()), this, SLOT(about()));
    m_aboutQt = new QAction("About Qt", this);
    connect(m_aboutQt, SIGNAL(triggered()), qApp, SLOT(aboutQt()));

}

void MainWindow::createStatusBar(void)
{
    m_status = new QLineEdit("com1 closed", this);
    m_status->setAlignment(Qt::AlignHCenter);
    m_status->setReadOnly(true);

    m_labelStatusBar = new QLabel("Measure in Volts");
    m_labelStatusBar->setAlignment(Qt::AlignHCenter);

    m_dataMeasured = new QLineEdit(this);
    m_dataMeasured->setAlignment(Qt::AlignHCenter);
    m_dataMeasured->setReadOnly(true);

    statusBar()->addWidget(m_status,1);
    statusBar()->addWidget(m_labelStatusBar);
    statusBar()->addWidget(m_dataMeasured);
}


void MainWindow::startReadingPort(void)
{}

void MainWindow::stopReadingPort(void)
{}

void MainWindow::saveCurve(void)
{}

void MainWindow::loadCurve(void)
{}

void MainWindow::clearCurve(void)
{}

void MainWindow::selectSerialPort()
{}

void MainWindow::about()
{}
