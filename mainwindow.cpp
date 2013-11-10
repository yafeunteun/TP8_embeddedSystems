#include "mainwindow.h"
#include "portselection.h"
#include <QMenuBar>
#include <QStatusBar>
#include <QApplication>
#include <QMessageBox>
#include <QByteArray>
#include <QPainter>

#include <iostream>
using namespace std;

bool RXfree = true;
char m_RXmessage[7];


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{

    m_plot = new Plot(this);
    m_plot->setFixedHeight(550);
    m_plot->setFixedWidth(800);

    //m_curve = new QwtPlotCurve("Values received");
  //  m_curve->attach(m_drawingZone);
   // m_drawingZone->autoReplot();

    this->setCentralWidget(m_plot);

    this->createActions();
    this->createMenus();
    this->createStatusBar();

    connect(this, SIGNAL(dataAcquired()), this, SLOT(onDataAcquired()));

/*

    QPointF p1(0,0);
    QPointF p2(5, 5);

    QPen pen = m_curve->pen();
    pen.setColor(QColor(255,0,0,127));
    m_curve->setPen(pen);

    m_points.push_back(p1);
    m_points.push_back(p2);

    m_curve->setSamples(m_points);
*/
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
    m_status = new QLineEdit("No port opened", this);
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

    m_port = new QextSerialPort;



}


void MainWindow::startReadingPort(void)
{
    connect(m_port, SIGNAL(readyRead()), this, SLOT(onDataReceived()));
    if(!m_port->open(QIODevice::ReadOnly))
    {
        QMessageBox::warning(0, "Error !", tr("Can't open port with specified settings !"));
    }

    if((m_port->lineStatus()))
    {
        m_status->setText(tr("Port %1 open, reading in process").arg(m_port->portName()));
    }


}

void MainWindow::stopReadingPort(void)
{

        m_status->setText(tr("Reading stopped on port %1").arg(m_port->portName()));
        m_port->close();

}

void MainWindow::saveCurve(void)
{}

void MainWindow::loadCurve(void)
{}

void MainWindow::clearCurve(void)
{
    this->test();
}

void MainWindow::selectSerialPort()
{
    m_port = new QextSerialPort;

    PortSelection *select = new PortSelection(m_port, this);
    select->exec();

    m_status->setText(tr("Port %1 is not open").arg(m_port->portName()));

}

void MainWindow::about()
{}

void MainWindow::onDataReceived(void)
{

    if(RXfree == true)
    {
        static quint8 messByte = 0;
        if(messByte>4) messByte = 0;

        m_port->getChar(&(m_RXmessage[messByte++]));
        //m_port->readData(m_RXmessage, 1);
        //messByte++;

        if(m_RXmessage[messByte-1] == '\n')
        {
            m_RXmessage[messByte-2] = '\0';
            messByte = 0;
            RXfree = false;
            emit dataAcquired();
        }
    }
}


void MainWindow::onDataAcquired(void)
{
    quint32 val;
    //cout<<m_RXmessage<<endl;
    sscanf(m_RXmessage, "%u", &val);
    m_dataMeasured->setText(tr("%1").arg(val));
    m_plot->updCurve(val);
    RXfree = true;
}



void MainWindow::test(void)
{
/*
    QPointF p3(25,8);
    QPointF p4(42, 30);

    m_points.push_back(p3);
    m_points.push_back(p4);

     m_curve->setSamples(m_points);
     m_drawingZone->replot();

*/
    //m_curve->setData();
}
