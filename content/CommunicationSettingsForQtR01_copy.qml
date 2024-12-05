import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15




Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#f7f8fa"
    border.color: "#f7f8fa"
    property int animationDurationForHarmoncis: 2000
    property int animationsForHarmonicClickedCircleOpen:500

    Component.onCompleted: {
        harmonicCirclesAnimations.start()

        //        setItemVisibility(1, true);


    }


    Image {
        id: communicationSettings
        x: 0
        y: 0
        source: "images/CommunicationSettings.svg"
        fillMode: Image.PreserveAspectFit
        width: 2560/2
    }

    Image {
        id: menu
        x: 0
        y: 0
        width: 696/2
        source: "images/Menu.svg"
        fillMode: Image.PreserveAspectFit

        CustomButtonHeaderBlackBG{
            id: customButtonHeaderBlackBG
            x:12
            y:8
            width:644/2
            height:160/2
            clip: true


            RectangleItem {
                id: rectangle7
                width: 175/2
                height: 108/2
                radius: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 3
                fillColor: "#738395"
                strokeWidth: -1

                MouseArea {
                    id: mouseArea1
                    x: 0
                    y: 0
                    width: rectangle7.width
                    height: rectangle7.height
                    onClicked: {
                        rectangle7.fillColor="#217EFD"
                        rectangle9.fillColor="#738395"
                        rectangle10.fillColor="#738395"
                        memoryTypeText.text="USB"
                    }
                }

                Image {
                    id: scan1
                    width: 60/2
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    source: "images/Scan.svg"
                    anchors.leftMargin: 4
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    width: 52
                    height: 53
                    color: "#ffffff"
                    text: qsTr("USB")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.verticalCenterOffset: 1
                    anchors.leftMargin: 36
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }

            RectangleItem {
                id: rectangle9
                x: 94
                y: 13
                width: 220/2
                height: 108/2
                radius: 0
                strokeWidth: -1
                fillColor: "#217efd"
                MouseArea {
                    x: 0
                    y: 0
                    width: rectangle9.width
                    height: rectangle9.height
                    onClicked: {
                        rectangle9.fillColor="#217EFD"
                        rectangle7.fillColor="#738395"
                        rectangle10.fillColor="#738395"
                        memoryTypeText.text="SD Card"

                    }
                }

                Text {
                    width: 77
                    height: 54
                    color: "#ffffff"
                    text: qsTr("SD Card")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.leftMargin: 34
                    anchors.verticalCenterOffset: 0
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

                Image {
                    id: arhive
                    width: 74/2
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    source: "images/Arhive.svg"
                    anchors.leftMargin: 4
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
            }

            RectangleItem {
                id: rectangle10
                x: 207
                y: 13
                width: 226/2
                height: 108/2
                radius: 0
                fillColor: "#738395"
                strokeWidth: -1
                MouseArea {
                    x: 0
                    y: 0
                    width: rectangle10.width
                    height: rectangle10.height
                    onClicked: {
                        rectangle10.fillColor="#217EFD"
                        rectangle7.fillColor="#738395"
                        rectangle9.fillColor="#738395"
                        memoryTypeText.text="Internal Memory"
                    }
                }

                Text {
                    width: 77
                    height: 54
                    color: "#ffffff"
                    text: qsTr("Internal Memory")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                    anchors.verticalCenterOffset: 0
                    anchors.leftMargin: 38
                }

                Image {
                    width: 60/2
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    source: "images/fluent_memory-16-regular.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                    anchors.leftMargin: 4
                }
            }

        }



        Rectangle {
            id: addToDoDialog
            x: 12
            y: 562
            width: 320
            height: 81
            visible: false
            color: "#EFF2F6"
            radius: 0

            RowLayout {
                y: 0
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
                            y:2
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
                            recordFileNameAnim2.start()
//                            rectangle1.isDialogOpen = false
//                            rectangle2.visible = false
//                            warningText.visible=false
                        }
                    }

//                    Connections {
//                        target: cancelButton
//                        onClicked: toDoTextInput.text = ""
//                    }
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
                            y:2
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

//                    Connections {
//                        target: addButton
//                        onClicked: {
//                            if (toDoTextInput.text.trim() === "") {
//                                warningText.text = qsTr("An empty value cannot be entered, please enter at least 1 character.");
//                                warningText.visible = true;
//                                rectangle2.visible = true;
//                            }
//                            else if (myListModel.containsElement(toDoTextInput.text.trim())) {
//                                console.log("girdi")
//                                warningText.text = qsTr("This name is already on the list.");
//                                warningText.visible = true;
//                                rectangle2.visible = true;
//                                toDoTextInput.text = ""; // Bu satırı ekleyin.
//                            }
//                            else {
//                                warningText.visible = false; // Uyarı mesajını gizle
//                                rectangle2.visible = false;
//                                rectangle1.isDialogOpen = false;
//                                flickable.contentHeight += 75;
//                                myListModel.append(myListModel.createListElement());
//                                toDoTextInput.text = ""; // Bu satırı ekleyin.

//                            }
//                        }
//                    }
                }
                anchors.rightMargin: 25
                anchors.leftMargin: 25
                spacing: 50
            }
        }


        Image {
            id: bGForHeader1
            x: 12
            y: 576
            width: 640/2
            height: 54
            source: "images/BGForHeader.svg"
            Text {
                x: 8
                y: 0
                width: 225
                height: 54
                color: "#284863"
                text: qsTr("File Name")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
            NumberAnimation {
                id:recordFileNameAnim
                target: addToDoDialog
                property: "y"
                duration: 150
                to:631
            }
            NumberAnimation {
                id:recordFileNameAnim2
                target: addToDoDialog
                property: "y"
                duration: 150
                to:562
            }
            Rectangle {
                x: 142
                y: 6
                width: 175
                height: 41
                color: "#ffffff"
                radius: 20.5
                border.color: "#d9d9d9"
                TextInput {
                    id:recordFileNameTextInput
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("Disk 2")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }
                MouseArea{
                    x:-130
                    y:-10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        recordFileNameTextInput.focus=true
                        recordFileNameAnim.start()
                    }
                }
            }
            fillMode: Image.Stretch
        }

        Image {
            id: bGForHeader3
            x: 12
            y: 98
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Rename")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id:createFile
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent

                scale: mouseArea.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: file_dock_add
                    x: 12
                    y: 12
                    width: 45/2
                    source: "images/icon-park-outline_file-editing-one.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                SequentialAnimation{
                    id:rect8anim
                NumberAnimation {
                    target: rectangle8
                    property: "visible"
                    duration: 50
                    to:1
                }
                NumberAnimation {
                    target: rectangle8
                    property: "visible"
                    duration: 50
                    to:0
                }
                }



                MouseArea {
                    id: mouseArea
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        if (pressed) {
                            rectangle8.x=bGForHeader3.x
                            rectangle8.y=bGForHeader3.y
                            rect8anim.start()
                            createFile.color = "#217EFD"
                        } else {
//
                            createFile.color = "#617284"
                        }
                    }
                }


            }

            fillMode: Image.Tile
        }

        Image {
            id: bGForHeader32
            x: 177
            y: 98
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Delete")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id:delete2
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent

                scale: mouseArea2.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: trash
                    x: 12
                    y: 12
                    source: "images/Trash.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                    width: 45/2
                }

                MouseArea {
                    id: mouseArea2
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        if (pressed) {
                            rectangle8.x=bGForHeader32.x
                            rectangle8.y=bGForHeader32.y
                            rect8anim.start()
                            delete2.color = "#217EFD"
                        } else {

                            delete2.color = "#617284"
                        }
                    }


                }



            }

            fillMode: Image.Tile
        }

        Image {
            id: bGForHeader33
            x: 12
            y: 206
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Undo")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }


            Rectangle {
                id:restore
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent

                scale: mouseArea3.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: refresh
                    x: 13
                    y: 11
                    width: 45/2
                    source: "images/Refresh.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id: mouseArea3
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        if (pressed) {
                            rectangle8.x=bGForHeader33.x
                            rectangle8.y=bGForHeader33.y
                            rect8anim.start()
                            restore.color = "#217EFD"
                        } else {

                            restore.color = "#617284"
                        }
                    }

                }




            }

            fillMode: Image.Tile
        }

        Image {
            id: bGForHeader34
            x: 177
            y: 206
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Jump to Details")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id:jumpToEvent
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent

                scale: mouseArea4.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: group9762
                    x: 11
                    y: 3
                    width: 63/2
                    source: "images/Group 9762.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id: mouseArea4
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        if (pressed) {
                            rectangle8.x=bGForHeader34.x
                            rectangle8.y=bGForHeader34.y
                            rect8anim.start()
                            jumpToEvent.color = "#217EFD"
                        } else {

                            jumpToEvent.color = "#617284"
                        }
                    }
                }





            }

            fillMode: Image.Tile
        }

        Image {
            id: bGForHeader35
            x: 12
            y: 314
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            fillMode: Image.Tile
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Format")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id:goToEvent
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent

                scale: mouseArea5.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: paper
                    x: 12
                    y: 12
                    width: 45/2
                    source: "images/tdesign_delete-1.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id: mouseArea5
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        if (pressed) {
                            rectangle8.x=bGForHeader35.x
                            rectangle8.y=bGForHeader35.y
                            rect8anim.start()
                            goToEvent.color = "#217EFD"
                        } else {

                            goToEvent.color = "#617284"
                        }
                    }
                }






            }

        }

        RectangleItem {
            id: rectangle8
            x: 11
            y: 206
            width: 158
            height: 101
            visible: false
            radius: 0
            fillColor: "#00ffffff"
            strokeColor: "#217efd"
            strokeWidth: 1
        }

        Text {
            id: memoryTypeText
            x: 1102
            y: 371
            width: 157
            height: 34
            color: "#284863"
            text: qsTr("SD CARD")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Light"
        }



    }
































    Image {
        id: menu1
        x: 913
        y: 0
        width: 734/2
        visible: false
        source: "images/Menu-1.svg"
        fillMode: Image.PreserveAspectFit
    }


















































    ParallelAnimation {
        id: harmonicCirclesAnimations
        NumberAnimation {
            property: "rotation"
            duration: animationDurationForHarmoncis
            loops:-1
            from:0
            to:360
        }

        NumberAnimation {
            property: "rotation"
            duration: animationDurationForHarmoncis
            loops:-1
            from:360
            to:0
        }
    }








    ParallelAnimation {
        id: h2Clicked
        //        onStopped: {
        //            closeCurrent.start()
        //        }
        NumberAnimation {
            property: "scale"
            duration: animationsForHarmonicClickedCircleOpen
            to: 1.1
        }

        NumberAnimation {
            property: "x"
            duration: animationsForHarmonicClickedCircleOpen
            to: 392
        }

        NumberAnimation {
            property: "y"
            duration: animationsForHarmonicClickedCircleOpen
            to: 70
        }
    }





    ParallelAnimation {
        id: h2nonClicked
        //        onStopped: {
        //            closeCurrent.start()
        //        }
        NumberAnimation {
            property: "scale"
            duration: animationsForHarmonicClickedCircleOpen
            to: 1
        }

        NumberAnimation {
            property: "x"
            duration: animationsForHarmonicClickedCircleOpen
            to: 391
        }

        NumberAnimation {
            property: "y"
            duration: animationsForHarmonicClickedCircleOpen
            to: 60
        }
    }







































    ListModel {
        id: myModel
        ListElement {
            text: "H0"
            visible: false
        }
        ListElement {
            text: "H0,5"
            visible: false
        }
        ListElement {
            text: "H1"
            visible: false
        }
        ListElement {
            text: "H1,5"
            visible: false
        }
        ListElement {
            text: "H2"
            visible: false
        }
        ListElement {
            text: "H2,5"
            visible: false
        }
        ListElement {
            text: "H3";
            visible: false
        }
        ListElement {
            text: "H3,5"
            visible: false
        }
        ListElement {
            text: "H4";
            visible: false
        }
        ListElement {
            text: "H4,5";
            visible: false;
        }
        ListElement {
            text: "H5";
            visible: false
        }
        ListElement {
            text: "H5,5";
            visible: false;
        }
        ListElement {
            text: "H6";
            visible: false
        }
        ListElement {
            text: "H6,5";
            visible: false;
        }
        ListElement {
            text: "H7";
            visible: false
        }
        ListElement {
            text: "H7,5";
            visible: false;
        }
        ListElement {
            text: "H8";
            visible: false
        }
        ListElement {
            text: "H8,5";
            visible: false;
        }
        ListElement {
            text: "H9";
            visible: false
        }
        ListElement {
            text: "H9,5";
            visible: false;
        }
        ListElement {
            text: "H10";
            visible: false
        }
        ListElement {
            text: "H10,5";
            visible: false;
        }
        ListElement {
            text: "H11";
            visible: false
        }
        ListElement {
            text: "H11,5";
            visible: false;
        }
        ListElement {
            text: "H12";
            visible: false
        }
        ListElement {
            text: "H12,5";
            visible: false;
        }
        ListElement {
            text: "H13";
            visible: false
        }
        ListElement {
            text: "H13,5";
            visible: false;
        }
        ListElement {
            text: "H14";
            visible: false
        }
        ListElement {
            text: "H14,5";
            visible: false;
        }
        ListElement {
            text: "H15";
            visible: false
        }
        ListElement {
            text: "H15,5";
            visible: false;
        }
        ListElement {
            text: "H16";
            visible: false
        }
        ListElement {
            text: "H16,5";
            visible: false;
        }
        ListElement {
            text: "H17";
            visible: false
        }
        ListElement {
            text: "H17,5";
            visible: false;
        }
        ListElement {
            text: "H18";
            visible: false
        }
        ListElement {
            text: "H18,5";
            visible: false;
        }
        ListElement {
            text: "H19";
            visible: false
        }
        ListElement {
            text: "H19,5";
            visible: false;
        }
        ListElement {
            text: "H20";
            visible: false
        }
        ListElement {
            text: "H20,5";
            visible: false;
        }
        ListElement {
            text: "H21";
            visible: false
        }
        ListElement {
            text: "H21,5";
            visible: false;
        }
        ListElement {
            text: "H22";
            visible: false
        }
        ListElement {
            text: "H22,5";
            visible: false;
        }
        ListElement {
            text: "H23";
            visible: false
        }
        ListElement {
            text: "H23,5";
            visible: false;
        }
        ListElement {
            text: "H24";
            visible: false
        }
        ListElement {
            text: "H24,5";
            visible: false;
        }
        ListElement {
            text: "H25";
            visible: false
        }
        ListElement {
            text: "H25,5";
            visible: false;
        }
        ListElement {
            text: "H26";
            visible: false
        }
        ListElement {
            text: "H26,5";
            visible: false;
        }
        ListElement {
            text: "H27";
            visible: false
        }
        ListElement {
            text: "H27,5";
            visible: false;
        }
        ListElement {
            text: "H28";
            visible: false
        }
        ListElement {
            text: "H28,5";
            visible: false;
        }
        ListElement {
            text: "H29";
            visible: false
        }
        ListElement {
            text: "H29,5";
            visible: false;
        }
        ListElement {
            text: "H30";
            visible: false
        }
        ListElement {
            text: "H30,5";
            visible: false;
        }
        ListElement {
            text: "H31";
            visible: false
        }
        ListElement {
            text: "H31,5";
            visible: false;
        }
        ListElement {
            text: "H32";
            visible: false
        }
        ListElement {
            text: "H32,5";
            visible: false;
        }
        ListElement {
            text: "H33";
            visible: false
        }
        ListElement {
            text: "H33,5";
            visible: false;
        }
        ListElement {
            text: "H34";
            visible: false
        }
        ListElement {
            text: "H34,5";
            visible: false;
        }
        ListElement {
            text: "H35";
            visible: false
        }
        ListElement {
            text: "H35,5";
            visible: false;
        }
        ListElement {
            text: "H36";
            visible: false
        }
        ListElement {
            text: "H36,5";
            visible: false;
        }
        ListElement {
            text: "H37";
            visible: false
        }
        ListElement {
            text: "H37,5";
            visible: false;
        }
        ListElement {
            text: "H38";
            visible: false
        }
        ListElement {
            text: "H38,5";
            visible: false;
        }
        ListElement {
            text: "H39";
            visible: false
        }
        ListElement {
            text: "H39,5";
            visible: false;
        }
        ListElement {
            text: "H40";
            visible: false
        }
        ListElement {
            text: "H40,5";
            visible: false;
        }
        ListElement {
            text: "H41";
            visible: false
        }
        ListElement {
            text: "H41,5";
            visible: false;
        }
        ListElement {
            text: "H42";
            visible: false
        }
        ListElement {
            text: "H42,5";
            visible: false;
        }
        ListElement {
            text: "H43";
            visible: false
        }
        ListElement {
            text: "H43,5";
            visible: false;
        }
        ListElement {
            text: "H44";
            visible: false
        }
        ListElement {
            text: "H44,5";
            visible: false;
        }
        ListElement {
            text: "H45";
            visible: false
        }
        ListElement {
            text: "H45,5";
            visible: false
        }
        ListElement {
            text: "H46";
            visible: false
        }
        ListElement {
            text: "H46,5";
            visible: false
        }
        ListElement {
            text: "H47";
            visible: false
        }
        ListElement {
            text: "H47,5";
            visible: false
        }
        ListElement {
            text: "H48";
            visible: false
        }
        ListElement {
            text: "H48,5";
            visible: false
        }
        ListElement {
            text: "H49";
            visible: false
        }
        ListElement {
            text: "H49,5";
            visible: false
        }


    }

    function refreshVisibleItemsModel() {
        visibleItemsModel.clear();
        for (var i = 0; i < myModel.count; ++i) {
            if (myModel.get(i).visible)
                visibleItemsModel.append(myModel.get(i));
        }
    }

    // Create a separate model to store visible items


    Rectangle {
        id: rectangle2
        x: 743
        y: 22
        width: 156
        height: 57
        color: "#ffffff"
    }

    ListModel {
        id: visibleItemsModel
    }

    // Function to handle item visibility changes
    function setItemVisibility(index, visibility) {
        myModel.setProperty(index, "visible", visibility);
        refreshVisibleItemsModel();
    }









    ListModel {
        id: myModel1
        ListElement {
            text: "212,55"
            visible: false
        }
        ListElement {
            text: "H0,5"
            visible: false
        }
        ListElement {
            text: "H1"
            visible: false
        }
        ListElement {
            text: "H1,5"
            visible: false
        }
        ListElement {
            text: "H2"
            visible: false
        }
        ListElement {
            text: "H2,5"
            visible: false
        }
        ListElement {
            text: "H3";
            visible: false
        }
        ListElement {
            text: "H3,5"
            visible: false
        }
        ListElement {
            text: "H4";
            visible: false
        }
        ListElement {
            text: "H4,5";
            visible: false;
        }
        ListElement {
            text: "H5";
            visible: false
        }
        ListElement {
            text: "H5,5";
            visible: false;
        }
        ListElement {
            text: "H6";
            visible: false
        }
        ListElement {
            text: "H6,5";
            visible: false;
        }
        ListElement {
            text: "H7";
            visible: false
        }
        ListElement {
            text: "H7,5";
            visible: false;
        }
        ListElement {
            text: "H8";
            visible: false
        }
        ListElement {
            text: "H8,5";
            visible: false;
        }
        ListElement {
            text: "H9";
            visible: false
        }
        ListElement {
            text: "H9,5";
            visible: false;
        }
        ListElement {
            text: "H10";
            visible: false
        }
        ListElement {
            text: "H10,5";
            visible: false;
        }
        ListElement {
            text: "H11";
            visible: false
        }
        ListElement {
            text: "H11,5";
            visible: false;
        }
        ListElement {
            text: "H12";
            visible: false
        }
        ListElement {
            text: "H12,5";
            visible: false;
        }
        ListElement {
            text: "H13";
            visible: false
        }
        ListElement {
            text: "H13,5";
            visible: false;
        }
        ListElement {
            text: "H14";
            visible: false
        }
        ListElement {
            text: "H14,5";
            visible: false;
        }
        ListElement {
            text: "H15";
            visible: false
        }
        ListElement {
            text: "H15,5";
            visible: false;
        }
        ListElement {
            text: "H16";
            visible: false
        }
        ListElement {
            text: "H16,5";
            visible: false;
        }
        ListElement {
            text: "H17";
            visible: false
        }
        ListElement {
            text: "H17,5";
            visible: false;
        }
        ListElement {
            text: "H18";
            visible: false
        }
        ListElement {
            text: "H18,5";
            visible: false;
        }
        ListElement {
            text: "H19";
            visible: false
        }
        ListElement {
            text: "H19,5";
            visible: false;
        }
        ListElement {
            text: "H20";
            visible: false
        }
        ListElement {
            text: "H20,5";
            visible: false;
        }
        ListElement {
            text: "H21";
            visible: false
        }
        ListElement {
            text: "H21,5";
            visible: false;
        }
        ListElement {
            text: "H22";
            visible: false
        }
        ListElement {
            text: "H22,5";
            visible: false;
        }
        ListElement {
            text: "H23";
            visible: false
        }
        ListElement {
            text: "H23,5";
            visible: false;
        }
        ListElement {
            text: "H24";
            visible: false
        }
        ListElement {
            text: "H24,5";
            visible: false;
        }
        ListElement {
            text: "H25";
            visible: false
        }
        ListElement {
            text: "H25,5";
            visible: false;
        }
        ListElement {
            text: "H26";
            visible: false
        }
        ListElement {
            text: "H26,5";
            visible: false;
        }
        ListElement {
            text: "H27";
            visible: false
        }
        ListElement {
            text: "H27,5";
            visible: false;
        }
        ListElement {
            text: "H28";
            visible: false
        }
        ListElement {
            text: "H28,5";
            visible: false;
        }
        ListElement {
            text: "H29";
            visible: false
        }
        ListElement {
            text: "H29,5";
            visible: false;
        }
        ListElement {
            text: "H30";
            visible: false
        }
        ListElement {
            text: "H30,5";
            visible: false;
        }
        ListElement {
            text: "H31";
            visible: false
        }
        ListElement {
            text: "H31,5";
            visible: false;
        }
        ListElement {
            text: "H32";
            visible: false
        }
        ListElement {
            text: "H32,5";
            visible: false;
        }
        ListElement {
            text: "H33";
            visible: false
        }
        ListElement {
            text: "H33,5";
            visible: false;
        }
        ListElement {
            text: "H34";
            visible: false
        }
        ListElement {
            text: "H34,5";
            visible: false;
        }
        ListElement {
            text: "H35";
            visible: false
        }
        ListElement {
            text: "H35,5";
            visible: false;
        }
        ListElement {
            text: "H36";
            visible: false
        }
        ListElement {
            text: "H36,5";
            visible: false;
        }
        ListElement {
            text: "H37";
            visible: false
        }
        ListElement {
            text: "H37,5";
            visible: false;
        }
        ListElement {
            text: "H38";
            visible: false
        }
        ListElement {
            text: "H38,5";
            visible: false;
        }
        ListElement {
            text: "H39";
            visible: false
        }
        ListElement {
            text: "H39,5";
            visible: false;
        }
        ListElement {
            text: "H40";
            visible: false
        }
        ListElement {
            text: "H40,5";
            visible: false;
        }
        ListElement {
            text: "H41";
            visible: false
        }
        ListElement {
            text: "H41,5";
            visible: false;
        }
        ListElement {
            text: "H42";
            visible: false
        }
        ListElement {
            text: "H42,5";
            visible: false;
        }
        ListElement {
            text: "H43";
            visible: false
        }
        ListElement {
            text: "H43,5";
            visible: false;
        }
        ListElement {
            text: "H44";
            visible: false
        }
        ListElement {
            text: "H44,5";
            visible: false;
        }
        ListElement {
            text: "H45";
            visible: false
        }
        ListElement {
            text: "H45,5";
            visible: false
        }
        ListElement {
            text: "H46";
            visible: false
        }
        ListElement {
            text: "H46,5";
            visible: false
        }
        ListElement {
            text: "H47";
            visible: false
        }
        ListElement {
            text: "H47,5";
            visible: false
        }
        ListElement {
            text: "H48";
            visible: false
        }
        ListElement {
            text: "H48,5";
            visible: false
        }
        ListElement {
            text: "H49";
            visible: false
        }
        ListElement {
            text: "H49,5";
            visible: false
        }


    }

    function refreshVisibleItemsModel1() {
        visibleItemsModel1.clear();
        for (var i = 0; i < myModel1.count; ++i) {
            if (myModel1.get(i).visible)
                visibleItemsModel1.append(myModel1.get(i));
        }
    }

    // Create a separate model to store visible items
    ListModel {
        id: visibleItemsModel1
    }

    // Function to handle item visibility changes
    function setItemVisibility1(index, visibility) {
        myModel1.setProperty(index, "visible", visibility);
        refreshVisibleItemsModel1();
    }








    ListModel {
        id: myModel2
        ListElement {
            text: "ikinici"
            visible: false
        }
        ListElement {
            text: "H0,5"
            visible: false
        }
        ListElement {
            text: "H1"
            visible: false
        }
        ListElement {
            text: "H1,5"
            visible: false
        }
        ListElement {
            text: "H2"
            visible: false
        }
        ListElement {
            text: "H2,5"
            visible: false
        }
        ListElement {
            text: "H3";
            visible: false
        }
        ListElement {
            text: "H3,5"
            visible: false
        }
        ListElement {
            text: "H4";
            visible: false
        }
        ListElement {
            text: "H4,5";
            visible: false;
        }
        ListElement {
            text: "H5";
            visible: false
        }
        ListElement {
            text: "H5,5";
            visible: false;
        }
        ListElement {
            text: "H6";
            visible: false
        }
        ListElement {
            text: "H6,5";
            visible: false;
        }
        ListElement {
            text: "H7";
            visible: false
        }
        ListElement {
            text: "H7,5";
            visible: false;
        }
        ListElement {
            text: "H8";
            visible: false
        }
        ListElement {
            text: "H8,5";
            visible: false;
        }
        ListElement {
            text: "H9";
            visible: false
        }
        ListElement {
            text: "H9,5";
            visible: false;
        }
        ListElement {
            text: "H10";
            visible: false
        }
        ListElement {
            text: "H10,5";
            visible: false;
        }
        ListElement {
            text: "H11";
            visible: false
        }
        ListElement {
            text: "H11,5";
            visible: false;
        }
        ListElement {
            text: "H12";
            visible: false
        }
        ListElement {
            text: "H12,5";
            visible: false;
        }
        ListElement {
            text: "H13";
            visible: false
        }
        ListElement {
            text: "H13,5";
            visible: false;
        }
        ListElement {
            text: "H14";
            visible: false
        }
        ListElement {
            text: "H14,5";
            visible: false;
        }
        ListElement {
            text: "H15";
            visible: false
        }
        ListElement {
            text: "H15,5";
            visible: false;
        }
        ListElement {
            text: "H16";
            visible: false
        }
        ListElement {
            text: "H16,5";
            visible: false;
        }
        ListElement {
            text: "H17";
            visible: false
        }
        ListElement {
            text: "H17,5";
            visible: false;
        }
        ListElement {
            text: "H18";
            visible: false
        }
        ListElement {
            text: "H18,5";
            visible: false;
        }
        ListElement {
            text: "H19";
            visible: false
        }
        ListElement {
            text: "H19,5";
            visible: false;
        }
        ListElement {
            text: "H20";
            visible: false
        }
        ListElement {
            text: "H20,5";
            visible: false;
        }
        ListElement {
            text: "H21";
            visible: false
        }
        ListElement {
            text: "H21,5";
            visible: false;
        }
        ListElement {
            text: "H22";
            visible: false
        }
        ListElement {
            text: "H22,5";
            visible: false;
        }
        ListElement {
            text: "H23";
            visible: false
        }
        ListElement {
            text: "H23,5";
            visible: false;
        }
        ListElement {
            text: "H24";
            visible: false
        }
        ListElement {
            text: "H24,5";
            visible: false;
        }
        ListElement {
            text: "H25";
            visible: false
        }
        ListElement {
            text: "H25,5";
            visible: false;
        }
        ListElement {
            text: "H26";
            visible: false
        }
        ListElement {
            text: "H26,5";
            visible: false;
        }
        ListElement {
            text: "H27";
            visible: false
        }
        ListElement {
            text: "H27,5";
            visible: false;
        }
        ListElement {
            text: "H28";
            visible: false
        }
        ListElement {
            text: "H28,5";
            visible: false;
        }
        ListElement {
            text: "H29";
            visible: false
        }
        ListElement {
            text: "H29,5";
            visible: false;
        }
        ListElement {
            text: "H30";
            visible: false
        }
        ListElement {
            text: "H30,5";
            visible: false;
        }
        ListElement {
            text: "H31";
            visible: false
        }
        ListElement {
            text: "H31,5";
            visible: false;
        }
        ListElement {
            text: "H32";
            visible: false
        }
        ListElement {
            text: "H32,5";
            visible: false;
        }
        ListElement {
            text: "H33";
            visible: false
        }
        ListElement {
            text: "H33,5";
            visible: false;
        }
        ListElement {
            text: "H34";
            visible: false
        }
        ListElement {
            text: "H34,5";
            visible: false;
        }
        ListElement {
            text: "H35";
            visible: false
        }
        ListElement {
            text: "H35,5";
            visible: false;
        }
        ListElement {
            text: "H36";
            visible: false
        }
        ListElement {
            text: "H36,5";
            visible: false;
        }
        ListElement {
            text: "H37";
            visible: false
        }
        ListElement {
            text: "H37,5";
            visible: false;
        }
        ListElement {
            text: "H38";
            visible: false
        }
        ListElement {
            text: "H38,5";
            visible: false;
        }
        ListElement {
            text: "H39";
            visible: false
        }
        ListElement {
            text: "H39,5";
            visible: false;
        }
        ListElement {
            text: "H40";
            visible: false
        }
        ListElement {
            text: "H40,5";
            visible: false;
        }
        ListElement {
            text: "H41";
            visible: false
        }
        ListElement {
            text: "H41,5";
            visible: false;
        }
        ListElement {
            text: "H42";
            visible: false
        }
        ListElement {
            text: "H42,5";
            visible: false;
        }
        ListElement {
            text: "H43";
            visible: false
        }
        ListElement {
            text: "H43,5";
            visible: false;
        }
        ListElement {
            text: "H44";
            visible: false
        }
        ListElement {
            text: "H44,5";
            visible: false;
        }
        ListElement {
            text: "H45";
            visible: false
        }
        ListElement {
            text: "H45,5";
            visible: false
        }
        ListElement {
            text: "H46";
            visible: false
        }
        ListElement {
            text: "H46,5";
            visible: false
        }
        ListElement {
            text: "H47";
            visible: false
        }
        ListElement {
            text: "H47,5";
            visible: false
        }
        ListElement {
            text: "H48";
            visible: false
        }
        ListElement {
            text: "H48,5";
            visible: false
        }
        ListElement {
            text: "H49";
            visible: false
        }
        ListElement {
            text: "H49,5";
            visible: false
        }


    }

    function refreshVisibleItemsModel2() {
        visibleItemsModel2.clear();
        for (var i = 0; i < myModel2.count; ++i) {
            if (myModel2.get(i).visible)
                visibleItemsModel2.append(myModel2.get(i));
        }
    }

    // Create a separate model to store visible items
    ListModel {
        id: visibleItemsModel2
    }

    // Function to handle item visibility changes
    function setItemVisibility2(index, visibility) {
        myModel2.setProperty(index, "visible", visibility);
        refreshVisibleItemsModel2();
    }











    ListModel {
        id: myModel3
        ListElement {
            text: "ücüncü"
            visible: false
        }
        ListElement {
            text: "H0,5"
            visible: false
        }
        ListElement {
            text: "H1"
            visible: false
        }
        ListElement {
            text: "H1,5"
            visible: false
        }
        ListElement {
            text: "H2"
            visible: false
        }
        ListElement {
            text: "H2,5"
            visible: false
        }
        ListElement {
            text: "H3";
            visible: false
        }
        ListElement {
            text: "H3,5"
            visible: false
        }
        ListElement {
            text: "H4";
            visible: false
        }
        ListElement {
            text: "H4,5";
            visible: false;
        }
        ListElement {
            text: "H5";
            visible: false
        }
        ListElement {
            text: "H5,5";
            visible: false;
        }
        ListElement {
            text: "H6";
            visible: false
        }
        ListElement {
            text: "H6,5";
            visible: false;
        }
        ListElement {
            text: "H7";
            visible: false
        }
        ListElement {
            text: "H7,5";
            visible: false;
        }
        ListElement {
            text: "H8";
            visible: false
        }
        ListElement {
            text: "H8,5";
            visible: false;
        }
        ListElement {
            text: "H9";
            visible: false
        }
        ListElement {
            text: "H9,5";
            visible: false;
        }
        ListElement {
            text: "H10";
            visible: false
        }
        ListElement {
            text: "H10,5";
            visible: false;
        }
        ListElement {
            text: "H11";
            visible: false
        }
        ListElement {
            text: "H11,5";
            visible: false;
        }
        ListElement {
            text: "H12";
            visible: false
        }
        ListElement {
            text: "H12,5";
            visible: false;
        }
        ListElement {
            text: "H13";
            visible: false
        }
        ListElement {
            text: "H13,5";
            visible: false;
        }
        ListElement {
            text: "H14";
            visible: false
        }
        ListElement {
            text: "H14,5";
            visible: false;
        }
        ListElement {
            text: "H15";
            visible: false
        }
        ListElement {
            text: "H15,5";
            visible: false;
        }
        ListElement {
            text: "H16";
            visible: false
        }
        ListElement {
            text: "H16,5";
            visible: false;
        }
        ListElement {
            text: "H17";
            visible: false
        }
        ListElement {
            text: "H17,5";
            visible: false;
        }
        ListElement {
            text: "H18";
            visible: false
        }
        ListElement {
            text: "H18,5";
            visible: false;
        }
        ListElement {
            text: "H19";
            visible: false
        }
        ListElement {
            text: "H19,5";
            visible: false;
        }
        ListElement {
            text: "H20";
            visible: false
        }
        ListElement {
            text: "H20,5";
            visible: false;
        }
        ListElement {
            text: "H21";
            visible: false
        }
        ListElement {
            text: "H21,5";
            visible: false;
        }
        ListElement {
            text: "H22";
            visible: false
        }
        ListElement {
            text: "H22,5";
            visible: false;
        }
        ListElement {
            text: "H23";
            visible: false
        }
        ListElement {
            text: "H23,5";
            visible: false;
        }
        ListElement {
            text: "H24";
            visible: false
        }
        ListElement {
            text: "H24,5";
            visible: false;
        }
        ListElement {
            text: "H25";
            visible: false
        }
        ListElement {
            text: "H25,5";
            visible: false;
        }
        ListElement {
            text: "H26";
            visible: false
        }
        ListElement {
            text: "H26,5";
            visible: false;
        }
        ListElement {
            text: "H27";
            visible: false
        }
        ListElement {
            text: "H27,5";
            visible: false;
        }
        ListElement {
            text: "H28";
            visible: false
        }
        ListElement {
            text: "H28,5";
            visible: false;
        }
        ListElement {
            text: "H29";
            visible: false
        }
        ListElement {
            text: "H29,5";
            visible: false;
        }
        ListElement {
            text: "H30";
            visible: false
        }
        ListElement {
            text: "H30,5";
            visible: false;
        }
        ListElement {
            text: "H31";
            visible: false
        }
        ListElement {
            text: "H31,5";
            visible: false;
        }
        ListElement {
            text: "H32";
            visible: false
        }
        ListElement {
            text: "H32,5";
            visible: false;
        }
        ListElement {
            text: "H33";
            visible: false
        }
        ListElement {
            text: "H33,5";
            visible: false;
        }
        ListElement {
            text: "H34";
            visible: false
        }
        ListElement {
            text: "H34,5";
            visible: false;
        }
        ListElement {
            text: "H35";
            visible: false
        }
        ListElement {
            text: "H35,5";
            visible: false;
        }
        ListElement {
            text: "H36";
            visible: false
        }
        ListElement {
            text: "H36,5";
            visible: false;
        }
        ListElement {
            text: "H37";
            visible: false
        }
        ListElement {
            text: "H37,5";
            visible: false;
        }
        ListElement {
            text: "H38";
            visible: false
        }
        ListElement {
            text: "H38,5";
            visible: false;
        }
        ListElement {
            text: "H39";
            visible: false
        }
        ListElement {
            text: "H39,5";
            visible: false;
        }
        ListElement {
            text: "H40";
            visible: false
        }
        ListElement {
            text: "H40,5";
            visible: false;
        }
        ListElement {
            text: "H41";
            visible: false
        }
        ListElement {
            text: "H41,5";
            visible: false;
        }
        ListElement {
            text: "H42";
            visible: false
        }
        ListElement {
            text: "H42,5";
            visible: false;
        }
        ListElement {
            text: "H43";
            visible: false
        }
        ListElement {
            text: "H43,5";
            visible: false;
        }
        ListElement {
            text: "H44";
            visible: false
        }
        ListElement {
            text: "H44,5";
            visible: false;
        }
        ListElement {
            text: "H45";
            visible: false
        }
        ListElement {
            text: "H45,5";
            visible: false
        }
        ListElement {
            text: "H46";
            visible: false
        }
        ListElement {
            text: "H46,5";
            visible: false
        }
        ListElement {
            text: "H47";
            visible: false
        }
        ListElement {
            text: "H47,5";
            visible: false
        }
        ListElement {
            text: "H48";
            visible: false
        }
        ListElement {
            text: "H48,5";
            visible: false
        }
        ListElement {
            text: "H49";
            visible: false
        }
        ListElement {
            text: "H49,5";
            visible: false
        }


    }

    function refreshVisibleItemsModel3() {
        visibleItemsModel3.clear();
        for (var i = 0; i < myModel3.count; ++i) {
            if (myModel3.get(i).visible)
                visibleItemsModel3.append(myModel3.get(i));
        }
    }

    // Create a separate model to store visible items
    ListModel {
        id: visibleItemsModel3
    }

    // Function to handle item visibility changes
    function setItemVisibility3(index, visibility) {
        myModel3.setProperty(index, "visible", visibility);
        refreshVisibleItemsModel3();
    }





    ListModel {
        id: myModel4
        ListElement {
            text: "dört"
            visible: false
        }
        ListElement {
            text: "H0,5"
            visible: false
        }
        ListElement {
            text: "H1"
            visible: false
        }
        ListElement {
            text: "H1,5"
            visible: false
        }
        ListElement {
            text: "H2"
            visible: false
        }
        ListElement {
            text: "H2,5"
            visible: false
        }
        ListElement {
            text: "H3";
            visible: false
        }
        ListElement {
            text: "H3,5"
            visible: false
        }
        ListElement {
            text: "H4";
            visible: false
        }
        ListElement {
            text: "H4,5";
            visible: false;
        }
        ListElement {
            text: "H5";
            visible: false
        }
        ListElement {
            text: "H5,5";
            visible: false;
        }
        ListElement {
            text: "H6";
            visible: false
        }
        ListElement {
            text: "H6,5";
            visible: false;
        }
        ListElement {
            text: "H7";
            visible: false
        }
        ListElement {
            text: "H7,5";
            visible: false;
        }
        ListElement {
            text: "H8";
            visible: false
        }
        ListElement {
            text: "H8,5";
            visible: false;
        }
        ListElement {
            text: "H9";
            visible: false
        }
        ListElement {
            text: "H9,5";
            visible: false;
        }
        ListElement {
            text: "H10";
            visible: false
        }
        ListElement {
            text: "H10,5";
            visible: false;
        }
        ListElement {
            text: "H11";
            visible: false
        }
        ListElement {
            text: "H11,5";
            visible: false;
        }
        ListElement {
            text: "H12";
            visible: false
        }
        ListElement {
            text: "H12,5";
            visible: false;
        }
        ListElement {
            text: "H13";
            visible: false
        }
        ListElement {
            text: "H13,5";
            visible: false;
        }
        ListElement {
            text: "H14";
            visible: false
        }
        ListElement {
            text: "H14,5";
            visible: false;
        }
        ListElement {
            text: "H15";
            visible: false
        }
        ListElement {
            text: "H15,5";
            visible: false;
        }
        ListElement {
            text: "H16";
            visible: false
        }
        ListElement {
            text: "H16,5";
            visible: false;
        }
        ListElement {
            text: "H17";
            visible: false
        }
        ListElement {
            text: "H17,5";
            visible: false;
        }
        ListElement {
            text: "H18";
            visible: false
        }
        ListElement {
            text: "H18,5";
            visible: false;
        }
        ListElement {
            text: "H19";
            visible: false
        }
        ListElement {
            text: "H19,5";
            visible: false;
        }
        ListElement {
            text: "H20";
            visible: false
        }
        ListElement {
            text: "H20,5";
            visible: false;
        }
        ListElement {
            text: "H21";
            visible: false
        }
        ListElement {
            text: "H21,5";
            visible: false;
        }
        ListElement {
            text: "H22";
            visible: false
        }
        ListElement {
            text: "H22,5";
            visible: false;
        }
        ListElement {
            text: "H23";
            visible: false
        }
        ListElement {
            text: "H23,5";
            visible: false;
        }
        ListElement {
            text: "H24";
            visible: false
        }
        ListElement {
            text: "H24,5";
            visible: false;
        }
        ListElement {
            text: "H25";
            visible: false
        }
        ListElement {
            text: "H25,5";
            visible: false;
        }
        ListElement {
            text: "H26";
            visible: false
        }
        ListElement {
            text: "H26,5";
            visible: false;
        }
        ListElement {
            text: "H27";
            visible: false
        }
        ListElement {
            text: "H27,5";
            visible: false;
        }
        ListElement {
            text: "H28";
            visible: false
        }
        ListElement {
            text: "H28,5";
            visible: false;
        }
        ListElement {
            text: "H29";
            visible: false
        }
        ListElement {
            text: "H29,5";
            visible: false;
        }
        ListElement {
            text: "H30";
            visible: false
        }
        ListElement {
            text: "H30,5";
            visible: false;
        }
        ListElement {
            text: "H31";
            visible: false
        }
        ListElement {
            text: "H31,5";
            visible: false;
        }
        ListElement {
            text: "H32";
            visible: false
        }
        ListElement {
            text: "H32,5";
            visible: false;
        }
        ListElement {
            text: "H33";
            visible: false
        }
        ListElement {
            text: "H33,5";
            visible: false;
        }
        ListElement {
            text: "H34";
            visible: false
        }
        ListElement {
            text: "H34,5";
            visible: false;
        }
        ListElement {
            text: "H35";
            visible: false
        }
        ListElement {
            text: "H35,5";
            visible: false;
        }
        ListElement {
            text: "H36";
            visible: false
        }
        ListElement {
            text: "H36,5";
            visible: false;
        }
        ListElement {
            text: "H37";
            visible: false
        }
        ListElement {
            text: "H37,5";
            visible: false;
        }
        ListElement {
            text: "H38";
            visible: false
        }
        ListElement {
            text: "H38,5";
            visible: false;
        }
        ListElement {
            text: "H39";
            visible: false
        }
        ListElement {
            text: "H39,5";
            visible: false;
        }
        ListElement {
            text: "H40";
            visible: false
        }
        ListElement {
            text: "H40,5";
            visible: false;
        }
        ListElement {
            text: "H41";
            visible: false
        }
        ListElement {
            text: "H41,5";
            visible: false;
        }
        ListElement {
            text: "H42";
            visible: false
        }
        ListElement {
            text: "H42,5";
            visible: false;
        }
        ListElement {
            text: "H43";
            visible: false
        }
        ListElement {
            text: "H43,5";
            visible: false;
        }
        ListElement {
            text: "H44";
            visible: false
        }
        ListElement {
            text: "H44,5";
            visible: false;
        }
        ListElement {
            text: "H45";
            visible: false
        }
        ListElement {
            text: "H45,5";
            visible: false
        }
        ListElement {
            text: "H46";
            visible: false
        }
        ListElement {
            text: "H46,5";
            visible: false
        }
        ListElement {
            text: "H47";
            visible: false
        }
        ListElement {
            text: "H47,5";
            visible: false
        }
        ListElement {
            text: "H48";
            visible: false
        }
        ListElement {
            text: "H48,5";
            visible: false
        }
        ListElement {
            text: "H49";
            visible: false
        }
        ListElement {
            text: "H49,5";
            visible: false
        }


    }

    function refreshVisibleItemsModel4() {
        visibleItemsModel4.clear();
        for (var i = 0; i < myModel4.count; ++i) {
            if (myModel4.get(i).visible)
                visibleItemsModel4.append(myModel4.get(i));
        }
    }

    // Create a separate model to store visible items
    ListModel {
        id: visibleItemsModel4000000
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
                    text: qsTr("Disk 2")
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
    }

    Image {
        id: bGForHeader37
        x: 12
        y: 422
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        Text {
            x: 0
            y: 54
            width: 157
            height: 47
            color: "#284863"
            text: qsTr("None")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Rectangle {
            id:none1
            x: 9
            y: 0
            width: 47
            height: 47
            color: "#617284"
            radius: 23.5
            anchors.horizontalCenterOffset: -1


            MouseArea {
                x: -54
                y: -10
                width: 158
                height: 101

            }

            anchors.verticalCenterOffset: -18
            anchors.centerIn: parent
        }

        Text {
            x: -1
            y: 9
            width: 157
            height: 47
            color: "#ffffff"
            text: qsTr("X")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }
        sourceSize.width: 315
        fillMode: Image.Tile
        sourceSize.height: 202
    }

    Image {
        id: bGForHeader38
        x: 177
        y: 422
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        Text {
            x: 0
            y: 54
            width: 157
            height: 47
            color: "#284863"
            text: qsTr("None")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Rectangle {
            id:none2
            x: 9
            y: 0
            width: 47
            height: 47
            color: "#617284"
            radius: 23.5
            anchors.horizontalCenterOffset: -1


            MouseArea {
                x: -54
                y: -10
                width: 158
                height: 101
            }
            anchors.verticalCenterOffset: -18
            anchors.centerIn: parent
        }

        Text {
            x: -1
            y: 9
            width: 157
            height: 47
            color: "#ffffff"
            text: qsTr("X")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }
        sourceSize.width: 315
        fillMode: Image.Tile
        sourceSize.height: 202
    }

    Image {
        id: bGForHeader36
        x: 177
        y: 314
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        Text {
            x: 0
            y: 54
            width: 157
            height: 47
            color: "#284863"
            text: qsTr("Jump to Details")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Rectangle {
            id:rectangle12
            x: 9
            y: 0
            width: 47
            height: 47
            color: "#617284"
            radius: 23.5
            anchors.horizontalCenterOffset: -1
            Behavior {
                NumberAnimation {
                    duration: 50
                }
            }

            Image {
                x: 11
                y: 3
                width: 63/2
                source: "images/Group 9762.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            MouseArea {
                id: mouseArea6
                x: -54
                y: -10
                width: 158
                height: 101
                onPressedChanged: {
                            if (pressed) {
                                rectangle8.x=bGForHeader36.x
                                rectangle8.y=bGForHeader36.y
                                rect8anim.start()
                                rectangle12.color = "#217EFD"
                            } else {

                                rectangle12.color = "#617284"
                            }
                        }
            }
            scale: mouseArea6.containsMouse ? 0.95 : 1.0
            anchors.verticalCenterOffset: -18
            anchors.centerIn: parent
        }
        sourceSize.width: 315
        fillMode: Image.Tile
        sourceSize.height: 202
    }




    // Function to handle item visibility changes
    function setItemVisibility4(index, visibility) {
        myModel4.setProperty(index, "visible", visibility);
        refreshVisibleItemsModel4();
    }

}



