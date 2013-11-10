#include "plot.h"



Plot::Plot( QWidget *parent ):
    QwtPlot( parent )

{


    this->setAutoReplot(true);
    m_currentX = 0;
    m_paintedPoints = 0;

    m_curve = new QwtPlotCurve("Values received on serial port");
    m_curve->attach(this);
    m_curve->setSamples(m_points);
    QPen pen = m_curve->pen();
    pen.setColor(QColor(255,0,0,127));
    m_curve->setPen(pen);

}

Plot::~Plot()
{
}


void Plot::updCurve(const quint16 p)
{
    QPointF point(m_currentX, p);

    m_points.append(point);
    m_curve->setSamples(m_points);
    ++m_currentX;
}
