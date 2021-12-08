import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.3
import QtCharts 2.3
Window {
    id: start
    width: 1280
    height: 720
    visible: true
    property var show_next: null
    property var chose_exit: null
    property double n1: spinBox.value
    property double n2: spinBox1.value
    property double n3: spinBox2.value
    property double n4: spinBox3.value
    property double n5: spinBox4.value
    property double n6: spinBox5.value
    property double n7: spinBox6.value
    property double n8: spinBox7.value
    property double n9: spinBox8.value
    property var result: []
        function game() {

            result = Btn_Click.btn_clicked(parseInt(n1), parseInt(n2), parseInt(n3), parseInt(n4), parseInt(n5), parseInt(n6),  parseInt(n7), parseInt(n8), parseInt(n9), parseInt(textField2.text), parseInt(textField1.text))
            textField2.text = parseInt(textField2.text) - 1
            if(parseInt(textField2.text) === 0) textField2.text = parseInt(textField2.text) + 1

            if(radioButton.position) {
                create_show_next(result)
            }
            change_amounts(result)
        }
        function change_amounts(arr) {
            var i = 0
            n1 = 0
            n2 = 0
            n3 = 0
            n4 = 0
            n5 = 0
            n6 = 0
            n7 = 0
            n8 = 0
            n9 = 0
            do {
            switch (arr[i]){
            case 1:
                n2 += 1.0
                break
            case 2:
                n8 += 1.0
                break
            case 3:
                n7 += 1.0
                break
            case 4:
                n5 += 1.0
                break
            case 5:
                n4 += 1.0
                break
            case 6:
                n1 += 1.0
                break
            case 7:
                n9 += 1.0
                break
            case 8:
                n3 += 1.0
                break
            case 9:
                n6 += 1.0
                break
            }
            i += 2
            } while( i < arr.length)
        }

        function create_chose_exit() {
            if ( chose_exit === null ) {
                var component = Qt.createComponent( "qrc:/content/exam_1.qml" )
                chose_exit = component.createObject( start, {"x":start.width/4,"y":start.height*0.2})
                if ( chose_exit ) {
                    chose_exit.destroyMe.connect( destroy_chose_exit )
                }
            }
        }

        function destroy_chose_exit() {
            if ( chose_exit !== null ) {
                chose_exit.destroy()
                chose_exit = null
            }
        }


        function create_show_next(mas){
            if (show_next === null){
                var component2 = Qt.createComponent( "qrc:/content/res_screen.qml" )
                show_next = component2.createObject( start, {"x":280,"y":120})
                show_next.setStuff(mas)
                if ( show_next ) {
                    show_next.destroyMe.connect( destroy_chose_show )
                }
            }
        }
        function destroy_chose_show() {
            if ( show_next !== null ) {
                show_next.destroy()
                show_next = null
            }
        }


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
            create_chose_exit()
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
        Label {
            id: label11
            x: 69
            y: 112
            text: qsTr("Вразливий")
            font.pointSize: 14
            font.bold: true
            font.family: "Verdana"
        }

        Label {
            id: label12
            x: 69
            y: 239
            text: qsTr("Довірливий")
            font.bold: true
            font.pointSize: 14
            font.family: "Verdana"
        }

        Label {
            id: label13
            x: 69
            y: 364
            text: qsTr("Наполегливий")
            font.bold: true
            font.pointSize: 14
            font.family: "Verdana"
        }

        Label {
            id: label14
            x: 69
            y: 495
            text: qsTr("Детектив")
            font.bold: true
            font.pointSize: 14
            font.family: "Verdana"
        }

        Label {
            id: label15
            x: 69
            y: 613
            text: qsTr("Випадковий")
            font.bold: true
            font.pointSize: 14
            font.family: "Verdana"
        }

        Label {
            id: label16
            x: 405
            y: 112
            text: qsTr("Хитрий")
            font.bold: true
            font.pointSize: 14
            font.family: "Verdana"
        }

        Label {
            id: label17
            x: 405
            y: 239
            text: qsTr("Поблажливий")
            font.bold: true
            font.pointSize: 14
            font.family: "Verdana"
        }

        Label {
            id: label18
            x: 405
            y: 364
            text: qsTr("Симулятор")
            font.bold: true
            font.pointSize: 14
            font.family: "Verdana"
        }

        Label {
            id: label19
            x: 405
            y: 495
            text: qsTr("Брехун")
            font.bold: true
            font.pointSize: 14
            font.family: "Verdana"
        }
    }

    Rectangle {
        id: amount_of_players
        x: 705
        y: 5
        width: 674
        height: 180
        color: "#ffffff"
        border.width: 3
        scale: 0.6
        border.color: "black"

        Label {
            id: label9
            x: 5
            y: 32
            text: qsTr("Кількість гравців: ")
            scale: 0.8
            font.bold: true
            font.family: "Verdana"
            font.pointSize: 29
        }

        TextField {
            id: textField
            x: 495
            y: 37
            width: 139
            height: 40
            font.pointSize: 23
            placeholderText: "0"
            scale: 1
            background: Rectangle {
                color: "white"
                border.width: 3
                border.color: "black"
            }
            validator: IntValidator {
                bottom: 1
                top: 10
            }
        }

        Label {
            id: label20
            x: -3
            y: 93
            text: qsTr("Кількість видаляємих:")
            scale: 0.8
            font.family: "Verdana"
            font.pointSize: 29
            font.bold: true
        }

        TextField {
            id: textField1
            x: 495
            y: 98
            width: 139
            height: 40
            scale: 1
            placeholderText: "0"
            font.pointSize: 23
            background: Rectangle {
                color: "white"
                border.width: 3
                border.color: "black"
            }
            validator: IntValidator {
                bottom: 1
                top: 10
            }
        }
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
            spinBox.enabled = false
            spinBox1.enabled = false
            spinBox2.enabled = false
            spinBox3.enabled = false
            spinBox4.enabled = false
            spinBox5.enabled = false
            spinBox6.enabled = false
            spinBox7.enabled = false
            spinBox8.enabled = false

            next_button.visible = true
            next_button.enabled = true
            start_the_game.enabled = false

            textField.enabled = false
            textField1.enabled = false
            textField2.enabled = false
            game()
        }
    }
    ChartView {
        id: pie
        x: 98
        y: 75
        width: 675
        height: 515
        PieSeries {
            name: "PieSeries"
            PieSlice {
                value: n1
                color: "#e1802b"
            }

            PieSlice {
                value: n2
                color: "#f68b9d"
            }

            PieSlice {
                value: n3
                color: "#882bcc"
            }
            PieSlice {
                value: n4
                color: "#1368c4"
            }

            PieSlice {
                value: n5
                color: "#49b100"
            }

            PieSlice {
                value: n6
                color: "#424242"
            }
            PieSlice {
                value: n7
                color: "#709de1"
            }

            PieSlice {
                value: n8
                color: "#e11529"
            }

            PieSlice {
                value: n9
                color: "#47a369"
            }
        }
        Button {
            id: next_button
            x: 366
            y: 441
            width: 264
            height: 45
            text: qsTr("Далі")
            background: Rectangle {
                color: "white"
                border.width: 3
                border.color: "black"
            }
            font.styleName: "#000000"
            font.weight: Font.ExtraBold
            font.capitalization: Font.MixedCase
            font.family: "Verdana"
            font.pointSize: 20
            visible: false;
            enabled: false;
            onClicked: game()
        }
    }
    Rectangle {
        id: rectangle9
        x: 46
        y: 628
        width: 750
        height: 72
        color: "#ffffff"
        border.width: 3
        border.color: "black"

        Switch {
            id: radioButton
            x: 460
            y: 5
            width: 244
            height: 63
            text: qsTr("Показувати результат\n кожного раунда")
            font.pointSize: 13
            font.family: "Verdana"
        }
        Label {
            id: label123
            x: 5
            y: 21
            text: qsTr("Кількість раундів: ")
            scale: 0.8
            font.bold: true
            font.family: "Verdana"
            font.pointSize: 16
        }

        TextField {
            id: textField2
            x: 252
            y: 16
            width: 139
            height: 40
            font.pointSize: 23
            placeholderText: "0"
            scale: 1
            validator: IntValidator {
                bottom: 1
                top: 10
            }
        }
    }
}

