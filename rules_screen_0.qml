import QtQuick 2.5
import QtQuick.Controls 2.12

Item{
    id: rules_0
Rectangle {
    width: 1280
    height: 720
    color: "#c8dce3"
    border.color: "black"
    border.width: 3

    Button {
        id: next_button
        x: 1020
        y: 20
        width: 241
        height: 57
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
        text: qsTr("Типи гравців")
        onClicked: {
            stackview.push("qrc:/content/rules_screen_1.qml")
        }
    }

    Label {
        id: label
        x: 60
        y: 46
        text: qsTr("Правила")
        color: "#000000"
        font.pointSize: 40
        font.bold: true
        font.family: "Verdana"
    }

    Image {
        id: image
        x: 471
        y: 154
        width: 809
        height: 558
        source: "qrc:/content/images/rules.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: text1
        x: 68
        y: 130
        width: 397
        height: 582
        text: qsTr("Еволюція довіри - проект, що базується на матричній 'Грі в монетку'. Ця гра передбачає певний пристрій з двома кінцями, перед якими стоять дві особи. Якщо на один кінець покласти монету, на іншому кінці з'явиться дві і навпаки. У гравців є два вибори - довіритись або обдурити. У нашому проекті вибір дії залежить від типу гравця. ")
        font.pixelSize: 26
        wrapMode: Text.WordWrap
        color: "#1f1f1f"
        font.bold: true
        font.family: "Verdana"
    }
}
}

/*##^##
Designer {
    D{i:0;autoSize:true;formeditorZoom:0.5;height:480;width:640}
}
##^##*/
