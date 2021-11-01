#include <QGuiApplication>
#include <QQmlEngine>
#include <QQmlFileSelector>
#include <QQuickView>
#include <QQmlContext>
#include "start_btn.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    Start_btn btn;
    QQuickView view;
    view.connect(view.engine(), &QQmlEngine::quit, &app, &QCoreApplication::quit);
    view.setSource(QUrl("qrc:/content/MainWindow.qml"));
    if (view.status() == QQuickView::Error)
        return -1;
    view.setResizeMode(QQuickView::SizeRootObjectToView);
    view.show();

    QQmlContext * rootContext = view.engine()->rootContext();
    rootContext->setContextProperty("Btn_Click", &btn);
    return app.exec();
}
