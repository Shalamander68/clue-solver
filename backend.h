#pragma once

#include <QObject>
#include <QVector>
#include <QString>

class Backend : public QObject
{
    Q_OBJECT

    Q_PROPERTY(QString status READ status WRITE setStatus NOTIFY statusChanged)

public:
    explicit Backend(QObject *parent = nullptr);

    QString status() const;
    void setStatus(const QString &value);

    Q_INVOKABLE void doSomething();
    Q_INVOKABLE void direct_input();
    Q_INVOKABLE void implied_input();
    Q_INVOKABLE void recalculate();

signals:
    void statusChanged();

private:
    QString m_status;
};
