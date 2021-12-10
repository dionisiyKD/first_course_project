#include <QQmlApplicationEngine>
#include <QQmlFileSelector>
#include <QQuickView>
#include <QQmlContext>
#include "start_btn.h"
#include <QApplication>

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    Start_btn btn;
    QQmlApplicationEngine engine;
    qDebug()<<engine.importPathList();
    app.setQuitOnLastWindowClosed(false);
    const QUrl url(QStringLiteral("qrc:/content/MainWindow.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    QQmlContext * rootContext = engine.rootContext();
    rootContext->setContextProperty("Btn_Click", &btn);
    return app.exec();
}
