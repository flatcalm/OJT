/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 6.2
import QtQuick.Controls 6.2
import QtQuick.Layouts 1.3

ColumnLayout {
    id: columnLayout
    anchors.fill: parent

    TextInput {
        id: text
        Layout.alignment: top
        Layout.fillWidth: true
        Layout.fillHeight: true
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
        rows: 4
        columns: 4

        RoundButton {
            id: btn7
            text: "7"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btn8
            text: "8"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btn9
            text: "9"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btnSum
            text: "+"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btn4
            text: "4"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btn5
            text: "5"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btn6
            text: "6"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btnSub
            text: "+"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btn1
            text: "1"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btn2
            text: "2"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btn3
            text: "3"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btnMul
            text: "*"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btnClr
            text: "clear"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btn0
            text: "0"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btnEq
            text: "="
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

        RoundButton {
            id: btnDvd
            text: "/"
            Layout.fillHeight: true
            Layout.fillWidth: true
            radius: 0
        }

    }

}
