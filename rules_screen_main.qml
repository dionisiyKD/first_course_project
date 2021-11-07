import QtQuick 2.5
import QtQuick.Controls 2.12
Window {
    id: rules
    width: 1280
    height: 720
    visible: true
    Rectangle {
        width: parent.width
        height: parent.height
        color: "#c8dce3"
        border.color: "black"
        border.width: 3
    }
    StackView {
        id: stackview
        anchors.fill: parent
        initialItem: "qrc:/content/rules_screen_1.qml"
    }
}
