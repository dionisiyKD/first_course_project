import QtQuick 2.4
import QtQuick.Controls 2.4
import QtQuick.Window 2.3
Window {
    id: start
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
    Button {
        id: close_button
        x: 37
        y: 32
        width: 44
        height: 44
        text: qsTr("X")
        background: Rectangle {
            color: "white"
            border.width: 3
            border.color: "black"
        }
        onClicked: {
            var component = Qt.createComponent("qrc:/content/MainWindow.qml")
            var window    = component.createObject(start)
            start.close()
            window.show()
        }
    }
    Rectangle {
        id: amount_of_types
        x: 705
        y: 25
        width: 674
        height: 776
        color: "#ffffff"
        border.width: 3
        scale: 0.6
        border.color: "black"

        Label {
            id: label10
            x: 176
            y: 32
            text: qsTr("Типи гравців")
            scale: 0.8
            font.pointSize: 32
            font.bold: true
            font.family: "Verdana"
        }

        Rectangle {
            id: rectangle
            x: 72
            y: 147
            width: 63
            height: 63
            color: "#e1802b"
            border.width: 2
            scale: 1.1
        }

        Rectangle {
            id: rectangle1
            x: 72
            y: 272
            width: 63
            height: 63
            color: "#f68b9d"
            border.width: 2
            scale: 1.1
        }

        Rectangle {
            id: rectangle2
            x: 72
            y: 397
            width: 63
            height: 63
            color: "#882bcc"
            border.width: 2
            scale: 1.1
        }

        Rectangle {
            id: rectangle3
            x: 72
            y: 528
            width: 63
            height: 63
            color: "#1368c4"
            border.width: 2
            scale: 1.1
        }

        Rectangle {
            id: rectangle4
            x: 408
            y: 147
            width: 63
            height: 63
            color: "#49b100"
            border.width: 2
            scale: 1.1
        }

        Rectangle {
            id: rectangle5
            x: 408
            y: 272
            width: 63
            height: 63
            color: "#424242"
            border.width: 2
            scale: 1.1
        }

        Rectangle {
            id: rectangle6
            x: 408
            y: 397
            width: 63
            height: 63
            color: "#709de1"
            border.width: 2
            scale: 1.1
        }

        Rectangle {
            id: rectangle7
            x: 408
            y: 528
            width: 63
            height: 63
            color: "#e11529"
            border.width: 2
            scale: 1.1
        }

        Rectangle {
            id: rectangle8
            x: 72
            y: 646
            width: 63
            height: 63
            color: "#47a369"
            border.width: 2
            scale: 1.1
        }

        SpinBox {
            id: spinBox
            x: 167
            y: 159
            width: 116
            height: 40
            scale: 1.1
            font.pointSize: 26
            to: textField.text*1 - spinBox1.value - spinBox2.value - spinBox3.value - spinBox4.value - spinBox5.value - spinBox6.value - spinBox7.value - spinBox8.value
        }

        SpinBox {
            id: spinBox1
            x: 167
            y: 283
            width: 116
            height: 40
            scale: 1.1
            font.pointSize: 26
            to: textField.text*1 - spinBox.value - spinBox2.value - spinBox3.value - spinBox4.value - spinBox5.value - spinBox6.value - spinBox7.value - spinBox8.value
        }

        SpinBox {
            id: spinBox2
            x: 167
            y: 409
            width: 116
            height: 40
            scale: 1.1
            font.pointSize: 26
            to: textField.text*1 - spinBox.value - spinBox1.value - spinBox3.value - spinBox4.value - spinBox5.value - spinBox6.value - spinBox7.value - spinBox8.value
        }

        SpinBox {
            id: spinBox3
            x: 167
            y: 540
            width: 116
            height: 40
            scale: 1.1
            font.pointSize: 26
            to: textField.text*1 - spinBox.value - spinBox1.value - spinBox2.value - spinBox4.value - spinBox5.value - spinBox6.value - spinBox7.value - spinBox8.value
        }

        SpinBox {
            id: spinBox4
            x: 503
            y: 159
            width: 116
            height: 40
            scale: 1.1
            font.pointSize: 26
            to: textField.text*1 - spinBox.value - spinBox1.value - spinBox2.value - spinBox3.value - spinBox5.value - spinBox6.value - spinBox7.value - spinBox8.value
        }

        SpinBox {
            id: spinBox5
            x: 503
            y: 284
            width: 116
            height: 40
            scale: 1.1
            font.pointSize: 26
            to: textField.text*1 - spinBox.value - spinBox1.value - spinBox2.value - spinBox3.value - spinBox4.value - spinBox6.value - spinBox7.value - spinBox8.value
        }

        SpinBox {
            id: spinBox6
            x: 503
            y: 409
            width: 116
            height: 40
            scale: 1.1
            font.pointSize: 26
            to: textField.text*1 - spinBox.value - spinBox1.value - spinBox2.value - spinBox3.value - spinBox4.value - spinBox5.value - spinBox7.value - spinBox8.value
        }

        SpinBox {
            id: spinBox7
            x: 503
            y: 540
            width: 116
            height: 40
            scale: 1.1
            font.pointSize: 26
            to: textField.text*1 - spinBox.value - spinBox1.value - spinBox2.value - spinBox3.value - spinBox4.value - spinBox5.value - spinBox6.value - spinBox8.value
        }

        SpinBox {
            id: spinBox8
            x: 167
            y: 657
            width: 116
            height: 40
            scale: 1.1
            font.pointSize: 26
            to: textField.text*1 - spinBox.value - spinBox1.value - spinBox2.value - spinBox3.value - spinBox4.value - spinBox5.value - spinBox6.value - spinBox7.value
        }
    }

    Rectangle {
        id: amount_of_players
        x: 705
        y: 53
        width: 674
        height: 110
        color: "#ffffff"
        border.width: 3
        scale: 0.6
        border.color: "black"

        Label {
            id: label9
            x: 50
            y: 29
            text: qsTr("Кількість гравців: ")
            scale: 0.8
            font.bold: true
            font.family: "Verdana"
            font.pointSize: 29
        }

        TextField {
            id: textField
            x: 433
            y: 35
            width: 139
            height: 40
            font.pointSize: 21
            placeholderText: qsTr("0")
            inputMethodHints: Qt.ImhDigitsOnly
            validator: IntValidator {
                    bottom: 1
                    top: 10
                }
        }
    }

    Image {
        id: detective
        x: 467
        y: 29
        width: 205
        height: 340
        source: "images/Detective_img.png"
        sourceSize.width: 345
        scale: 0.7
        fillMode: Image.Stretch
    }

    Image {
        id: distrustful
        x: 451
        y: 303
        width: 206
        height: 338
        source: "images/Distrustful_img.png"
        sourceSize.width: 345
        scale: 0.7
        fillMode: Image.Stretch
    }

    Image {
        id: forgiving
        x: 198
        y: 307
        width: 208
        height: 342
        source: "images/Forgiving_img.png"
        sourceSize.width: 345
        scale: 0.7
        fillMode: Image.Stretch
    }

    Image {
        id: naive
        x: 215
        y: 19
        width: 209
        height: 352
        source: "images/Naive_img.png"
        sourceSize.width: 345
        scale: 0.7
        fillMode: Image.Stretch
    }

    Image {
        id: persistent
        x: 329
        y: 23
        width: 209
        height: 344
        source: "images/Persistent_img.png"
        sourceSize.width: 345
        scale: 0.7
        fillMode: Image.Stretch
    }

    Image {
        id: tricky
        x: 71
        y: 317
        width: 204
        height: 336
        source: "images/Tricky_img.png"
        sourceSize.width: 345
        scale: 0.7
        fillMode: Image.Stretch
    }

    Image {
        id: random
        x: 607
        y: 157
        width: 207
        height: 349
        source: "images/Random_img.png"
        sourceSize.width: 345
        scale: 0.7
        fillMode: Image.Stretch
    }

    Image {
        id: simulator
        x: 328
        y: 296
        width: 211
        height: 346
        source: "images/Simulator_img.png"
        sourceSize.width: 345
        scale: 0.7
        fillMode: Image.Stretch
    }

    Image {
        id: vindictive
        x: 85
        y: 20
        width: 215
        height: 346
        source: "images/Vindictive_img.png"
        sourceSize.width: 345
        scale: 0.7
        fillMode: Image.Stretch
    }

    Label {
        id: label
        x: 158
        y: 585
        text: qsTr("0")
        font.pointSize: 21
    }

    Label {
        id: label1
        x: 280
        y: 584
        text: qsTr("0")
        font.pointSize: 21
    }

    Label {
        id: label2
        x: 417
        y: 585
        text: qsTr("0")
        font.pointSize: 21
    }

    Label {
        id: label3
        x: 537
        y: 585
        text: qsTr("0")
        font.pointSize: 21
    }

    Label {
        id: label4
        x: 174
        y: 291
        text: qsTr("0")
        font.pointSize: 21
    }

    Label {
        id: label5
        x: 295
        y: 290
        text: qsTr("0")
        font.pointSize: 21
    }

    Label {
        id: label6
        x: 417
        y: 289
        text: qsTr("0")
        font.pointSize: 21
    }

    Label {
        id: label7
        x: 553
        y: 288
        text: qsTr("0")
        font.pointSize: 21
    }

    Label {
        id: label8
        x: 698
        y: 418
        text: qsTr("0")
        font.pointSize: 21
    }
    Button {
        id: start_the_game
        x: 840
        y: 660
        width: 404
        height: 40
        text: qsTr("Почати гру")
        font.weight: Font.ExtraBold
        font.capitalization: Font.MixedCase
        font.family: "Verdana"
        font.pointSize: 20
        background: Rectangle {
            color: "white"
            border.width: 3
            border.color: "black"
        }
        onClicked: {
            label4.text = spinBox.value
            label5.text = spinBox1.value
            label6.text = spinBox2.value
            label7.text = spinBox3.value
            label.text = spinBox4.value
            label1.text = spinBox5.value
            label2.text = spinBox6.value
            label3.text = spinBox7.value
            label8.text = spinBox8.value
            Btn_Click.btn_clicked(spinBox.value, spinBox1.value, spinBox2.value, spinBox3.value, spinBox4.value, spinBox5.value, spinBox6.value, spinBox7.value, spinBox8.value)
        }
    }
}

