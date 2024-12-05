import QtQuick.Controls 2.15
import QtQuick 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtQuick.Shapes 1.0
import QtQuick.Layouts 1.10
import QtQuick.Timeline 1.0
import QtCharts 2.3



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
        id: menu
        x: 0
        y: 0
        width: 696/2
        source: "images/Menu.svg"
        fillMode: Image.PreserveAspectFit

        CustomButtonHeaderBlackBG{
            x:12
            y:555
            width:320
            height:121
            clip: true


            RectangleItem {
                id: rectangle7
                x: 16
                y: 17
                width: 275/2
                height: 175/2
                radius: 0
                fillColor: "#738395"
                strokeWidth: -1

                MouseArea {
                    id: mouseArea1
                    x: -15
                    y: -17
                    width: 159
                    height: 120
                    onClicked: {
                        rectangle7.fillColor="#217EFD"
                        rectangle9.fillColor="#738395"
                        memoryTypeText.text="USB"


                    }
                }

                Image {
                    id: scan1
                    x: 27
                    y: 27
                    width: 60/2
                    source: "images/Scan.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    x: 67
                    y: 20
                    width: 70
                    height: 47
                    color: "#ffffff"
                    text: qsTr("USB")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }

            RectangleItem {
                id: rectangle9
                x: 167
                y: 18
                width: 275/2
                height: 175/2
                radius: 0
                strokeWidth: -1
                fillColor: "#217efd"
                MouseArea {
                    x: -6
                    y: -18
                    width: 159
                    height: 121
                    onClicked: {
                        rectangle9.fillColor="#217EFD"
                        rectangle7.fillColor="#738395"
                        memoryTypeText.text="SD CARD"

                    }
                }

                Text {
                    x: 53
                    y: 20
                    width: 81
                    height: 47
                    color: "#ffffff"
                    text: qsTr("MEMORY CARD")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

                Image {
                    id: arhive
                    x: 16
                    y: 27
                    width: 74/2
                    source: "images/Arhive.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
            }



        }
        Image {
            id: bGForHeader1
            x: 12
            y: 60
            width: 646/2
            height: 54
            source: "images/BGForHeader.svg"
            Text {
                x: 8
                y: 5
                width: 225
                height: 47
                color: "#284863"
                text: qsTr("Change Disk Name")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 173
                y: 8
                width: 144
                height: 41
                color: "#ffffff"
                radius: 20.5
                border.color: "#d9d9d9"
                TextInput {
                    x: 15
                    y: 0
                    width: 129
                    height: 41
                    color: "#284863"
                    text: qsTr("Disk 2")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                }
            }
            fillMode: Image.Stretch
        }

        Image {
            id: bGForHeader2
            x: 273
            y: 138
            width: 62
            height: 38
            source: "images/BGForHeader.svg"
            sourceSize.height: 77
            sourceSize.width: 135
            fillMode: Image.Stretch
            Image {
                id: on_button_fill
                x: 5
                y: 8
                width: 44/2
                source: "images/On_button_fill.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }



            Image {
                id: on_button_fill2
                x: 35
                y: 8
                source: "images/On_button_fill-2.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
                width: 44/2
            }

            Image {
                id: on_button_fill1
                x: 35
                y: 8
                source: "images/On_button_fill-1.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
                width: 44/2
                visible: false
            }

            MouseArea {
                id: mouseAreaRemoveUSBSafety
                x: -149
                y: 0
                width: 211
                height: 38
                onClicked: {
                    if(on_button_fill.visible===true){
                        on_button_fill.visible=false
                        on_button_fill1.visible=true
                        on_button_fill2.x=5
                    }
                    else{
                        on_button_fill.visible=true
                        on_button_fill1.visible=false
                        on_button_fill2.x=35
                    }
                }
            }
        }

        Image {
            id: bGForHeader3
            x: 12
            y: 198
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
                text: qsTr("Create New File")
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
                    source: "images/File_dock_add.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                NumberAnimation {
                    id:rect8anim
                    target: rectangle8
                    property: "visible"
                    duration: 50
                    to:1
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
                            rectangle8.visible=false
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
            y: 198
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
                text: qsTr("Create New File")
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
                            rectangle8.visible=false
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
            y: 306
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
                text: qsTr("Create New File")
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
                            rectangle8.visible=false
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
            y: 306
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
                text: qsTr("Create New File")
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
                            rectangle8.visible=false
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
            y: 414
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
                text: qsTr("Create New File")
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
                    source: "images/Paper.svg"
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
                            rectangle8.visible=false
                            goToEvent.color = "#617284"
                        }
                    }
                }






            }

        }

        RectangleItem {
            id: rectangle8
            x: 11
            y: 198
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
            x: 13
            y: 5
            width: 100
            height: 47
            color: "#284863"
            text: qsTr("SD CARD")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        Text {
            id: customHarmonics2
            x: 20
            y: 125
            width: 172
            height: 63
            color: "#284863"
            text: qsTr("Remove USB Safety")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }



    }































    Image {
        id: menu1
        x: 913
        y: 0
        width: 734/2
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
        color: "#ffffff"
        border.color: "#dce8ef"

        Image {
            id: bGForSearch
            x: 13
            y: 15
            width: 372
            height: 56
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
                    width: 346
                    height: 41
                    color: "#284863"
                    text: qsTr("Disk 2")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    onActiveFocusChanged: {
                        if (activeFocus) { // TextInput'e odaklandığında
                            clickedSearch.start()
                            search.source="images/returnToBack.svg"
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
                            to:310
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
                           onClicked: {
                               search.x = 600
                               searchTextInput.activeFocus = false // TextInput odaklamasını kaldır
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
        }
    }

    // Function to handle item visibility changes
    function setItemVisibility4(index, visibility) {
        myModel4.setProperty(index, "visible", visibility);
        refreshVisibleItemsModel4();
    }























































}




