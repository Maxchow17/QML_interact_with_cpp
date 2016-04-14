#ifndef BACKWORKER_H
#define BACKWORKER_H

#include <QObject>
class BackWorker : public QObject
{
    Q_OBJECT
public:
    BackWorker(QObject *parent = 0);
    QString m_strMenu;

public slots:
    bool openFileDialog();
    bool openNameFilteredfile(QString strNameFilter);

};

#endif // BACKWORKER_H
