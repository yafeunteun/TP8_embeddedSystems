#ifndef PLOT_H
#define PLOT_H

#include <qwt_plot.h>
#include <qwt_interval.h>
#include <qwt_plot_curve.h>

class QwtPlotCurve;
class QwtPlotMarker;
class QwtPlotDirectPainter;

class Plot : public QwtPlot
{
    Q_OBJECT

public:
    Plot( QWidget * parent = NULL );
    virtual ~Plot();
    void updCurve(const quint16 p);
private:
    qint32 m_paintedPoints;
    QVector<QPointF> m_points;
    quint32 m_currentX;

    QwtPlotCurve* m_curve;
};


#endif // PLOT_H
