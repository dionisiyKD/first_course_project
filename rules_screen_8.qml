import QtQuick 2.5
import QtQuick.Controls 2.12

Item {
    id: rules_8
Rectangle {
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
            x: 116
            y: 59
            width: 261
            height: 420
            source: "images/Forgiving_img.png"
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
            x: 32
            y: 503
            color: "#ffffff"
            text: qsTr("Поблажливий")
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
            x: 675
            y: 77
            color: "#1f1f1f"
            text: qsTr("Прощає перший обман, \nале після другого \nпочинає обманювати")
            font.pointSize: 26
            font.bold: true
            font.family: "Verdana"

        }
    }

    Button {
        id: next_button
        x: 749
        y: 590
        width: 402
        height: 73
        font.styleName: "#000000"
        font.weight: Font.ExtraBold
        font.capitalization: Font.MixedCase
        font.family: "Verdana"
        font.pointSize: 20
        background: Rectangle {
                        color: "white"
                        radius: 3
                        border.width: 3
        }
        text: qsTr("Далі")
        onClicked: {
            stackview.push("qrc:/content/rules_screen_9.qml")
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
}
}
