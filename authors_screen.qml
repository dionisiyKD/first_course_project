import QtQuick 2.5
import QtQuick.Controls 2.5

Window {
    id: developers
    width: 1280
    height: 720
    visible: true
    Rectangle {
        width: parent.width
        height: parent.height
        color: "#c8dce3"
        border.color: "black"
        border.width: 3
        Image {
            id: image
            x: 0
            y: 0
            width: 1280
            height: 720
            source: "images/Authors_img.png"
            fillMode: Image.PreserveAspectFit
        }
        Button {
            id: close_button
            x: 20
            y: 20
            width: 44
            height: 44
            text: qsTr("X")
            scale: 0.6
            onClicked: {
                var component = Qt.createComponent("qrc:/content/MainWindow.qml")
                var window    = component.createObject(developers)
                developers.close()
                window.show()
            }
        }
    }

}
