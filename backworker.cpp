#include "backworker.h"

#include <QProcess>
#include <QDesktopServices>
#include <QUrl>
#include <QDir>
#include <QFile>

BackWorker::BackWorker(QObject *parent) : QObject(parent)
{

}

bool BackWorker::openFileDialog()
{
    QString path=QDir::currentPath();//get current dir path
    path.replace("/","\\");//replace "/" to "\" for Windows platform
    path = path + "";
    return QProcess::startDetached("explorer " + path);// explore current dir
}


//open name-filted file
bool BackWorker::openNameFilteredfile(QString strNameFilter)
{
    QDir dir("./dir");
    QStringList filters;
    filters << strNameFilter ;
    dir.setNameFilters(filters);

    //get the name-filtered file-list of "./dir"
    QStringList filelist = dir.entryList();

    if(filelist.isEmpty())
    {
        return false;
    }

    QString targetFile;
    targetFile = filelist[0];

    //open the target file
    QString path;
    path = "file:" + dir.absolutePath() + "/" + targetFile;
    return QDesktopServices::openUrl(path);
}


