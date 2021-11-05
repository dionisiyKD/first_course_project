import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle {
    width: 530
    height: 320
    border.color: "black"
    border.width: 3

    Label {
        id: label
        x: 100
        y: 102
        width: 331
        height: 116
        text: " \nГравців не може бути менше двох, \n спробуйте ввести інше значення."
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
        id: no_button
        x: 215
        y: 224
        width: 100
        height: 46
        text: qsTr("Скасувати")
        font.pointSize: 13
        background: Rectangle {
            color: "white"
            radius: 3
            border.width: 3
        }
    }
}
