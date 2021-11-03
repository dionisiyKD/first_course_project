import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.3
Window {
    id: main
    width: 1280
    height: 720
    visible: true
    title: qsTr("Project")
Rectangle {
    width: parent.width
    height: parent.height
    color: "#c8dce3"
    border.color: "black"
    border.width: 3
    Image {
        id: ev
        x: 33
        y: 26
        width: 735
        height: 318
        source: "images/ev.png"
        fillMode: Image.PreserveAspectFit
    }
    Item {
        Button {
            id: exit_btn
            x: 881
            y: 584
            width: 337
            height: 70
            text: qsTr("Вихід")
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
            onClicked: {
                Qt.quit();
            }

        }
        Button {
            id: start_btn
            x: 881
            y: 304
            width: 337
            height: 70
            text: qsTr("Старт")
            font.styleName: "#000000"
            font.weight: Font.ExtraBold
            font.capitalization: Font.MixedCase
            font.family: "Verdana"
            font.pointSize: 20
            signal qmlSignal()
            onClicked: {
                var component = Qt.createComponent("qrc:/content/game_screen.qml")
                var window    = component.createObject(main)
                main.close()
                window.show()
            }
            background: Rectangle {
                            color: "white"
                            radius: 3
                            border.width: 3
            }

        }
        Button {
            id: rules_btn
            x: 881
            y: 394
            width: 337
            height: 70
            text: qsTr("Правила")
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

        }
        Button {
            id: devs_btn
            x: 881
            y: 488
            width: 337
            height: 70
            text: qsTr("Розробники")
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

        }
    }

}
}
/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
