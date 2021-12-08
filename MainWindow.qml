import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.3
Window {
    id: main
    width: 1280
    height: 720
    visible: true
    title: qsTr("Project")

    property var exit: null

        function create_exit() {
            if ( exit === null ) {
                var component = Qt.createComponent( "qrc:/content/exam_5.qml" )
                exit = component.createObject( main, {"x":main.width/4,"y":main.height*0.2})
                if ( exit ) {

                    exit.destroyMe.connect( destroy_exit )
                }
            }
        }

        function destroy_exit() {
            if ( exit !== null ) {
                exit.destroy()
                exit = null
            }
        }

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
            background: Rectangle {
                            color: "white"
                            radius: 3
                            border.width: 3
            }
            onClicked: {
                create_exit()
            }


            onClicked: {
                var component = Qt.createComponent("qrc:/content/game_screen.qml")
                var window    = component.createObject(main)
                main.close()
                window.show()
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
            onClicked: {
                var component = Qt.createComponent("qrc:/content/rules_screen_main.qml")
                var window    = component.createObject(main)
                main.close()
                window.show()
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
            onClicked: {
                var component = Qt.createComponent("qrc:/content/authors_screen.qml")

                var window    = component.createObject(main)
                main.close()
                window.show()
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
