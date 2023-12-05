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
            id: oper
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.preferredWidth: 360
            Layout.preferredHeight: 120
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            font.family: "D2Coding"
            font.pointSize: 20
            rightPadding: 15
            focus: true

            // 입력값 제한 (숫자, 사칙연산, 공백)
            validator: RegExpValidator { regExp: /^[\d\s\+\-\*\.\/]*$/ }

            Keys.onPressed: {
                // 숫자와 연산자가 아닌 경우 clear
                if (!oper.text.match(/^[\d\+\-\*\/\s]+$/) && event.key !== Qt.Key_Equal
                        && event.key !== Qt.Key_0 && event.key !== Qt.Key_Space) {
                    oper.text = "";
                }
                // 결과값 0일 때 입력 시 0 지우기
                else if (oper.text == "0" && event.key !== Qt.Key_Space) {
                    oper.text = "";
                }
                // = 키를 누르면 바로 계산
                else if (event.key === Qt.Key_Equal) {
                    Calculator.input_string = oper.text;
                    // 입력값을 넘겨준 뒤 입력된 =을 지움
                    oper.text = "";
                    var result = Calculator.calculate();
                    // 결과 값을 10진수 문자열로 변환하고 표시
                    var resultStr = result.toString();
                    oper.text = resultStr;
                }
            }

            // Enter 입력(입력값 제출)하면 바로 계산
            onAccepted: {
                Calculator.input_string = oper.text;
                var result = Calculator.calculate();
                var resultStr = result.toString();
                oper.text = resultStr;
            }
        }

        GridLayout {
            id: gridLayout
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
                onClicked: {
                    // 결과값 0일 때 입력 시 0 지우기
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/) || oper.text == "0") {
                        oper.text = "";
                    }
                    oper.text += "7";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btn8
                text: "8"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/) || oper.text == "0") {
                        oper.text = "";
                    }
                    oper.text += "8";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btn9
                text: "9"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/) || oper.text == "0") {
                        oper.text = "";
                    }
                    oper.text += "9";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btnSum
                text: "+"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/)) {
                        oper.text = "";
                    }
                    oper.text += " + ";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btn4
                text: "4"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/) || oper.text == "0") {
                        oper.text = "";
                    }
                    oper.text += "4";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btn5
                text: "5"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/) || oper.text == "0") {
                        oper.text = "";
                    }
                    oper.text += "5";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btn6
                text: "6"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/) || oper.text == "0") {
                        oper.text = "";
                    }
                    oper.text += "6";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btnSub
                text: "-"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/)) {
                        oper.text = "";
                    }
                    oper.text += " - ";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btn1
                text: "1"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/) || oper.text == "0") {
                        oper.text = "";
                    }
                    oper.text += "1";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btn2
                text: "2"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/) || oper.text == "0") {
                        oper.text = "";
                    }
                    oper.text += "2";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btn3
                text: "3"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/) || oper.text == "0") {
                        oper.text = "";
                    }
                    oper.text += "3";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btnMul
                text: "*"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/)) {
                        oper.text = "";
                    }
                    oper.text += " * ";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btnClr
                text: "clear"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    oper.text = "";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btn0
                text: "0"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/)) {
                        oper.text = "";
                    }
                    oper.text += "0";
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btnEq
                text: "="
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/)) {
                        oper.text = "";
                    }
                    Calculator.input_string = oper.text;
                    var result = Calculator.calculate();
                    var resultStr = result.toString();
                    oper.text = resultStr;
                    oper.forceActiveFocus();
                }
            }

            Button {
                id: btnDvd
                text: "/"
                Layout.fillHeight: true
                Layout.fillWidth: true
                onClicked: {
                    if (!oper.text.match(/^[\d\+\-\*\/\s]+$/)) {
                        oper.text = "";
                    }
                    oper.text += " / ";
                    oper.forceActiveFocus();
                }
            }

        }

    }

}
