import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Window {
    width: 360
    height: 480
    visible: true
    title: qsTr("calculator")

    ColumnLayout {
        id: columnLayout
        anchors.fill: parent

        TextInput {
            id: text
            Layout.alignment: top
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredWidth: 360
            Layout.preferredHeight: 120
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.family: "맑은 고딕"
            font.pointSize: 20
            rightPadding: 15
        }

        GridLayout {
            id: gridLayout
            Layout.alignment: bottom
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredWidth: 360
            Layout.preferredHeight: 360
            rows: 4
            columns: 4

            Button {
                id: btn7
                text: "7"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += "7"
            }

            Button {
                id: btn8
                text: "8"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += "8"
            }

            Button {
                id: btn9
                text: "9"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += "9"
            }

            Button {
                id: btnSum
                text: "+"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += " + "
            }

            Button {
                id: btn4
                text: "4"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += "4"
            }

            Button {
                id: btn5
                text: "5"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += "5"
            }

            Button {
                id: btn6
                text: "6"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += "6"
            }

            Button {
                id: btnSub
                text: "-"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += " - "
            }

            Button {
                id: btn1
                text: "1"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += "1"
            }

            Button {
                id: btn2
                text: "2"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += "2"
            }

            Button {
                id: btn3
                text: "3"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += "3"
            }

            Button {
                id: btnMul
                text: "*"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += " * "
            }

            Button {
                id: btnClr
                text: "clear"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text = ""
            }

            Button {
                id: btn0
                text: "0"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += "0"
            }

            Button {
                id: btnEq
                text: "="
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            Button {
                id: btnDvd
                text: "/"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: text.text += " / "
            }

        }

    }

}
