QT       += qml quick

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    main.cpp \
    environment.cpp \
    human.cpp \
    list.cpp \
    start_btn.cpp

HEADERS += \
    environment.h \
    human.h \
    list.h \
    start_btn.h


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    MainWindow.qml \
    game_screen.qml \
    rules_screen_1.qml \
    rules_screen_2.qml \
    rules_screen_3.qml \
    rules_screen_4.qml \
    rules_screen_5.qml \
    rules_screen_6.qml \
    rules_screen_7.qml \
    rules_screen_8.qml \
    rules_screen_9.qml \
    rules_screen_main.qml

RESOURCES += \
    content.qrc
