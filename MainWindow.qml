import QtQuick 2.4
import QtQuick.Controls 2.4


Rectangle {
    width: 1280
    height: 720
    color: "#c8dce3"
    border.color: "black"
    border.width: 3

    Button {
        id: exit_btn
        x: 881
        y: 584
        width: 337
        height: 70
        text: qsTr("Выход")
        font.styleName: "#000000"
        font.weight: Font.ExtraBold
        font.capitalization: Font.MixedCase
        font.family: "Verdana"
        font.pointSize: 20
        onClicked: {
            Qt.quit();
        }

        //color: "white"
       // border.width: 3
       // border.color: "black"
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
        onClicked: Btn_Click.btn_clicked()

       // color: "white"
       // border.width: 3
       // border.color: "black"
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
       // color: "white"
      //  border.width: 3
      //  border.color: "black"
    }
    Button {
        id: devs_btn
        x: 881
        y: 488
        width: 337
        height: 70
        text: qsTr("Разработчики")
        font.styleName: "#000000"
        font.weight: Font.ExtraBold
        font.capitalization: Font.MixedCase
        font.family: "Verdana"
        font.pointSize: 20
        //color: "white"
       // border.width: 3
      // border.color: "black"
    }
    Image {
        id: ev
        x: 33
        y: 26
        width: 735
        height: 318
        source: "images/ev.png"
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}
}
##^##*/
