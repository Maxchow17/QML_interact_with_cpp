#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "backworker.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    //Set the value of the "backWorker" property on this context.
    BackWorker backWorker;
    QQmlContext* ctx = engine.rootContext();
    ctx->setContextProperty("backWorker", &backWorker);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

