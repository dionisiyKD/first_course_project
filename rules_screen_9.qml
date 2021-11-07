import QtQuick 2.5
import QtQuick.Controls 2.12

Item {
    id: rules_9
Rectangle {
    x: 0
    y: 0
    width: 1280
    height: 720
    color: "#c8dce3"
    border.color: "black"
    border.width: 3
    Rectangle {
        id: rectangle
        x: 82
        y: 57
        width: 492
        height: 606
        color: "#ffffff"
        border.color: "#181818"
        border.width: 20
        Image {
            id: image
            x: 131
            y: 55
            width: 261
            height: 420
            source: "images/Detective_img.png"
            fillMode: Image.Stretch
        }
        Rectangle {
            id: rectangle1
            x: 8
            y: 472
            width: 476
            height: 126
            color: "#181818"
        }
        Label {
            id: name
            x: 106
            y: 503
            color: "#ffffff"
            text: qsTr("Детектив")
            font.pointSize: 40
            font.bold: true
            font.family: "Verdana"

        }
        Label {
            id: lebel
            x: 675
            y: 0
            color: "#000000"
            text: qsTr("Особливість:")
            font.pointSize: 40
            font.bold: true
            font.family: "Verdana"

        }
        Label {
            id: lebel1
            x: 581
            y: 71
            color: "#1f1f1f"
            text: qsTr("Перші чотири раунди \nприймає наступні рішення: \nдовіра, довіра, обман, довіра. \nЯкщо його обдурили, \nпочинає грати як брехун, \nякщо ні - як симулятор")
            font.pointSize: 26
            font.bold: true
            font.family: "Verdana"

        }
    }
    }
    Button {
        id: prev_button
        x: 749
        y: 511
        width: 402
        height: 73
        text: qsTr("Назад")
        font.pointSize: 20
        font.capitalization: Font.MixedCase
        font.styleName: "#000000"
        background: Rectangle {
            color: "#ffffff"
            radius: 3
            border.width: 3
        }
        font.weight: Font.ExtraBold
        font.family: "Verdana"
        onClicked: stackview.pop()
    }

    Button {
        id: to_main_menu
        x: 749
        y: 601
        width: 402
        height: 73
        text: qsTr("На головне меню")
        font.styleName: "#000000"
        font.pointSize: 20
        font.family: "Verdana"
        font.capitalization: Font.MixedCase
        font.weight: Font.ExtraBold
        background: Rectangle {
            color: "#ffffff"
            radius: 3
            border.width: 3
        }
        onClicked: {
            var component = Qt.createComponent("qrc:/content/MainWindow.qml")
            var window    = component.createObject(rules)
            rules.close()
            window.show()
        }
    }
}

