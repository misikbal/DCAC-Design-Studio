import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtCharts 2.3


Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#ffffff"
    border.color: "#ffffff"

    ButtonGroup {
        id: radioButtonGroup
    }


    Flickable {
        id: flickable
        x: 411
        y: 50
        visible: true
        width: 532
        height: 572
        ScrollBar.vertical: ScrollBar {
            x: 355
            width: 10
            height: 650
            policy: ScrollBar.AlwaysOn
            size: flickable.height / flickable.contentHeight
            position: flickable.contentY / flickable.contentHeight
            contentItem: Rectangle {
                implicitHeight: parent.height / 2
                implicitWidth: parent.width
                color: "gray"
                radius: 5
            }
        }
        Column {
            id: column
            x: 10
            y: 15
            anchors.left: parent.left
            anchors.right: parent.right
            Repeater {
                id: repeater
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                model: ListModel {
                    id: myListModel
                    ListElement {
                        name: "Record 1"
                    }
                    function containsElement(elementName) {
                        for (var i = 0; i < count; i++) {
                            if (get(i).name === elementName) {
                                return true;
                            }
                        }
                        return false;
                    }

                    function createListElement() {
                        return {
                            "name": toDoTextInput.text
                        }
                    }

                }
                Rectangle {
                    id: toDoItem
                    x: 0
                    y: 0
                    width: 340
                    height: 25
                    color: "#00eff2f6"
                    radius: 0
                    RadioButton {
                        id: checkBox
                        text: name
                        anchors.verticalCenter: parent.verticalCenter
                        width: 666
                        height: 55
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        icon.color: "#00c71c1c"
                        font.family: "Akshar"
                        ButtonGroup.group: radioButtonGroup
                        onClicked: {
                             // Tıklanan radioButton'ın metnini al ve bir işlevi çağır
//                            clickedText.text=" "+text;
//                            clickedText.color="#284863"
//                            rectangle1.isDialogOpen = false;
                            warningText.visible=false
                        }

                    }
                }
                clip: true
            }
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            clip: false
            spacing: 20
        }

        clip: true
        contentHeight: 400
    }


    Rectangle {
        id: addToDoDialog
        x: 8
        y: 503
        width: 328
        height: 160
        visible: true
        color: "#EFF2F6"
        radius: 0
        TextField {
            id: toDoTextInput
            height: 60
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            font.pixelSize: 18
            font.styleName: "Light"
            font.family: "Akshar"
            placeholderText: qsTr("Please enter logger name")
            anchors.topMargin: 25
            anchors.rightMargin: 25
            anchors.leftMargin: 25
        }

        RowLayout {
            y: 80
            height: 80
            anchors.left: parent.left
            anchors.right: parent.right

            Button {
                id: cancelButton
                Layout.minimumHeight: 45
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay
                    color: "#617284"
                    Text {
                        id: cancel
                        x:0
                        y:0
                        width: 114
                        height:40
                        color: "#ffffff"

                        text: qsTr("Cancel")
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: "Akshar"
                    }
                }

                icon.color: "#eff2f6"
                Layout.fillWidth: true
                Connections {
                    target: cancelButton
                    onClicked:
                    {
//                        rectangle1.isDialogOpen = false
                        //                        rectangle2.visible = false
                        warningText.visible=false
                    }
                }

                Connections {
                    target: cancelButton
                    onClicked: toDoTextInput.text = ""
                }
            }

            Button {
                id: addButton
                layer.enabled: true
                Layout.minimumHeight: 45
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay1
                    color: "#617284"
                    Text {
                        id: add
                        x:0
                        y:0
                        width: 114
                        height:40
                        color: "#ffffff"

                        text: qsTr("Add")
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: "Akshar"
                    }
                }
                Layout.fillWidth: true
                Connections {
                    target: addButton
                }

                Connections {
                    target: addButton
                    onClicked: {
                        if (toDoTextInput.text.trim() === "") {
                            warningText.text = qsTr("An empty value cannot be entered, please enter at least 1 character.");
                            warningText.visible = true;
                            //                            rectangle2.visible = true;
                        }
                        else if (myListModel.containsElement(toDoTextInput.text.trim())) {
                            console.log("girdi")
                            warningText.text = qsTr("This name is already on the list.");
                            warningText.visible = true;
                            //                            rectangle2.visible = true;
                            toDoTextInput.text = ""; // Bu satırı ekleyin.
                        }
                        else {
                            warningText.visible = false; // Uyarı mesajını gizle
                            //                            rectangle2.visible = false;
                            flickable.contentHeight += 75;
                            myListModel.append(myListModel.createListElement());
                            toDoTextInput.text = ""; // Bu satırı ekleyin.

                        }
                    }
                }
            }
            anchors.rightMargin: 25
            anchors.leftMargin: 25
            spacing: 50
        }
    }

    Text {
        id: warningText
        x: 15
        y: 451
        width: 319
        height: 102
        // Yerleşimini ayarlayın
        color: "red"
        font.pointSize: 14
        visible: false // Başlangıçta gizli olacak
        text: qsTr("An empty value cannot be entered, please enter at least 1 character.")
        wrapMode: Text.Wrap
    }


}
