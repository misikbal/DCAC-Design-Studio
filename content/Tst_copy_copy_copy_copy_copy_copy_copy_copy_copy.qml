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


    property alias myListModelMemoryInfo : myListModelMemoryInfo

    ButtonGroup {
        id: radioButtonGroup
    }


    Rectangle {
        id: rectangle1
        x: 358
        y: 8
        width: 545
        height: 720
        color: "#00ffffff"
        border.color: "#dce8ef"
        Image {
            id: bGForSearch
            x: 13
            y: 14
            width: 372
            height: 57
            source: "images/BGForHeader.svg"
            antialiasing: true
            Rectangle {
                x: 11
                y: 8
                width: 348
                height: 41
                color: "#ffffff"
                radius: 20.5
                border.color: "#d9d9d9"

                TextInput {
                    id:searchTextInput
                    x: 25
                    y: 0
                    width: 274
                    height: 41
                    color: "#284863"
                    text: qsTr("")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true


                    MouseArea{
                        x:-40
                        y:-5
                        width: parent.width+100
                        height: parent.height+10
                        onClicked: {
                            clickedSearch.start()
                            search.source="images/returnToBack.svg"
                            searchTextInput.focus=true
                        }
                    }
                    ParallelAnimation{
                        id:clickedSearch
                        NumberAnimation {
                            target: searchTextInput
                            property: "x"
                            duration: 150
                            to:35
                        }
                        NumberAnimation {
                            target: searchTextInput
                            property: "width"
                            duration: 150
                            to:300
                        }
                        NumberAnimation {
                            target: search
                            property: "x"
                            duration: 150
                            to:7
                        }

                        NumberAnimation {
                            target: search
                            property: "y"
                            duration: 150
                            to:14
                        }
                    }

                    ParallelAnimation{
                        id:nonclickedSearch
                        NumberAnimation {
                            target: searchTextInput
                            property: "x"
                            duration: 150
                            to:25
                        }
                        NumberAnimation {
                            target: searchTextInput
                            property: "width"
                            duration: 150
                            to:274
                        }
                        NumberAnimation {
                            target: search
                            property: "x"
                            duration: 150
                            to:314
                        }

                        NumberAnimation {
                            target: search
                            property: "y"
                            duration: 150
                            to:11
                        }
                    }
                }

                Image {
                    id: search
                    x: 314
                    y: 11
                    source: "images/Search.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                    width: 40/2
                    MouseArea {
                        anchors.fill: parent
                        anchors.bottomMargin: -10
                        anchors.rightMargin: -10
                        anchors.leftMargin: -13
                        anchors.topMargin: -13
                        onClicked: {
                            //                            search.x = 314
                            nonclickedSearch.start()
                            search.source="images/Search.svg"
                            searchTextInput.focus=false
                            searchTextInput.text=""
                            //                            searchTextInput.activeFocus = false// TextInput odaklamasını kaldır
                        }
                    }

                }
            }
        }



        Image {
            id: radio21
            x: 444
            y: 24
            width: 77/2
            source: "images/radio-2-1.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: radio2
            x: 396
            y: 24
            width: 77/2
            source: "images/radio-2.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: add_ring_light
            x: 477
            y: 9
            width: 136/2
            source: "images/Add_ring_light.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
            MouseArea{
                x:5
                y:0
                width: parent.width
                height: parent.height
                onClicked: {
                    searchTextInput.text=""
                }
            }
        }

        Flickable {
            id: flickable
            x: 8
            y: 71
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

                property int itemCount: 0
                ListView {
                    id: todoListView
                    width: flickable.width
                    height: 572
                    interactive: false
                    model: ListModel {
                        id: myListModelMemoryInfo
                        ListElement {
                            name: "Record 1"
                        }

                        // Add more ListElement items as needed

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

                    // Add the following property to enable automatic positioning of items
                    layoutDirection: Qt.LeftToRight

                    // Add the following property to enable automatic positioning of items
                    //                clip: true

                    delegate: Rectangle {
                        width: todoListView.width
                        //                    height: 55
                        color: "#00eff2f6"
                        radius: 0

                        RadioButton {
                            id: checkBox
                            text: model.name

                            anchors.left: parent.left
                            anchors {
                                verticalCenter: parent.verticalCenter
                                horizontalCenter: parent.horizontalCenter // Center horizontally
                            }
                            width: parent.width // Set the width to the parent's width
                            height: parent.height // Set the height to the parent's height


                            Text {
                                id:textForNo
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                text: index + 1
                                font.pixelSize: 18
                                anchors.leftMargin: -22
                                color: "#000000"
                            }

                            // Add the following line to control visibility based on searchTextInput
                            visible: model.name.toLowerCase().includes(searchTextInput.text.toLowerCase())
                            font.letterSpacing: -2
                            font.pixelSize: 18
                            anchors.leftMargin: 21
                            icon.color: "#00c71c1c"
                            font.family: "Akshar"
                            ButtonGroup.group: radioButtonGroup
                            onClicked: {
                                warningText.visible = false
                            }
                        }

                        // Add the following Rectangle to create a visual separator
                        Rectangle {
                            width: todoListView.width
                            height: 0
                            color: "transparent"
                        }

                        // Add the following line to create an empty space after each item
                        height: checkBox.visible ? 56 : 0
                    }
                    //                ScrollBar.vertical: ScrollBar {
                    //                          x: 355
                    //                          width: 10
                    //                          height: 650
                    //                          policy: ScrollBar.AlwaysOn
                    //                          size: flickable.height / flickable.contentHeight
                    //                          position: flickable.contentY / flickable.contentHeight
                    //                          contentItem: Rectangle {
                    //                              implicitHeight: parent.height / 2
                    //                              implicitWidth: parent.width
                    //                              color: "gray"
                    //                              radius: 5
                    //                          }
                    //                      }

                    // Add the following property to enable automatic positioning of items
                    clip: false
                }

                anchors.rightMargin: 10
                anchors.leftMargin: 10
                clip: false
                spacing: 0
            }

            clip: true
            contentHeight: 575
        }
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
                        else if (myListModelMemoryInfo.containsElement(toDoTextInput.text.trim())) {
                            warningText.text = qsTr("This name is already on the list.");
                            warningText.visible = true;
                            //                            rectangle2.visible = true;
                            toDoTextInput.text = ""; // Bu satırı ekleyin.
                        }
                        else {
                            warningText.visible = false; // Uyarı mesajını gizle
                            //                            rectangle2.visible = false;
                            flickable.contentHeight += 56;
                            todoListView.height += 56
                            myListModelMemoryInfo.append(myListModelMemoryInfo.createListElement());
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
