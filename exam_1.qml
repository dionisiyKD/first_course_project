import QtQuick 2.5
import QtQuick.Controls 2.5

Rectangle {
    width: 530
    height: 320
    border.color: "black"
    border.width: 3
signal destroyMe()
    id: exit_screen
    Label {
        id: label
        x: 100
        y: 102
        width: 331
        height: 116
        text: "Ви впевнені, що хочете вийти? \nУ разі виходу з гри, \n прогрес буде анульовано"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 530
        height: 52
        color: "#FFBFBF"
        border.color: "black"
        border.width: 3

        Label {
            id: label1
            x: 30
            y: 8
            text: qsTr("Попередження")
            font.pointSize: 20
        }
    }

    Button {
        id: yes_button
        x: 89
        y: 242
        width: 106
        height: 46
        text: qsTr("Вийти")
        font.pointSize: 13
        background: Rectangle {
            color: "white"
            radius: 3
            border.width: 3
        }
        onClicked: {

            exit_screen.destroyMe()
            start.close()
            /*var component = Qt.createComponent("qrc:/content/MainWindow.qml")
            var window    = component.createObject(start)
            window.show() */

        }
    }

    Button {
        id: no_button
        x: 331
        y: 242
        width: 100
        height: 46
        text: qsTr("Скасувати")
        font.pointSize: 13
        background: Rectangle {
            color: "white"
            radius: 3
            border.width: 3
        }
        onClicked: exit_screen.destroyMe()
    }
}

