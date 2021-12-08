import QtQuick 2.15
import QtQuick.Controls 2.15
Rectangle {
    id:mem
    width: 720
    height: 480
    border.color: "black"
    border.width: 3
    signal destroyMe()
    /*

        Types
    1 - naive
    2 - distrustful
    3 - simulator
    4 - Tricky
    5 - detective
    6 - vindictive
    7 - random
    8 - Persistent
    9 - forgiving

    */
    function setStuff(d1) {
        var i = 0
        switch (d1[0]){
        case 1:
            image1.source = "images/Naive_img.png"
            text1.text = "Довірливий"
            break
        case 2:
            image1.source = "images/Distrustful_img.png"
            text1.text=  "Брехун"
            break
        case 3:
            image1.source = "images/Simulator_img.png"
            text1.text=  "Симулятор"
            break
        case 4:
            image1.source = "images/Tricky_img.png"
            text1.text=  "Хитрий"
            break
        case 5:
            image1.source = "images/Detective_img.png"
            text1.text=  "Детектив"
            break
        case 6:
            image1.source = "images/Vindictive_img.png"
            text1.text=  "Вразливий"
            break
        case 7:
            image1.source = "images/Random_img.png"
            text1.text=  "Випадковий"
            break
        case 8:
            image1.source = "images/Persistent_img.png"
            text1.text=  "Наполегливий"
            break
        case 9:
            image1.source = "images/Forgiving_img.png"
            text1.text=  "Поблажливий"
            break
        }

 do {
            listElem.append({"name": decide(d1[i]), "amount": d1[i+1]})
    i+= 2

      } while( i < d1.length)

    }
    function decide (n){
        switch (n){
        case 1:
            return "Довірливий"
        case 2:
            return "Брехун"

        case 3:
            return "Симулятор"

        case 4:
            return  "Хитрий"

        case 5:
            return  "Детектив"

        case 6:
            return  "Вразливий"

        case 7:
            return  "Випадковий"

        case 8:
            return  "Наполегливий"

        case 9:
            return  "Поблажливий"

        }
    }

    Image {
        id: image1
        x: 93
        y: 99
        width: 141
        height: 265
        fillMode: Image.PreserveAspectFit
        visible: true
        scale: 1.2
    }

    Label {
        id: label1
        x: 41
        y: 389
        text: qsTr("Найкращий гравець")
        font.pointSize: 16
        font.bold: true
        font.family: "Verdana"
    }

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 720
        height: 65
        color: "#6C8CD5"
        border.color: "black"
        border.width: 3
        Label {
            id: label2
            x: 259
            y: 14
            text: qsTr("Результат")
            font.bold: true
            font.family: "Verdana"
            font.pointSize: 26
            color: "black"
        }

        Button {
            id: button
            x: 662
            y: 10
            width: 46
            height: 46
            font.bold: true
            text: qsTr("X")
            background: Rectangle {
                color: "white"
                border.width: 3
                border.color: "black"
            }
            onClicked: mem.destroyMe()
        }
    }

    Text {
        id: text1
        x: 79
        y: 420
        width: 28
        height: 22
        text: qsTr("")
        font.pixelSize: 18
        font.bold: true
        font.family: "Verdana"
    }

    ListView {
        id: listView
        x: 391
        y: 114
        width: 261
        height: 300
        delegate: Item {
            x: 5
            width: 80
            height: 40
            Rectangle {
                color: "lightgrey"
                border.color: "black"
                border.width: 3
                width: listView.width
                height: parent.height
            }
            Row {
                id: row1
                spacing: 80
                Text {
                    text: name
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                    font.pixelSize: 18
                    leftPadding: 8
                    topPadding: 4

                }
                Text {
                    text: amount
                    anchors.verticalCenter: parent.verticalCenter
                    font.bold: true
                    font.pixelSize: 18
                }
            }
        }
        model: ListModel{
            id: listElem
        }
    }



}

