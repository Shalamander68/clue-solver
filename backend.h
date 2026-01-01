#pragma once

#include <QObject>

class Backend : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString status READ status WRITE setStatus NOTIFY statusChanged)

public:
    explicit Backend(QObject *parent = nullptr);

    QString status() const;
    void setStatus(const QString &value);

    Q_INVOKABLE void doSomething();

signals:
    void statusChanged();

private:
    QString m_status;
};