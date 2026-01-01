#include "backend.h"
#include <QDebug>

Backend::Backend(QObject *parent)
    : QObject(parent)
{
}

QString Backend::status() const
{
    return m_status;
}

void Backend::setStatus(const QString &value)
{
    if (m_status == value)
        return;

    m_status = value;
    emit statusChanged();
}

void Backend::doSomething()
{
    qDebug() << "Called from QML!";
    setStatus("Button pressed");
}