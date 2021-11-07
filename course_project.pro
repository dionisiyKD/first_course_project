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
    todo.cpp \

HEADERS += \
    environment.h \
    human.h \
    list.h \
    my_exception.h \
    start_btn.h


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    MainWindow.qml \
    exam_1.qml \
    exam_2.qml \
    exam_3.qml \
    exam_4.qml \
    exam_5.qml \
    game_screen.qml

RESOURCES += \
    content.qrc
