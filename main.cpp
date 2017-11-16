#include <QGuiApplication>
#include <QQmlApplicationEngine>


#include <QQuickStyle>
int main(int argc, char *argv[])
{
  //  QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QGuiApplication app(argc, argv);


    QQmlApplicationEngine engine;
    engine.load(QUrl(QLatin1String("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
    {
        qDebug("No load");
        return -1;
    }
    return app.exec();
}
