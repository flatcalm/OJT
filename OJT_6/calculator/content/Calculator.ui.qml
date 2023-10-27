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
        height: 120
        Layout.alignment: top
        Layout.fillWidth: true
        Layout.fillHeight: true
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

        Button {
            id: btn7
            text: "7"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btn8
            text: "8"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btn9
            text: "9"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btnSum
            text: "+"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btn4
            text: "4"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btn5
            text: "5"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btn6
            text: "6"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btnSub
            text: "+"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btn1
            text: "1"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btn2
            text: "2"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btn3
            text: "3"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btnMul
            text: "*"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btnClr
            text: "clear"
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Button {
            id: btn0
            text: "0"
            Layout.fillHeight: true
            Layout.fillWidth: true
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
        }

    }

}
