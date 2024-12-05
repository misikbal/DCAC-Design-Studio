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
    color: "#f7f8fa"
    border.color: "#f7f8fa"
    property int animationDurationForHarmoncis: 2000
    property int animationsForHarmonicClickedCircleOpen:500
    property var history: []

    property alias textForTest: textForTest

    property bool forNoHead: true
    property bool forFileNameHead: true
    property bool forRecordTimeHead: true
    property bool forTypeHead: true
    property bool forSizeHead: true

    property var currentDate: new Date()
    property var textForNoArray: []
    property int totalSize: 0
    property var redoHistory: []

    property real totalValue: 0
    property var unitLabels: ["kbps", "Mbps", "Gbps"]
    property int unitIndex: 0
    property real totalValue2: 0
    property var unitLabels2: ["kbps", "Mbps", "Gbps"]
    property int unitIndex2: 0
    property real amplitude: 1
    property real period: 1
    property real xMultiplier: 1

    property real totalValue1: 0
    property var unitLabels1: ["kbps", "Mbps", "Gbps"]
    property int unitIndex1: 0
    property real totalValue21: 0
    property var unitLabels21: ["kbps", "Mbps", "Gbps"]
    property int unitIndex21: 0
    property real amplitude1: 1
    property real period1: 1
    property real xMultiplier1: 1


    property real totalValue122: 0
    property var unitLabels122: ["kbps", "Mbps", "Gbps"]
    property int unitIndex122: 0
    property real totalValue2122: 0
    property var unitLabels2122: ["kbps", "Mbps", "Gbps"]
    property int unitIndex2122: 0
    property real amplitude122: 1
    property real period122: 1
    property real xMultiplier122: 1



    Component.onCompleted: {
        //        checkbox1.checkBoxOFF.source="images/CheckBoxONBG.svg"
        //        checkbox1.checkBoxOn.visible=true
    }

    ButtonGroup {
        id: radioButtonGroup
    }

    Image {
        id: menu
        x: 0
        y: 0
        width: 696/2
        source: "images/Menu.svg"
        fillMode: Image.PreserveAspectFit



        Rectangle {
            id: rectangleForUSB
            x: 12
            y: 94
            width: 323
            height: 634
            visible: false
            color: "#f7f8fa"

            Image {
                id: connected
                x: 8
                y: 423
                width: 614/2
                source: "images/Connected.svg"
                fillMode: Image.PreserveAspectFit
                MouseArea{
                    width: parent.width
                    height: parent.height
                    onClicked: {
                        if(infoText.text==="Please be sure your device settings matching with your computer settings."){
                            connected.source= "images/Disconnected.svg"
                            infoText.text="Connected."
                            timerForGraph1.start()
                            receiveDataTimer1.repeat=true
                            receiveDataTimer1.start()
                            sendDataTimer1.repeat=true
                            sendDataTimer1.start()
                            forUSB.source="images/ConnectUSB.png"
                        }
                        else if(infoText.text==="Connected."){
                            connected.source= "images/Connected.svg"
                            infoText.text="Please be sure your device settings matching with your computer settings."

                            canvas1.requestPaint();
                            timerForGraph1.stop()
                            forUSB.source="images/notConnectUSB.png"

                            amplitude1 = 0
                            receiveDataTimer1.repeat=false
                            receiveDataTimer1.stop()
                            sendDataTimer1.repeat=false
                            sendDataTimer1.stop()
                            sendData1.text = 0 + " kbps";
                            receiveData1.text = 0 + " kbps";
                        }
                    }
                }
            }

            Switch {
                id: switch6
                x: -4
                y: 280
                width: 324
                height: 32
                rightPadding: -237
            }
            Text {
                x: 8
                y: 50
                width: 190
                height: 30
                color: "#284863"
                text: "Device"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 8
                y: 8
                width: 239
                height: 30
                color: "#284863"
                text: "USB Connection Settings"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.bold: true
                clip: true
            }

            Text {
                x: 8
                y: 94
                width: 190
                height: 30
                color: "#284863"
                text: "Bound Rate"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 8
                y: 138
                width: 190
                height: 30
                color: "#284863"
                text: "Data Bits"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 8
                y: 182
                width: 190
                height: 30
                color: "#284863"
                text: "Stop Bits"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 8
                y: 226
                width: 190
                height: 30
                color: "#284863"
                text: "Flow Control"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 8
                y: 338
                width: 190
                height: 30
                color: "#284863"
                text: "Live Connection"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 8
                y: 376
                width: 190
                height: 30
                color: "#284863"
                text: "Data Transfer"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                clip: true
            }

            Switch {
                id: switch7
                x: -4
                y: 337
                width: 324
                height: 32
                rightPadding: -237
            }

            Switch {
                id: switch8
                x: -4
                y: 375
                width: 324
                height: 32
                rightPadding: -237
            }

            Text {
                x: 8
                y: 281
                width: 190
                height: 30
                color: "#284863"
                text: "Save As Default"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                clip: true
            }




            Rectangle {
                id: rectangle126
                x: 149
                y: 218
                width: 161
                height: 40
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
                Image {
                    id: okUp03
                    x: 139
                    y: 16
                    width: 14
                    source: "images/okUp22.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Text {
                    id: chosenText03
                    color: "#284863"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 17
                    anchors.leftMargin: 5
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {

                        if(okUp03.rotation===180)
                        {
                            okUp03.rotation=0
                            backgroundList26.visible=false
                            listView26.visible=false
                            elementText03.visible=false
                        }
                        else
                        {
                            okUp03.rotation=180
                            backgroundList26.visible=true
                            listView26.visible=true
                            elementText03.visible=false
                        }
                    }
                    anchors.topMargin: -5
                    anchors.rightMargin: -1
                    anchors.leftMargin: -5
                    anchors.bottomMargin: -5
                }

                Text {
                    id: elementText03
                    x: 5
                    y: 0
                    width: 156
                    height: 40
                    color: "#d4d4d4"
                    text: qsTr("Xon/Xoff")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }


            Rectangle {
                id: backgroundList26
                x: 150
                y: 259
                width: rectangle122.width
                height: 175
                visible: false
            }


            ListView {
                id: listView26
                x: 149
                y: 259
                width: rectangle122.width
                height: backgroundList22.height
                visible: false
                clip: true
                delegate: Item {
                    width: listView26.width
                    height: 60
                    Rectangle {
                        width: parent.width
                        height: 50
                        color: "#eff2f6"
                        Text {
                            text: model.name
                            anchors.centerIn: parent
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                chosenText03.text = model.name
                                chosenText27.text = model.name
                            }
                        }
                    }
                }
                model: ListModel {
                    ListElement {
                        name: "Xon/Xoff"
                    }

                    ListElement {
                        name: "Hardware"
                    }
                    ListElement {
                        name: "None"
                    }

                }
            }


            Rectangle {
                id: rectangle125
                x: 149
                y: 174
                width: 161
                height: 40
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
                Image {
                    id: okUp02
                    x: 139
                    y: 16
                    width: 14
                    source: "images/okUp22.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Text {
                    id: chosenText02
                    color: "#284863"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 17
                    anchors.leftMargin: 5
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {

                        if(okUp02.rotation===180)
                        {
                            okUp02.rotation=0
                            backgroundList25.visible=false
                            listView25.visible=false
                            elementText02.visible=false
                        }
                        else
                        {
                            okUp02.rotation=180
                            backgroundList25.visible=true
                            listView25.visible=true
                            elementText02.visible=false
                        }
                    }
                    anchors.topMargin: -5
                    anchors.rightMargin: -1
                    anchors.leftMargin: -5
                    anchors.bottomMargin: -5
                }

                Text {
                    id: elementText02
                    x: 5
                    y: 0
                    width: 156
                    height: 40
                    color: "#d4d4d4"
                    text: qsTr("2")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }


            Rectangle {
                id: backgroundList25
                x: 150
                y: 215
                width: rectangle122.width
                height: 175
                visible: false
            }


            ListView {
                id: listView25
                x: 149
                y: 215
                width: rectangle122.width
                height: backgroundList22.height
                visible: false
                clip: true
                delegate: Item {
                    width: listView25.width
                    height: 60
                    Rectangle {
                        width: parent.width
                        height: 50
                        color: "#eff2f6"
                        Text {
                            text: model.name
                            anchors.centerIn: parent
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                chosenText02.text = model.name
                                chosenText26.text = model.name
                            }
                        }
                    }
                }
                model: ListModel {
                    ListElement {
                        name: "1"
                    }

                    ListElement {
                        name: "1.5"
                    }
                    ListElement {
                        name: "2"
                    }
                }
            }


            Rectangle {
                id: rectangle124
                x: 149
                y: 130
                width: 161
                height: 40
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
                Image {
                    id: okUp01
                    x: 139
                    y: 16
                    width: 14
                    source: "images/okUp22.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Text {
                    id: chosenText01
                    color: "#284863"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 17
                    anchors.leftMargin: 5
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {

                        if(okUp01.rotation===180)
                        {
                            okUp01.rotation=0
                            backgroundList24.visible=false
                            listView24.visible=false
                            elementText01.visible=false
                        }
                        else
                        {
                            okUp01.rotation=180
                            backgroundList24.visible=true
                            listView24.visible=true
                            elementText01.visible=false
                        }
                    }
                    anchors.topMargin: -5
                    anchors.rightMargin: -1
                    anchors.leftMargin: -5
                    anchors.bottomMargin: -5
                }

                Text {
                    id: elementText01
                    x: 5
                    y: 0
                    width: 156
                    height: 40
                    color: "#d4d4d4"
                    text: qsTr("7")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }


            Rectangle {
                id: backgroundList24
                x: 150
                y: 171
                width: rectangle122.width
                height: 175
                visible: false
            }


            ListView {
                id: listView24
                x: 149
                y: 171
                width: rectangle122.width
                height: backgroundList22.height
                visible: false
                clip: true
                delegate: Item {
                    width: listView24.width
                    height: 60
                    Rectangle {
                        width: parent.width
                        height: 50
                        color: "#eff2f6"
                        Text {
                            text: model.name
                            anchors.centerIn: parent
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                chosenText01.text = model.name
                                chosenText25.text = model.name
                            }
                        }
                    }
                }
                model: ListModel {
                    ListElement {
                        name: "5"
                    }
                    ListElement {
                        name: "6"
                    }
                    ListElement {
                        name: "7"
                    }

                    ListElement {
                        name: "8"
                    }
                }
            }


            Rectangle {
                id: rectangle123
                x: 149
                y: 86
                width: 161
                height: 40
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
                Image {
                    id: okUp12
                    x: 139
                    y: 16
                    width: 14
                    source: "images/okUp22.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Text {
                    id: chosenText12
                    color: "#284863"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 17
                    anchors.leftMargin: 5
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {

                        if(okUp12.rotation===180)
                        {
                            okUp12.rotation=0
                            backgroundList23.visible=false
                            listView23.visible=false
                            elementText12.visible=false
                        }
                        else
                        {
                            okUp12.rotation=180
                            backgroundList23.visible=true
                            listView23.visible=true
                            elementText12.visible=false
                        }
                    }
                    anchors.topMargin: -5
                    anchors.rightMargin: -1
                    anchors.leftMargin: -5
                    anchors.bottomMargin: -5
                }

                Text {
                    id: elementText12
                    x: 5
                    y: 0
                    width: 156
                    height: 40
                    color: "#d4d4d4"
                    text: qsTr("115200")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }





            Rectangle {
                id: backgroundList23
                x: 150
                y: 127
                width: rectangle122.width
                height: 175
                visible: false
            }





            ListView {
                id: listView23
                x: 149
                y: 127
                width: rectangle122.width
                height: backgroundList22.height
                visible: false
                clip: true
                delegate: Item {
                    width: listView23.width
                    height: 60
                    Rectangle {
                        width: parent.width
                        height: 50
                        color: "#eff2f6"
                        Text {
                            text: model.name
                            anchors.centerIn: parent
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                chosenText12.text = model.name
                                chosenText24.text = model.name
                            }
                        }
                    }
                }
                model: ListModel {
                    ListElement {
                        name: "110"
                    }
                    ListElement {
                        name: "300"
                    }
                    ListElement {
                        name: "600"
                    }
                    ListElement {
                        name: "1200"
                    }
                    ListElement {
                        name: "2400"
                    }
                    ListElement {
                        name: "4800"
                    }
                    ListElement {
                        name: "9600"
                    }
                    ListElement {
                        name: "14400"
                    }
                    ListElement {
                        name: "19200"
                    }


                    ListElement {
                        name: "38400"
                    }

                    ListElement {
                        name: "56000"
                    }
                    ListElement {
                        name: "57600"
                    }
                    ListElement {
                        name: "76800"
                    }
                    ListElement {
                        name: "115200"
                    }
                    ListElement {
                        name: "128000"
                    }


                    ListElement {
                        name: "230400"
                    }

                    ListElement {
                        name: "256000"
                    }

                }
            }





            Rectangle {
                id: rectangle122
                x: 149
                y: 42
                width: 161
                height: 40
                border.color: "#d9d9d9"
                border.width: 1
                color: "#ffffff"


                Image {
                    id: okUp22
                    x: 139
                    y: 16
                    width: 14
                    source: "images/okUp22.svg"
                    rotation: 0
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: chosenText22
                    color: "#284863"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 17
                    anchors.leftMargin: 5


                }


                MouseArea {
                    anchors.fill: parent
                    anchors.rightMargin: -1
                    anchors.leftMargin: -5
                    anchors.bottomMargin: -5
                    anchors.topMargin: -5
                    onClicked: {

                        if(okUp22.rotation===180)
                        {
                            okUp22.rotation=0
                            backgroundList22.visible=false
                            listView22.visible=false

                            elementText22.visible=false
                        }
                        else
                        {
                            okUp22.rotation=180
                            backgroundList22.visible=true
                            listView22.visible=true


                            elementText22.visible=false
                        }
                    }
                }


                Text {
                    id: elementText22
                    x: 5
                    y: 0
                    width: 156
                    height: 40
                    color: "#d4d4d4"
                    text: qsTr("USB1")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

            }


            Rectangle {
                id: backgroundList22
                x: 150
                y: 83
                width: rectangle122.width
                height: 175
                visible: false
            }


            ListView {
                id: listView22
                x: 149
                y: 83
                width: rectangle122.width
                height: backgroundList22.height
                visible: false
                clip: true
                delegate: Item {
                    width: listView22.width
                    height: 60
                    Rectangle {
                        width: parent.width
                        height: 50
                        color: "#eff2f6"
                        Text {
                            text: model.name
                            anchors.centerIn: parent
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                chosenText22.text = model.name
                                chosenText23.text = model.name

                            }
                        }
                    }
                }
                model: ListModel {
                    ListElement {
                        name: "USB1"
                    }

                    ListElement {
                        name: "USB2"
                    }

                    ListElement {
                        name: "USB3"
                    }


                }
            }

            Text {
                id: label1
                x: 816
                y: -219
                width: 204
                height: 35
                color: "#284863"
                text:  "Voltage - Max"
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }





            Rectangle {
                id: rectangle16
                x: 0
                y: 493
                width: 323
                height: 125
                color: "#f7f8fa"
                border.color: "#adb1b4"
                Text {
                    x: 8
                    y: 0
                    width: 150
                    height: 40
                    color: "#284863"
                    text: qsTr("Info")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Bold"
                }

                Text {
                    id:infoText
                    x: 8
                    y: 40
                    width: 315
                    height: 74
                    color: "#284863"
                    text: qsTr("Please be sure your device settings matching with your computer settings.")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }
            }



        }

        CustomButtonHeaderBlackBG{
            id: customButtonHeaderBlackBG
            x:12
            y:8
            width:648/2
            height:160/2
            clip: true


            RectangleItem {
                id: rectangle7
                width: 104/2
                height: 150/2
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
                        rectangle11.fillColor="#738395"
                        rectangleForWifi.visible=false
                        rectangleForWifiRight.visible=false

                        rectangleForUSB.visible=true
                        rectangleForUSBRight.visible=true

                        rectangleForBluetooth.visible=false
                        rectangleForBLuetoothRight.visible=false
                    }
                }

                Image {
                    id: scan1
                    x: 11
                    width: 60/2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/Scan.svg"
                    anchors.verticalCenterOffset: -16
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    y: 33
                    width: 52
                    height: 42
                    color: "#ffffff"
                    text: qsTr("USB")
                    anchors.left: parent.left
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.leftMargin: 0
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }

            RectangleItem {
                id: rectangle9
                x: 58
                y: 2
                width: 229/2
                height: 150/2
                radius: 0
                strokeWidth: -1
                fillColor: "#217EFD"
                Image {
                    id: wifisolid
                    x: 20
                    y: 8
                    width: 56/2
                    source: "images/wifi-solid.svg"
                    fillMode: Image.PreserveAspectFit
                }
                MouseArea {
                    x: 0
                    y: 0
                    width: rectangle9.width
                    height: rectangle9.height
                    onClicked: {
                        rectangle9.fillColor="#217EFD"
                        rectangle7.fillColor="#738395"
                        rectangle10.fillColor="#738395"
                        rectangle11.fillColor="#738395"

                        rectangleForWifi.visible=true
                        rectangleForWifiRight.visible=true

                        rectangleForUSB.visible=false
                        rectangleForUSBRight.visible=false

                        rectangleForBluetooth.visible=false
                        rectangleForBLuetoothRight.visible=false




                    }
                }

                Text {
                    x: 0
                    y: 33
                    width: 115
                    height: 42
                    color: "#ffffff"
                    text: qsTr("Wifi / Ethernet")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

                Image {
                    id: ethernet
                    x: 67
                    y: 10
                    width: 52/2
                    source: "images/Ethernet.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    x: 0
                    y: 2
                    width: 115
                    height: 42
                    color: "#ffffff"
                    text: qsTr("/")
                    font.letterSpacing: -2
                    font.pixelSize: 26
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }

            RectangleItem {
                id: rectangle10
                x: 176
                y: 2
                width: 140/2
                height: 150/2
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
                        rectangle11.fillColor="#738395"
                    }

                    Image {
                        id: externalcable
                        x: 15
                        y: 2
                        width: 80/2
                        source: "images/Externalcable.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Text {
                    x: 0
                    y: 33
                    width: 70
                    height: 42
                    color: "#ffffff"
                    text: qsTr("External")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }

            RectangleItem {
                id: rectangle11
                x: 249
                y: 2
                width: 146/2
                height: 150/2
                radius: 0
                fillColor: "#738395"
                MouseArea {
                    x: 0
                    y: 0
                    width: rectangle11.width
                    height: rectangle11.height
                    onClicked: {
                        rectangle11.fillColor="#217EFD"
                        rectangle7.fillColor="#738395"
                        rectangle9.fillColor="#738395"
                        rectangle10.fillColor="#738395"

                        rectangleForUSBRight.visible=false
                        rectangleForUSB.visible=false
                        rectangleForWifiRight.visible=false
                        rectangleForWifi.visible=false

                        rectangleForBluetooth.visible=true
                        rectangleForBLuetoothRight.visible=true


                    }
                }

                Text {
                    x: 0
                    y: 33
                    width: 72
                    height: 42
                    color: "#ffffff"
                    text: qsTr("Bluetooth")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
                strokeWidth: -1
            }

            Image {
                id: bluetoothline
                x: 272
                y: 13
                width: 55/2
                source: "images/bluetooth-line.svg"
                fillMode: Image.PreserveAspectFit
            }
        }



        Rectangle {
            id: rectangleForBluetooth
            x: 0
            y: 87
            width: 348
            height: 641
            visible: false
            color: "#00ffffff"


            Rectangle {
                id: rectangle161
                x: 12
                y: 500
                width: 323
                height: 125
                color: "#f7f8fa"
                border.color: "#adb1b4"
                Text {
                    x: 8
                    y: 0
                    width: 150
                    height: 40
                    color: "#284863"
                    text: qsTr("Info")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Bold"
                }

                Text {
                    id:infoText1
                    x: 8
                    y: 40
                    width: 315
                    height: 74
                    color: "#284863"
                    text: qsTr("Please select the device you want to connect to.")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }
            }

            Rectangle {
                x: 12
                y: 57
                width: 325
                height: 190
                visible: true
                color: "#f7f8fa"
                Rectangle {
                    id:rectangleForDevices
                    x: 0
                    y: 0
                    width: 325
                    height: 190
                    visible: false
                    color: "#f7f8fa"

                    Text {
                        id:text7711
                        x: 9
                        y: 153
                        width: 213
                        height: 30
                        color: "#284863"
                        text: "Automatic Connection"
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        clip: true
                    }

                    Switch {
                        id: switch111
                        x: 0
                        y: 152
                        width: 324
                        height: 32
                        rightPadding: -237
                        onCheckedChanged: {
                            if(switch111.checked){


                            }
                            else {



                            }
                        }
                    }

                    Flickable {
                        id: flickable22
                        x: 0
                        y: 2
                        width: 325
                        height: 144
                        contentY: 0
                        clip: true
                        flickDeceleration: 3000
                        maximumFlickVelocity: 5000
                        contentHeight: 200
                        visible: true




                        ScrollBar.vertical: ScrollBar {
                            x: 355
                            width: 10
                            height: 650
                            policy: ScrollBar.AlwaysOn
                            size: flickable22.height / flickable22.contentHeight
                            //                position: flickable.contentY / flickable.contentHeight
                            position:0
                            contentItem: Rectangle {
                                implicitHeight: parent.height / 2
                                implicitWidth: parent.width
                                color: "gray"
                                radius: 5
                            }
                        }

                        CustomCheckBox{
                            id:checkbox11
                            x:44
                            y:2
                            width: 286
                            height: 33
                            onClickedSignal:{

                                checkbox21.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox21.checkBoxOn.visible=false
                                checkbox31.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox31.checkBoxOn.visible=false
                                checkbox41.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox41.checkBoxOn.visible=false
                                infoText1.text="A new device has been selected."

                                if(switch114.checked===true){
                                    name3.text="Device1"
                                    name2.text="Well"
                                    timerForGraph122.start()
                                    receiveDataTimer122.repeat=true
                                    receiveDataTimer122.start()
                                    sendDataTimer122.repeat=true
                                    sendDataTimer122.start()
                                    forBluetooth.source= "images/ConnectBluetooth.png"
                                }
                            }
                            onNonclickedSignal: {
                                name2.text="No Connection"
                                name3.text="-"

                                canvas122.requestPaint();
                                timerForGraph122.stop()
                                amplitude122=0
                                receiveDataTimer122.repeat=false
                                receiveDataTimer122.stop()
                                sendDataTimer122.repeat=false
                                sendDataTimer122.stop()
                                sendData122.text = 0 + " kbps";
                                receiveData122.text = 0 + " kbps";

                                infoText1.text="Please select the device you want to connect to."
                                forBluetooth.source= "images/notConnectBluetooth.png"
                            }
                        }

                        CustomCheckBox {
                            id:checkbox21
                            x: 44
                            y: 35
                            width: 286
                            height: 33
                            onClickedSignal:{
                                checkbox11.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox11.checkBoxOn.visible=false
                                checkbox31.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox31.checkBoxOn.visible=false
                                checkbox41.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox41.checkBoxOn.visible=false
                                infoText1.text="A new device has been selected."


                                if(switch114.checked===true){
                                    name3.text="Cihan's Phone"
                                    name2.text="Well"
                                    timerForGraph122.start()
                                    receiveDataTimer122.repeat=true
                                    receiveDataTimer122.start()
                                    sendDataTimer122.repeat=true
                                    sendDataTimer122.start()
                                    forBluetooth.source= "images/ConnectBluetooth.png"
                                }




                            }
                            onNonclickedSignal: {
                                name2.text="No Connection"
                                name3.text="-"

                                canvas122.requestPaint();
                                timerForGraph122.stop()
                                amplitude122=0
                                receiveDataTimer122.repeat=false
                                receiveDataTimer122.stop()
                                sendDataTimer122.repeat=false
                                sendDataTimer122.stop()
                                sendData122.text = 0 + " kbps";
                                receiveData122.text = 0 + " kbps";

                                infoText1.text="Please select the device you want to connect to."
                                forBluetooth.source= "images/notConnectBluetooth.png"
                            }
                        }

                        Text {
                            x: 33
                            y: 5
                            width: 141
                            height: 30
                            color: "#284863"
                            text: "Device1"
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.Wrap
                            clip: true
                        }

                        Text {
                            x: 33
                            y: 38
                            width: 141
                            height: 30
                            color: "#284863"
                            text: "Cihan’s Phone"
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.Wrap
                            clip: true
                        }

                        Text {
                            x: 33
                            y: 71
                            width: 141
                            height: 30
                            color: "#284863"
                            text: "Device3"
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.Wrap
                            clip: true
                        }

                        CustomCheckBox {
                            id: checkbox31
                            x: 44
                            y: 68
                            width: 286
                            height: 33
                            onClickedSignal:{
                                checkbox11.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox11.checkBoxOn.visible=false
                                checkbox21.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox21.checkBoxOn.visible=false
                                checkbox41.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox41.checkBoxOn.visible=false
                                infoText1.text="A new device has been selected."


                                if(switch114.checked===true){
                                    name3.text="Device3"
                                    name2.text="Well"
                                    timerForGraph122.start()
                                    receiveDataTimer122.repeat=true
                                    receiveDataTimer122.start()
                                    sendDataTimer122.repeat=true
                                    sendDataTimer122.start()
                                    forBluetooth.source= "images/ConnectBluetooth.png"

                                }


                            }
                            onNonclickedSignal: {
                                name2.text="No Connection"
                                name3.text="-"

                                canvas122.requestPaint();
                                timerForGraph122.stop()
                                amplitude122=0
                                receiveDataTimer122.repeat=false
                                receiveDataTimer122.stop()
                                sendDataTimer122.repeat=false
                                sendDataTimer122.stop()
                                sendData122.text = 0 + " kbps";
                                receiveData122.text = 0 + " kbps";
                                infoText1.text="Please select the device you want to connect to."
                                forBluetooth.source= "images/notConnectBluetooth.png"
                            }
                        }

                        CustomCheckBox {
                            id: checkbox41
                            x: 44
                            y: 101
                            width: 286
                            height: 33
                            onClickedSignal:{
                                checkbox11.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox11.checkBoxOn.visible=false
                                checkbox21.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox21.checkBoxOn.visible=false
                                checkbox31.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox31.checkBoxOn.visible=false
                                infoText1.text="A new device has been selected."

                                if(switch114.checked===true){
                                    name3.text="Kerem's Phone"
                                    name2.text="Well"
                                    timerForGraph122.start()
                                    receiveDataTimer122.repeat=true
                                    receiveDataTimer122.start()
                                    sendDataTimer122.repeat=true
                                    sendDataTimer122.start()
                                    forBluetooth.source= "images/ConnectBluetooth.png"
                                }


                            }
                            onNonclickedSignal: {
                                name2.text="No Connection"
                                name3.text="-"

                                canvas122.requestPaint();
                                timerForGraph122.stop()
                                amplitude122=0
                                receiveDataTimer122.repeat=false
                                receiveDataTimer122.stop()
                                sendDataTimer122.repeat=false
                                sendDataTimer122.stop()
                                sendData122.text = 0 + " kbps";
                                receiveData122.text = 0 + " kbps";

                                infoText1.text="Please select the device you want to connect to."
                                forBluetooth.source= "images/notConnectBluetooth.png"
                            }
                        }

                        Text {
                            x: 33
                            y: 104
                            width: 141
                            height: 30
                            color: "#284863"
                            text: "Kerem’s Phone"
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.Wrap
                            clip: true
                        }

                        Image {
                            x: 7
                            y: 10
                            width: 41/2
                            source: "images/Devices.svg"
                            antialiasing: true
                            fillMode: Image.PreserveAspectFit
                        }

                        Image {
                            x: 7
                            y: 45
                            width: 41/2
                            source: "images/Devices.svg"
                            antialiasing: true
                            fillMode: Image.PreserveAspectFit
                        }

                        Image {
                            x: 7
                            y: 76
                            width: 41/2
                            antialiasing: true
                            source: "images/Devices.svg"
                            fillMode: Image.PreserveAspectFit
                        }

                        Image {
                            x: 7
                            y: 109
                            width: 41/2
                            antialiasing: true
                            source: "images/Devices.svg"
                            fillMode: Image.PreserveAspectFit
                        }

                    }

                }

            }

            Text {
                id: text7712
                x: 22
                y: 261
                width: 213
                height: 30
                color: "#bfbfbf"
                text: "Live Connection"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                clip: true
            }

            Switch {
                id: switch112
                x: 13
                y: 260
                width: 324
                height: 32
                rightPadding: -237
                onCheckedChanged: {
                    if(switch112.checked){
                        name5.text="Activated"
                    }
                    else {
                        name5.text="Deactivated"

                    }
                }
            }

            Text {
                id: text7713
                x: 22
                y: 298
                width: 213
                height: 30
                color: "#bfbfbf"
                text: "Data Transfer"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                clip: true
            }

            Switch {
                id: switch113
                x: 13
                y: 297
                width: 324
                height: 32
                rightPadding: -237
                onCheckedChanged: {
                    if(switch113.checked){
                        name6.text="Activated"


                    }
                    else {
                        name6.text="Deactivated"

                    }
                }
            }

            Text {
                id: text7714
                x: 22
                y: 16
                width: 213
                height: 30
                color: "#284863"
                text: "Bluetooth Connection"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                clip: true
            }

            Switch {
                id: switch114
                x: 13
                y: 15
                width: 324
                height: 32
                rightPadding: -237
                onCheckedChanged: {
                    if(switch114.checked===true){
                        text7712.color="#284863"
                        text7713.color="#284863"
                        rectangleForDevices.visible=true
                        if(checkbox11.checkBoxOn.visible===true){
//                            name3.text="Device1"
//                            name2.text="Well"
//                            timerForGraph122.start()
//                            receiveDataTimer122.repeat=true
//                            receiveDataTimer122.start()
//                            sendDataTimer122.repeat=true
//                            sendDataTimer122.start()
//                            forBluetooth.source= "images/ConnectBluetooth.png"
//                            if(checkbox11.checkBoxOn.visible===true || checkbox21.checkBoxOn.visible===true || checkbox31.checkBoxOn.visible===true || checkbox41.checkBoxOn.visible===true ){
                               if(switch111.checked){
                                   name3.text="Device1"
                                   name2.text="Well"
                                   timerForGraph122.start()
                                   receiveDataTimer122.repeat=true
                                   receiveDataTimer122.start()
                                   sendDataTimer122.repeat=true
                                   sendDataTimer122.start()
                                   forBluetooth.source= "images/ConnectBluetooth.png"
                               }
                               else {
                               }
//                            }

                        }

                        else if(checkbox21.checkBoxOn.visible===true){
//                            name3.text="Cihan's Phone"
//                            name2.text="Well"
//                            timerForGraph122.start()
//                            receiveDataTimer122.repeat=true
//                            receiveDataTimer122.start()
//                            sendDataTimer122.repeat=true
//                            sendDataTimer122.start()
//                            forBluetooth.source= "images/ConnectBluetooth.png"
                            if(switch111.checked){
                                name3.text="Cihan's Phone"
                                name2.text="Well"
                                timerForGraph122.start()
                                receiveDataTimer122.repeat=true
                                receiveDataTimer122.start()
                                sendDataTimer122.repeat=true
                                sendDataTimer122.start()
                                forBluetooth.source= "images/ConnectBluetooth.png"
                            }
                            else {
                            }
                        }

                        else if(checkbox31.checkBoxOn.visible===true){
//                            name3.text="Device3"
//                            name2.text="Well"
//                            timerForGraph122.start()
//                            receiveDataTimer122.repeat=true
//                            receiveDataTimer122.start()
//                            sendDataTimer122.repeat=true
//                            sendDataTimer122.start()
//                            forBluetooth.source= "images/ConnectBluetooth.png"
                            if(switch111.checked){
                                name3.text="Device3"
                                name2.text="Well"
                                timerForGraph122.start()
                                receiveDataTimer122.repeat=true
                                receiveDataTimer122.start()
                                sendDataTimer122.repeat=true
                                sendDataTimer122.start()
                                forBluetooth.source= "images/ConnectBluetooth.png"
                            }
                            else {
                            }
                        }

                        else if(checkbox41.checkBoxOn.visible===true){
//                            name3.text="Kerem's Phone"
//                            name2.text="Well"
//                            timerForGraph122.start()
//                            receiveDataTimer122.repeat=true
//                            receiveDataTimer122.start()
//                            sendDataTimer122.repeat=true
//                            sendDataTimer122.start()
//                            forBluetooth.source= "images/ConnectBluetooth.png"
                            if(switch111.checked){
                                name3.text="Kerem's Phone"
                                name2.text="Well"
                                timerForGraph122.start()
                                receiveDataTimer122.repeat=true
                                receiveDataTimer122.start()
                                sendDataTimer122.repeat=true
                                sendDataTimer122.start()
                                forBluetooth.source= "images/ConnectBluetooth.png"
                            }
                            else {
                            }
                        }

                        else{

                        }
                    }


                    else {
                        text7712.color="#bfbfbf"
                        text7713.color="#bfbfbf"
                        rectangleForDevices.visible=false
                        name2.text="No Connection"
                        name3.text="-"
                        canvas122.requestPaint();
                        timerForGraph122.stop()
                        amplitude122=0
                        receiveDataTimer122.repeat=false
                        receiveDataTimer122.stop()
                        sendDataTimer122.repeat=false
                        sendDataTimer122.stop()
                        sendData122.text = 0 + " kbps";
                        receiveData122.text = 0 + " kbps";
                        infoText1.text="Please select the device you want to connect to."
                        forBluetooth.source= "images/notConnectBluetooth.png"
                    }
                }
            }
        }

        Rectangle {
            id: rectangleForWifi
            x: 0
            y: 87
            width: 348
            height: 641
            visible: true
            color: "#00ffffff"

            Text {
                id: text2
                x: 12
                y: 49
                width: 217
                height: 30
                color: "#bfbfbf"
                text: "Feedback Permission"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text1
                x: 12
                y: 15
                width: 217
                height: 30
                color: "#284863"
                text: "Ethernet Connection"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                clip: true
            }

            Rectangle {
                id: rectangle13
                x: 12
                y: 117
                width: 648/2
                height: 200/2
                visible: true
                color: "#f7f8fa"
                border.color: "#dce8ef"
                Image {
                    id: forTextInput
                    x: 145
                    y: 9
                    width: 346/2
                    visible: true
                    source: "images/ForTextInput.svg"
                    fillMode: Image.PreserveAspectFit

                    TextInput {
                        id: userInput
                        x: 6
                        y: 0
                        width: 166
                        height: 24
                        font.letterSpacing: 1
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 21

                        onTextChanged: {
                            // Her 3 karakterde bir boşluk ekle
                            if (text.length === 3 || text.length === 8 ) {
                                text += "  ";
                            }
                            else if (text.length === 11 )
                            {
                                text += "       ";
                            }

                            text20.text = text.replace(/\s+/g, ".");
                            text33.text = text.replace(/\s+/g, ".");
                        }
                    }


                    TextInput {
                        id: userInput1
                        x: 6
                        y: 60
                        width: 166
                        height: 24
                        font.letterSpacing: 1
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 19

                        onTextChanged: {
                            // Her 3 karakterde bir boşluk ekle
                            if (text.length === 3 || text.length === 8 ) {
                                text += "  ";
                            }
                            else if (text.length === 11 )
                            {
                                text += "       ";
                            }
                        }
                    }
                }
                Text {
                    id: text4
                    x: 3
                    y: 6
                    width: 141
                    height: 30
                    color: "#bfbfbf"
                    text: "Ip address"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text5
                    x: 3
                    y: 36
                    width: 141
                    height: 30
                    color: "#bfbfbf"
                    text: "Subnet Mask"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text6
                    x: 3
                    y: 66
                    width: 141
                    height: 30
                    color: "#bfbfbf"
                    text: "Default Gateway"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Image {
                    id: forTextInput2
                    x: 145
                    y: 69
                    width: 346/2
                    source: "images/ForTextInput.svg"
                    fillMode: Image.PreserveAspectFit

                    TextInput {
                        id: userInput3
                        x: 6
                        y: 0
                        width: 166
                        height: 24
                        font.letterSpacing: 1
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 19
                        onTextChanged: {
                            // Her 3 karakterde bir boşluk ekle
                            if (text.length === 3 || text.length === 8 ) {
                                text += "  ";
                            }
                            else if (text.length === 11 )
                            {
                                text += "       ";
                            }
                            text23.text = text.replace(/\s+/g, ".");
                            text36.text = text.replace(/\s+/g, ".");

                        }
                    }
                }

                Image {
                    id: forTextInput1
                    x: 145
                    y: 39
                    width: 346/2
                    source: "images/ForTextInput.svg"
                    fillMode: Image.PreserveAspectFit
                    TextInput {
                        id: userInput2
                        x: 6
                        y: 0
                        width: 166
                        height: 24
                        font.letterSpacing: 1
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 17
                        onTextChanged: {
                            // Her 3 karakterde bir boşluk ekle
                            if (text.length === 3 || text.length === 8/* || text.length === 13*/) {
                                text += "  ";
                            }
                            else if (text.length === 13)
                            {
                                text += "   ";
                            }
                            text22.text = text.replace(/\s+/g, ".");
                            text35.text = text.replace(/\s+/g, ".");
                        }
                    }
                }

            }

            Text {
                id: text3
                x: 12
                y: 83
                width: 217
                height: 30
                color: "#bfbfbf"
                text: "FTP Server"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Switch {
                id: switch3
                x: 12
                y: 14
                width: 324
                height: 32
                rightPadding: -237
                onCheckedChanged: {
                    if(switch3.checked){
                        text12.text="Well"
                        text11.text="Internet"
                        fowWifiText.color="#bfbfbf"
                        switch1.checked=false

                        text2.color="#284863"
                        text3.color="#284863"
                        text77.color="#284863"
                        if(switch5.checked){
                            text4.color="#284863"
                            text5.color="#284863"
                            text6.color="#284863"
                        }

                        forInternet.source="images/ConnectInternet.png"
                        text20.text="192.168.1.66"
                        text21.text="fe80:da67:ad1f:da05:a121"
                        text22.text="255.255.255.0"
                        text23.text="192.168.0.1"
                        text24.text="8.8.8.8"
                        text25.text="A3-B0-5C-D2-AC-3B"

                        receiveDataTimer.repeat=true
                        receiveDataTimer.start()
                        sendDataTimer.repeat=true
                        sendDataTimer.start()
                        timerForGraph.start()

                        userInput.visible=true
                        userInput2.visible=true
                        userInput3.visible=true

                    }
                    else {

                        if(switch1.checked===true){
                            text11.text="Wifi"
                            text2.color="#284863"
                            text3.color="#284863"
                            text77.color="#284863"
                            fowWifiText.color="#284863"
                            forInternet.source="images/notConnectInternet.png"
                        }
                        else{
                            text11.text="None"
                            text2.color="#bfbfbf"
                            text3.color="#bfbfbf"
                            text77.color="#bfbfbf"
                            fowWifiText.color="#284863"
                            text12.text="No Connection"
                            forInternet.source="images/notConnectInternet.png"

                            canvas.requestPaint();
                            timerForGraph.stop()
                            amplitude = 0
                            text12.text="No Connection"
                            receiveDataTimer.repeat=false
                            receiveDataTimer.stop()
                            sendDataTimer.repeat=false
                            sendDataTimer.stop()
                            sendData.text = 0 + " kbps";
                            receiveData.text = 0 + " kbps";

                            text4.color="#bfbfbf"
                            text5.color="#bfbfbf"
                            text6.color="#bfbfbf"

                            userInput.visible=false
                            userInput2.visible=false
                            userInput3.visible=false

                        }
                    }
                }
            }

            Switch {
                id: switch4
                x: 12
                y: 48
                width: 324
                height: 32
                rightPadding: -237
                checked: false
                onCheckedChanged: {
                    if(switch4.checked){
                        text13.text="Activated"
                    }
                    else {
                        text13.text="Deactivated"
                    }
                }
            }

            Switch {
                id: switch5
                x: 12
                y: 82
                width: 324
                height: 32
                rightPadding: -237
                checked: false
                onCheckedChanged: {
                    if(switch5.checked){
                        groupFTPServer.visible=true
                        flickable11.contentHeight=500

                        text4.color="#284863"
                        text5.color="#284863"
                        text6.color="#284863"
                    }
                    else {
                        groupFTPServer.visible=false
                        flickable11.contentHeight=300

                        text4.color="#bfbfbf"
                        text5.color="#bfbfbf"
                        text6.color="#bfbfbf"
                    }
                }
            }

            Rectangle {
                id: rectangle14
                x: 12
                y: 222
                width: 648/2
                height: 428/2
                visible: true
                color: "#f7f8fa"
                border.color: "#dce8ef"

                Rectangle {
                    id: rectangle15
                    x: 4
                    y: 41
                    width: 634/2
                    height: 270/2
                    visible: true
                    color: "#f7f8fa"
                    border.color: "#dce8ef"


                    Flickable {
                        id: flickable
                        x: -6
                        y: -2
                        width: 325
                        height: 137
                        contentY: 0
                        clip: true
                        flickDeceleration: 3000
                        maximumFlickVelocity: 5000
                        contentHeight: 200
                        visible: false




                        ScrollBar.vertical: ScrollBar {
                            x: 355
                            width: 10
                            height: 650
                            policy: ScrollBar.AlwaysOn
                            size: flickable.height / flickable.contentHeight
                            //                position: flickable.contentY / flickable.contentHeight
                            position:0
                            contentItem: Rectangle {
                                implicitHeight: parent.height / 2
                                implicitWidth: parent.width
                                color: "gray"
                                radius: 5
                            }
                        }

                        CustomCheckBox{
                            id:checkbox1
                            x:44
                            y:2
                            width: 286
                            height: 33
                            onClickedSignal:{
                                renameFileNameAnim.start()
                                recordFileNameTextInput1.text="DC&AC"
                                checkbox2.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox2.checkBoxOn.visible=false
                                checkbox3.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox3.checkBoxOn.visible=false
                                checkbox4.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox4.checkBoxOn.visible=false

                                if(switch1.checked && switch2.checked){
                                    forWifi.source="images/ConnectWifi.png"
                                }

                            }
                        }

                        CustomCheckBox {
                            id:checkbox2
                            x: 44
                            y: 35
                            width: 286
                            height: 33
                            onClickedSignal:{
                                renameFileNameAnim.start()
                                recordFileNameTextInput1.text="Datsan"
                                checkbox1.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox1.checkBoxOn.visible=false
                                checkbox3.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox3.checkBoxOn.visible=false
                                checkbox4.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox4.checkBoxOn.visible=false


                                if(switch1.checked && switch2.checked){
                                    forWifi.source="images/ConnectWifi.png"
                                }
                            }
                        }

                        Text {
                            x: 33
                            y: 5
                            width: 141
                            height: 30
                            color: "#284863"
                            text: "DC&AC"
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.Wrap
                            clip: true
                        }

                        Text {
                            x: 33
                            y: 38
                            width: 141
                            height: 30
                            color: "#284863"
                            text: "Datsan"
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.Wrap
                            clip: true
                        }

                        Text {
                            x: 33
                            y: 71
                            width: 141
                            height: 30
                            color: "#284863"
                            text: "Datsan Special"
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.Wrap
                            clip: true
                        }

                        CustomCheckBox {
                            id: checkbox3
                            x: 44
                            y: 68
                            width: 286
                            height: 33
                            onClickedSignal:{
                                renameFileNameAnim.start()
                                recordFileNameTextInput1.text="Datsan Special"
                                checkbox1.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox1.checkBoxOn.visible=false
                                checkbox2.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox2.checkBoxOn.visible=false
                                checkbox4.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox4.checkBoxOn.visible=false


                                if(switch1.checked && switch2.checked){
                                    forWifi.source="images/ConnectWifi.png"
                                }
                            }
                        }

                        CustomCheckBox {
                            id: checkbox4
                            x: 44
                            y: 101
                            width: 286
                            height: 33
                            onClickedSignal:{
                                renameFileNameAnim.start()
                                recordFileNameTextInput1.text="And others"
                                checkbox1.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox1.checkBoxOn.visible=false
                                checkbox2.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox2.checkBoxOn.visible=false
                                checkbox3.checkBoxOFF.source="images/CheckBoxOFF.svg"
                                checkbox3.checkBoxOn.visible=false


                                if(switch1.checked && switch2.checked){
                                    forWifi.source="images/ConnectWifi.png"
                                }
                            }
                        }

                        Text {
                            x: 33
                            y: 104
                            width: 141
                            height: 30
                            color: "#284863"
                            text: "And others"
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.Wrap
                            clip: true
                        }

                        Image {
                            id: wifi1
                            x: 12
                            y: 11
                            width: 33/2
                            source: "images/wifi1.svg"
                            fillMode: Image.PreserveAspectFit
                        }

                        Image {
                            id: wifi2
                            x: 12
                            y: 42
                            width: 35/2
                            source: "images/wifi2.svg"
                            fillMode: Image.PreserveAspectFit
                        }

                        Image {
                            id: wifi3
                            x: 12
                            y: 76
                            width: 34/2
                            source: "images/wifi3.svg"
                            fillMode: Image.PreserveAspectFit
                        }

                        Image {
                            id: wifi4
                            x: 12
                            y: 109
                            width: 33/2
                            source: "images/wifi4.svg"
                            fillMode: Image.PreserveAspectFit
                        }


                    }

                }
                Text {
                    id:fowWifiText
                    x: 7
                    y: 3
                    width: 141
                    height: 36
                    color: "#284863"
                    text: "Wifi"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Bold"
                    clip: true
                }

                Text {
                    id:text77
                    x: 9
                    y: 181
                    width: 213
                    height: 30
                    color: "#bfbfbf"
                    text: "Automatic Connection"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }

                Switch {
                    id: switch1
                    x: 0
                    y: 5
                    width: 324
                    height: 32
                    rightPadding: -237
                    onCheckedChanged: {
                        if(switch1.checked){
                            flickable.visible=true
                            forVisiblePassword.visible=true
                            recordFileNameTextInput.text="Please enter the password."
                            switch3.checked=false

                            text1.color="#bfbfbf"
                            text2.color="#284863"
                            text3.color="#284863"
                            text77.color="#284863"


                            if(switch2.checked){
                                if(checkbox1.checkBoxOn.visible===true || checkbox2.checkBoxOn.visible===true  || checkbox3.checkBoxOn.visible===true  || checkbox4.checkBoxOn.visible===true ){
                                    forWifi.source="images/ConnectWifi.png"


                                    timerForGraph.start()
                                    text21.text="fe80:da67:ad1f:da05:a121"
                                    text34.text="fe80:da67:ad1f:da05:a121"
                                    text24.text="127.0.0.1"
                                    text37.text="127.0.0.1"
                                    text25.text="02-E1-BC-31-30-CC"
                                    text38.text="02-E1-BC-31-30-CC"
                                    text11.text="Wifi"
                                    text12.text="Well"
                                    receiveDataTimer.repeat=true
                                    receiveDataTimer.start()
                                    sendDataTimer.repeat=true
                                    sendDataTimer.start()
                                }
                            }
                            userInput.visible=true
                            userInput2.visible=true
                            userInput3.visible=true

                        }
                        else {
                            recordFileNameTextInput.text="Please enter the internet settings."
                            forVisiblePassword.visible=false
                            flickable.visible=false
                            forWifi.source="images/notConnectWifi.png"
                            canvas.requestPaint();
                            timerForGraph.stop()
                            amplitude = 0
                            text12.text="No Connection"
                            receiveDataTimer.repeat=false
                            receiveDataTimer.stop()
                            sendDataTimer.repeat=false
                            sendDataTimer.stop()
                            sendData.text = 0 + " kbps";
                            receiveData.text = 0 + " kbps";

                            text1.color="#284863"
                            text2.color="#bfbfbf"
                            text3.color="#bfbfbf"
                            text77.color="#bfbfbf"
                            text4.color="#bfbfbf"
                            text5.color="#bfbfbf"
                            text6.color="#bfbfbf"

                            userInput.visible=false
                            userInput2.visible=false
                            userInput3.visible=false

                            if(switch3.checked===true){
                                text11.text="Internet"
                            }
                            else{
                                text11.text="None"
                            }
                            //                    receiveDataTimer.repeat=false
                            //                    sendDataTimer.repeat=false
                            //                    sendData.text = 0 + " kbps";
                            //                    receiveData.text = 0 + " kbps";
                        }
                    }
                }

                Switch {
                    id: switch2
                    x: 0
                    y: 181
                    width: 324
                    height: 29
                    rightPadding: -237
                    onCheckedChanged: {
                        if(switch2.checked){
                            if(textInputForPassword.text!==""){
                                forWifi.source="images/ConnectWifi.png"
                                timerForGraph.start()
                                text21.text="fe80:da67:ad1f:da05:a121"
                                text34.text="fe80:da67:ad1f:da05:a121"
                                text24.text="127.0.0.1"
                                text37.text="127.0.0.1"
                                text25.text="02-E1-BC-31-30-CC"
                                text38.text="02-E1-BC-31-30-CC"
                                text11.text="Wifi"
                                text12.text="Well"
                                receiveDataTimer.repeat=true
                                receiveDataTimer.start()
                                sendDataTimer.repeat=true
                                sendDataTimer.start()
                            }
                        }
                        else {

                        }
                    }
                }

            }

            Rectangle {
                id: bGForHeader1
                x: 11
                y: 440
                width: 648/2
                height: 190
                color: "#f7f8fa"
                border.color: "#a3adb1b4"

                Text {
                    x: 8
                    y: 0
                    width: 150
                    height: 40
                    color: "#284863"
                    text: qsTr("Info")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Bold"
                }

                Text{
                    id: recordFileNameTextInput
                    x: 8
                    y: 33
                    width: 315
                    height: 32
                    color: "#284863"
                    text: "Please enter the internet settings."
                    //                text: qsTr("This operation will be performed permanently. Do you accept?")
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: textForTest
                    x: 1144
                    y: -609
                    width: 91
                    height: 40
                    color: "#284863"
                    text: qsTr("")
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }

                ParallelAnimation{
                    id:renameFileNameAnim
                    NumberAnimation {
                        target: bGForHeader12
                        property: "y"
                        duration: 150
                        to:131
                    }
                    NumberAnimation {
                        target: bGForHeader12
                        property: "z"
                        duration: 1
                        to:1
                    }
                }
                ParallelAnimation{
                    id:renameFileNameAnim2
                    NumberAnimation {
                        target: bGForHeader12
                        property: "y"
                        duration: 150
                        to:210
                    }
                    NumberAnimation {
                        target: bGForHeader12
                        property: "z"
                        duration: 1
                        to:0
                    }
                }



                RectangleItem {
                    id: bGForHeader12
                    x: 1
                    y: 210
                    width: 324
                    height: 64
                    strokeWidth: -1
                    clip: true
                    fillColor: "#00ffffff"

                    Image {
                        id: accept
                        x: 49
                        y: 10
                        width: 66
                        height: 43
                        source: "images/Accept.svg"
                        fillMode: Image.PreserveAspectFit
                        MouseArea{
                            x:-30
                            y:-10
                            width: parent.width+60
                            height: parent.height+20
                            onClicked: {
                                renameFileNameAnim2.start()
                                if(switch1.checked){
                                    forWifi.source="images/ConnectWifi.png"
                                    timerForGraph.start()
                                    text21.text="fe80:da67:ad1f:da05:a121"
                                    text34.text="fe80:da67:ad1f:da05:a121"
                                    text24.text="127.0.0.1"
                                    text37.text="127.0.0.1"
                                    text25.text="02-E1-BC-31-30-CC"
                                    text38.text="02-E1-BC-31-30-CC"
                                    text11.text="Wifi"
                                    text12.text="Well"
                                    receiveDataTimer.repeat=true
                                    receiveDataTimer.start()
                                    sendDataTimer.repeat=true
                                    sendDataTimer.start()

                                }
                                if(switch2.checked){
                                    forWifi.source="images/ConnectWifi.png"
                                    timerForGraph.start()
                                }

                            }
                        }
                    }

                    Image {
                        id: cancel
                        x: 207
                        y: 10
                        width: 66
                        height: 43
                        source: "images/Cancel.svg"
                        fillMode: Image.PreserveAspectFit
                        MouseArea{
                            x:-30
                            y:-10
                            width: parent.width+60
                            height: parent.height+20
                            onClicked: {
                                renameFileNameAnim2.start()
                                recordFileNameTextInput.text="Please select the job you want to do"

                            }
                        }
                    }
                }

                GroupItem {
                    id:forVisiblePassword
                    x: 8
                    y: 71
                    visible: false

                    RectangleItem {
                        x: 100
                        y: 32
                        width: 215
                        height: 32
                        radius: 0
                        strokeColor: "#c4c7c9"
                        fillColor: "#ffffff"
                        bottomRightRadius: 0
                        bottomLeftRadius: 0
                        topRightRadius: 0
                        topLeftRadius: 0
                        strokeWidth: 1

                        TextInput {
                            id:textInputForPassword
                            x: 2
                            y: -1
                            width: 215
                            height: 32
                            font.letterSpacing: 1
                            font.pixelSize: 17
                            verticalAlignment: Text.AlignVCenter
                            echoMode: visiblePassword.checked ? TextInput.Normal : TextInput.Password
                            maximumLength: 20
                            onTextEdited: {
                                renameFileNameAnim.start()
                            }

                            CheckBox {
                                id: visiblePassword
                                x: 175
                                width: 40
                                height: 32
                                anchors.top: parent.top
                                anchors.rightMargin: 0
                                anchors.topMargin: 0
                                anchors.right: parent.right
                                onClicked: {
                                    // Güvenlik düğmesine tıklandığında, echoMode'u güncelle
                                    //                            userInput.echoMode = checked ? TextInput.Normal : TextInput.Password;
                                    if(visiblePassword.checked===true){
                                        mdi_eye.source="images/mdi_eye.svg"
                                    }
                                    else if(visiblePassword.checked===false){
                                        mdi_eye.source="images/mdi_eye_off.svg"
                                    }
                                }
                            }

                            RectangleItem {
                                id: rectangle2
                                x: 181
                                y: 2
                                width: 28
                                height: 28
                                radius: 0
                                fillColor: "#ffffff"
                                bottomRightRadius: 0
                                bottomLeftRadius: 0
                                topRightRadius: 0
                                topLeftRadius: 0
                                strokeWidth: -1

                                Image {
                                    id: mdi_eye
                                    x: 3
                                    y: 3
                                    source: "images/mdi_eye_off.svg"
                                    fillMode: Image.PreserveAspectFit
                                }
                            }
                        }
                    }

                    Text {
                        id: recordFileNameTextInput1
                        x: 100
                        y: 0
                        width: 215
                        height: 32
                        color: "#284863"
                        text: ""
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        clip: true
                    }

                    Text {
                        id: recordFileNameTextInput2
                        x: 0
                        y: 0
                        width: 101
                        height: 32
                        color: "#284863"
                        text: "ID : "
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        clip: true
                    }

                    Text {
                        id: recordFileNameTextInput3
                        x: 0
                        y: 32
                        width: 101
                        height: 32
                        color: "#284863"
                        text: "Password :"
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        clip: true
                    }
                }


            }
        }





    }





    Rectangle {
        id: rectangle1
        x: 358
        y: 8
        width: 545
        height: 720
        color: "#ffffff"
        border.color: "#dce8ef"




    }





    Rectangle {
        id: rectangle4
        x: 358
        y: 9
        width: 545
        height: 245/2
        visible: true
        color: "#f7f8fa"
        border.color: "#dce8ef"
    }

    Rectangle {
        id: rectangle5
        x: 358
        y: 149
        width: 545
        height: 245/2
        visible: true
        color: "#f7f8fa"
        border.color: "#dce8ef"
    }

    Rectangle {
        id: rectangle6
        x: 358
        y: 289
        width: 545
        height: 245/2
        visible: true
        color: "#f7f8fa"
        border.color: "#dce8ef"
    }

    Rectangle {
        id: rectangle8
        x: 358
        y: 429
        width: 545
        height: 245/2
        visible: true
        color: "#f7f8fa"
        border.color: "#dce8ef"


    }

    Rectangle {
        id: rectangle12
        x: 358
        y: 569
        width: 545
        height: 245/2
        visible: true
        color: "#f7f8fa"
        border.color: "#dce8ef"
    }


    Image {
        id: nameOfMiddleCommunication
        x: 364
        y: 8
        width: 286/2
        source: "images/nameOfMiddleCommunication.svg"
        fillMode: Image.PreserveAspectFit
    }


    Image {
        id: forUSB
        x: 377
        y: 40
        width: 1030/2
        source: "images/notConnectBluetooth.png"
        antialiasing: true
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: forWifi
        x: 377
        y: 180
        width: 1014/2
        source: "images/notConnectWifi.png"
        antialiasing: true
        fillMode: Image.PreserveAspectFit
    }
    Image {
        id: forInternet
        x: 377
        y: 320
        width: 1014/2
        source: "images/notConnectInternet.png"
        antialiasing: true
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: forExternal
        x: 379
        y: 460
        width: 1032/2
        source: "images/notConnectExternal.png"
        antialiasing: true
        fillMode: Image.PreserveAspectFit
    }
    Image {
        id: forBluetooth
        x: 377
        y: 600
        width: 1030/2
        source: "images/notConnectBluetooth.png"
        antialiasing: true
        fillMode: Image.PreserveAspectFit
    }

    Rectangle {
        id: rectangle3
        x: 913
        y: 0
        width: 367
        height: 728
        color: "#ffffff"
    }
    Rectangle {
        id: rectangleForUSBRight
        x: 918
        y: 8
        width: 355
        height: 712
        visible: false
        color: "#f7f8fa"

        Flickable {
            id: flickable111
            x: 6
            y: 235
            width: 351
            height: 142
            ScrollBar.vertical: ScrollBar {
                x: 355
                width: 10
                height: 650
                position: 0
                policy: ScrollBar.AlwaysOn
                size: flickable111.height / flickable111.contentHeight
                contentItem: Rectangle {
                    color: "#808080"
                    radius: 5
                    implicitHeight: parent.height / 2
                    implicitWidth: parent.width
                }
            }
            flickDeceleration: 3000
            contentY: 0
            clip: true
            maximumFlickVelocity: 5000
            contentHeight: 300

            Text {
                id: text141
                x: 4
                y: 12
                width: 190
                height: 30
                color: "#284863"
                text: "Out Xon/Xoff"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text151
                x: 4
                y: 46
                width: 190
                height: 30
                color: "#284863"
                text: "In Xon/Xoff"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text161
                x: 4
                y: 80
                width: 190
                height: 30
                color: "#284863"
                text: "Out CTS Flow"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text171
                x: 4
                y: 114
                width: 190
                height: 30
                color: "#284863"
                text: "Out DSR Flow"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text181
                x: 4
                y: 148
                width: 190
                height: 30
                color: "#284863"
                text: "DTR Control"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text191
                x: 4
                y: 182
                width: 190
                height: 30
                color: "#284863"
                text: "DSR Sensivity"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text192
                x: 4
                y: 216
                width: 190
                height: 30
                color: "#284863"
                text: "RTS Control"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text201
                x: 148
                y: 12
                width: 190
                height: 30
                color: "#284863"
                text:
                    if(chosenText27.text==="Xon/Xoff"){
                        "True"
                    }
                    else if(chosenText27.text==="Hardware"){
                        "False"
                    }
                    else if(chosenText27.text==="None"){
                        "False"
                    }
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text211
                x: 123
                y: 46
                width: 215
                height: 30
                color: "#284863"
                text:
                    if(chosenText27.text==="Xon/Xoff"){
                        "True"
                    }
                    else if(chosenText27.text==="Hardware"){
                        "False"
                    }
                    else if(chosenText27.text==="None"){
                        "False"
                    }
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text221
                x: 148
                y: 80
                width: 190
                height: 30
                color: "#284863"
                text:
                    if(chosenText27.text==="Xon/Xoff"){
                        "False"
                    }
                    else if(chosenText27.text==="Hardware"){
                        "True"
                    }
                    else if(chosenText27.text==="None"){
                        "False"
                    }
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text231
                x: 148
                y: 114
                width: 190
                height: 30
                color: "#284863"
                text:                     if(chosenText27.text==="Xon/Xoff"){
                                              "False"
                                          }
                                          else if(chosenText27.text==="Hardware"){
                                              "True"
                                          }
                                          else if(chosenText27.text==="None"){
                                              "False"
                                          }
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text241
                x: 148
                y: 148
                width: 190
                height: 30
                color: "#284863"
                text:                     if(chosenText27.text==="Xon/Xoff"){
                                              "Disabled"
                                          }
                                          else if(chosenText27.text==="Hardware"){
                                              "Handshake"
                                          }
                                          else if(chosenText27.text==="None"){
                                              "Disabled"
                                          }
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text251
                x: 148
                y: 182
                width: 190
                height: 30
                color: "#284863"
                text:      if(chosenText27.text==="Xon/Xoff"){
                               "False"
                           }
                           else if(chosenText27.text==="Hardware"){
                               "True"
                           }
                           else if(chosenText27.text==="None"){
                               "False"
                           }
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text252
                x: 148
                y: 216
                width: 190
                height: 30
                color: "#284863"
                text:   if(chosenText27.text==="Xon/Xoff"){
                            "Disabled"
                        }
                        else if(chosenText27.text==="Hardware"){
                            "Handshake"
                        }
                        else if(chosenText27.text==="None"){
                            "Disabled"
                        }

                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }


        }


        Rectangle {
            id: rectangle171
            x: 5
            y: 414
            width: 345
            height: 291
            color: "#ffffff"
            border.color: "#e1e5ea"

            Rectangle {
                x: 10
                y: 140
                width: parent.width-20
                height: parent.height-150
                Canvas {
                    id: canvas1
                    anchors.fill: parent

                    property real phase1: 0

                    onPaint: {
                        var ctx1 = getContext("2d");

                        // Clear the canvas
                        ctx1.clearRect(0, 0, canvas1.width, canvas1.height);

                        // Draw the sine wave
                        ctx1.beginPath();
                        ctx1.moveTo(0, canvas1.height / 2);

                        for (var i = 0; i < canvas1.width; i++) {
                            var x = i * period1;
                            var y = canvas1.height / 2 + Math.random((x + phase1) * 0.1) * amplitude1;
                            ctx1.lineTo(x, y);
                        }

                        ctx1.strokeStyle = "blue";
                        ctx1.stroke();

                        // Increment phase for animation
                        phase1 += 0.1;
                        if (phase1 > 360) {
                            phase1 = 0;
                        }
                    }
                    Timer {
                        id: timerForGraph1
                        running: false
                        repeat: true
                        onTriggered: {
                            amplitude1 = Math.random() * 50 + 10
                            period1 = Math.random() * 18 + 1;  // Random period between 1 and 5
                            canvas1.requestPaint();

                            // Saat, dakika ve saniyeyi ayrı ayrı hesapla
                            var seconds = parseInt(chosenText29.text.split(":")[2]);
                            var minutes = parseInt(chosenText29.text.split(":")[1]);
                            var hours = parseInt(chosenText29.text.split(":")[0]);

                            // Saniyeyi bir arttır, gerektiğinde dakika ve saatleri güncelle
                            seconds++;
                            if (seconds >= 60) {
                                seconds = 0;
                                minutes++;
                                if (minutes >= 60) {
                                    minutes = 0;
                                    hours++;
                                    if (hours >= 24) {
                                        hours = 0;
                                    }
                                }
                            }

                            // Saat, dakika ve saniyeyi uygun formata dönüştür
                            var formattedHours = ("00" + hours).slice(-2);
                            var formattedMinutes = ("00" + minutes).slice(-2);
                            var formattedSeconds = ("00" + seconds).slice(-2);

                            // chosenText29'un metnini güncelle
                            chosenText29.text = formattedHours + ":" + formattedMinutes + ":" + formattedSeconds;


                        }
                        interval: 1000
                    }
                }
            }

            Text {
                id: text391
                x: 8
                y: 8
                width: 190
                height: 30
                color: "#284863"
                text: "Data Monitor"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                clip: true
            }

            Text {
                x: 8
                y: 43
                width: 161
                height: 30
                color: "#284863"
                text: "Send"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 179
                y: 43
                width: 190
                height: 30
                color: "#284863"
                text: "Receive"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 8
                y: 102
                width: 161
                height: 30
                color: "#284863"
                text: "Total Send"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 179
                y: 102
                width: 190
                height: 30
                color: "#284863"
                text: "Total Receive"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Rectangle {
                id: rectangle181
                x: 8
                y: 67
                width: 110
                height: 1
                color: "#000000"
            }

            Rectangle {
                id: rectangle191
                x: 8
                y: 126
                width: 110
                height: 1
                color: "#000000"
            }

            Rectangle {
                id: rectangle201
                x: 179
                y: 67
                width: 120
                height: 1
                color: "#000000"
            }

            Rectangle {
                id: rectangle211
                x: 179
                y: 126
                width: 120
                height: 1
                color: "#000000"
            }

            Text {
                id: receiveData1
                x: 179
                y: 68
                width: 161
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
                Timer {
                    id: sendDataTimer1
                    running: false
                    repeat: true
                    onTriggered: {
                        var randomValue1 = (Math.random() * (9.00 - 4.00) + 4.00).toFixed(2);
                        receiveData1.text = randomValue1 +  " kbps"

                        totalValue1 += parseFloat(randomValue1); // Toplam değeri güncelle
                        totalReceive1.text = totalValue1.toFixed(2) + " " + unitLabels1[unitIndex1];

                        if (totalValue1 >= 1024) {
                            totalValue1 /= 1024;
                            unitIndex1++;
                            if(unitIndex1>=2)
                            {
                                unitIndex1=2
                            }
                        }
                    }
                    interval: 1000
                }
            }

            Text {
                id: sendData1
                x: 8
                y: 68
                width: 166
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
                Timer {
                    id: receiveDataTimer1
                    running: false
                    repeat: true
                    onTriggered: {


                        var randomValue1 = (Math.random() * (4.00 - 0.00) + 0.00).toFixed(2);
                        sendData1.text = randomValue1 + " kbps";

                        totalValue21 += parseFloat(randomValue1); // Toplam değeri güncelle
                        totalSend1.text = totalValue21.toFixed(2) + " " + unitLabels21[unitIndex21];

                        if (totalValue21 >= 1024) {
                            totalValue21 /= 1024;
                            unitIndex21++;
                            if(unitIndex21>=2)
                            {
                                unitIndex21=2
                            }
                        }



                    }
                    interval: 1000
                }
            }

            Text {
                id: totalReceive1
                x: 179
                y: 127
                width: 161
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: totalSend1
                x: 8
                y: 127
                width: 166
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }
        }

        Text {
            x: 10
            y: 10
            width: 200
            height: 30
            color: "#284863"
            text: "Connection Type"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id:chosenText23
            x: 160
            y: 50
            width: 190
            height: 30
            color: "#284863"
            text: "USB1"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText24
            x: 160
            y: 90
            width: 190
            height: 30
            color: "#284863"
            text: "115200"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText25
            x: 160
            y: 130
            width: 190
            height: 30
            color: "#284863"
            text: "7"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText26
            x: 160
            y: 170
            width: 190
            height: 30
            color: "#284863"
            text: "2"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText27
            x: 160
            y: 210
            width: 190
            height: 30
            color: "#284863"
            text: "Xon/Xoff"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 10
            y: 50
            width: 200
            height: 30
            color: "#284863"
            text: "Connected Device"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 10
            y: 90
            width: 200
            height: 30
            color: "#284863"
            text: "Bound Rate"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 10
            y: 130
            width: 200
            height: 30
            color: "#284863"
            text: "Data Bits"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText28
            x: 160
            y: 10
            width: 190
            height: 30
            color: "#284863"
            text: "USB"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 10
            y: 170
            width: 200
            height: 30
            color: "#284863"
            text: "Stop Bits"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 10
            y: 210
            width: 200
            height: 30
            color: "#284863"
            text: "Flow Control"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 10
            y: 383
            width: 200
            height: 30
            color: "#284863"
            text: "Duration"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText29
            x: 160
            y: 383
            width: 190
            height: 30
            color: "#284863"
            text: "00:00:00"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

    }

    Rectangle {
        id: rectangleForBLuetoothRight
        x: 918
        y: 8
        width: 355
        height: 712
        visible: false
        color: "#f7f8fa"

        Rectangle {
            id: rectangle17122
            x: 5
            y: 414
            width: 345
            height: 291
            color: "#ffffff"
            border.color: "#e1e5ea"

            Rectangle {
                x: 10
                y: 140
                width: parent.width-20
                height: parent.height-150
                Canvas {
                    id: canvas122
                    anchors.fill: parent
                    onPaint: {
                        var ctx122 = getContext("2d");

                        // Clear the canvas
                        ctx122.clearRect(0, 0, canvas122.width, canvas122.height);

                        // Draw the sine wave
                        ctx122.beginPath();
                        ctx122.moveTo(0, canvas122.height / 2);

                        for (var i = 0; i < canvas122.width; i++) {
                            var x = i * period1;
                            var y = canvas122.height / 2 + Math.random((x + phase122) * 0.1) * amplitude122;
                            ctx122.lineTo(x, y);
                        }

                        ctx122.strokeStyle = "blue";
                        ctx122.stroke();

                        // Increment phase for animation
                        phase122 += 0.1;
                        if (phase122 > 360) {
                            phase122 = 0;
                        }
                    }
                    Timer {
                        id: timerForGraph122
                        onTriggered: {
                            amplitude122 = Math.random() * 50 + 10
                            period122 = Math.random() * 18 + 1;  // Random period between 1 and 5
                            canvas122.requestPaint();

                            // Saat, dakika ve saniyeyi ayrı ayrı hesapla
                            var seconds = parseInt(name4.text.split(":")[2]);
                            var minutes = parseInt(name4.text.split(":")[1]);
                            var hours = parseInt(name4.text.split(":")[0]);

                            // Saniyeyi bir arttır, gerektiğinde dakika ve saatleri güncelle
                            seconds++;
                            if (seconds >= 60) {
                                seconds = 0;
                                minutes++;
                                if (minutes >= 60) {
                                    minutes = 0;
                                    hours++;
                                    if (hours >= 24) {
                                        hours = 0;
                                    }
                                }
                            }

                            // Saat, dakika ve saniyeyi uygun formata dönüştür
                            var formattedHours = ("00" + hours).slice(-2);
                            var formattedMinutes = ("00" + minutes).slice(-2);
                            var formattedSeconds = ("00" + seconds).slice(-2);

                            // chosenText29'un metnini güncelle
                            name4.text = formattedHours + ":" + formattedMinutes + ":" + formattedSeconds;


                        }
                        repeat: true
                        interval: 1000
                        running: false
                    }
                    property real phase122: 0
                }
            }

            Text {
                id: text39122
                x: 8
                y: 8
                width: 190
                height: 30
                color: "#284863"
                text: "Data Monitor"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
                font.styleName: "Bold"
            }

            Text {
                x: 8
                y: 43
                width: 161
                height: 30
                color: "#284863"
                text: "Send"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 179
                y: 43
                width: 190
                height: 30
                color: "#284863"
                text: "Receive"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 8
                y: 102
                width: 161
                height: 30
                color: "#284863"
                text: "Total Send"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 179
                y: 102
                width: 190
                height: 30
                color: "#284863"
                text: "Total Receive"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Rectangle {
                id: rectangle18122
                x: 8
                y: 67
                width: 110
                height: 1
                color: "#000000"
            }

            Rectangle {
                id: rectangle19122
                x: 8
                y: 126
                width: 110
                height: 1
                color: "#000000"
            }

            Rectangle {
                id: rectangle20122
                x: 179
                y: 67
                width: 120
                height: 1
                color: "#000000"
            }

            Rectangle {
                id: rectangle21122
                x: 179
                y: 126
                width: 120
                height: 1
                color: "#000000"
            }

            Text {
                id: receiveData122
                x: 179
                y: 68
                width: 161
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
                Timer {
                    id: sendDataTimer122
                    onTriggered: {
                        var randomValue122 = (Math.random() * (9.00 - 4.00) + 4.00).toFixed(2);
                        receiveData122.text = randomValue122 +  " kbps"

                        totalValue122 += parseFloat(randomValue122); // Toplam değeri güncelle
                        totalReceive122.text = totalValue122.toFixed(2) + " " + unitLabels122[unitIndex122];

                        if (totalValue122 >= 1024) {
                            totalValue122 /= 1024;
                            unitIndex122++;
                            if(unitIndex122>=2)
                            {
                                unitIndex122=2
                            }
                        }
                    }
                    repeat: true
                    interval: 1000
                    running: false
                }
            }

            Text {
                id: sendData122
                x: 8
                y: 68
                width: 166
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
                Timer {
                    id: receiveDataTimer122
                    onTriggered: {


                        var randomValue122 = (Math.random() * (4.00 - 0.00) + 0.00).toFixed(2);
                        sendData122.text = randomValue122 + " kbps";

                        totalValue2122 += parseFloat(randomValue122); // Toplam değeri güncelle
                        totalSend122.text = totalValue2122.toFixed(2) + " " + unitLabels2122[unitIndex2122];

                        if (totalValue2122 >= 1024) {
                            totalValue2122 /= 1024;
                            unitIndex2122++;
                            if(unitIndex2122>=2)
                            {
                                unitIndex2122=2
                            }
                        }



                    }
                    repeat: true
                    interval: 1000
                    running: false
                }
            }

            Text {
                id: totalReceive122
                x: 179
                y: 127
                width: 161
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: totalSend122
                x: 8
                y: 127
                width: 166
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }
        }






        Text {
            id:name1
            x: 183
            y: 15
            width: 162
            height: 30
            color: "#284863"
            text: "Bluetooth"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: name2
            x: 183
            y: 55
            width: 162
            height: 30
            color: "#284863"
            text: "No Connection"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: name3
            x: 183
            y: 95
            width: 162
            height: 30
            color: "#284863"
            text: "-"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: name4
            x: 183
            y: 135
            width: 162
            height: 30
            color: "#284863"
            text: "00:00:00"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 8
            y: 15
            width: 162
            height: 30
            color: "#284863"
            text: "Connection Type"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 8
            y: 55
            width: 162
            height: 30
            color: "#284863"
            text: "Connection"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 8
            y: 95
            width: 201
            height: 30
            color: "#284863"
            text: "Connected Device Name"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 8
            y: 135
            width: 201
            height: 30
            color: "#284863"
            text: "Duration"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: name5
            x: 183
            y: 175
            width: 162
            height: 30
            color: "#284863"
            text: "Deactivated"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 8
            y: 175
            width: 201
            height: 30
            color: "#284863"
            text: "Live Connection"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: name6
            x: 183
            y: 215
            width: 162
            height: 30
            color: "#284863"
            text: "Deactivated"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            x: 8
            y: 215
            width: 201
            height: 30
            color: "#284863"
            text: "Data Transfer"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }
    }
    Rectangle {
        id: rectangleForWifiRight
        x: 918
        y: 8
        width: 355
        height: 712
        visible: true
        color: "#f7f8fa"
        Flickable {
            id: flickable11
            x: 4
            y: 112
            width: 351
            height: 292
            ScrollBar.vertical: ScrollBar {
                x: 355
                width: 10
                height: 650
                position: 0
                policy: ScrollBar.AlwaysOn
                size: flickable11.height / flickable11.contentHeight
                contentItem: Rectangle {
                    color: "#808080"
                    radius: 5
                    implicitHeight: parent.height / 2
                    implicitWidth: parent.width
                }
            }
            flickDeceleration: 3000
            contentY: 0
            clip: true
            maximumFlickVelocity: 5000
            contentHeight: 300

            Text {
                id: text10
                x: 4
                y: 7
                width: 190
                height: 30
                color: "#284863"
                text: "Data Monitor"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                clip: true
            }

            Text {
                id: text14
                x: 4
                y: 42
                width: 190
                height: 30
                color: "#284863"
                text: "IPv4 Address"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text15
                x: 4
                y: 76
                width: 190
                height: 30
                color: "#284863"
                text: "IPv6 Address"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text16
                x: 4
                y: 110
                width: 190
                height: 30
                color: "#284863"
                text: "Subnet Mask"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text17
                x: 4
                y: 144
                width: 190
                height: 30
                color: "#284863"
                text: "Default Gateway"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text18
                x: 4
                y: 178
                width: 190
                height: 30
                color: "#284863"
                text: "DNS Server"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text19
                x: 4
                y: 212
                width: 190
                height: 30
                color: "#284863"
                text: "Mac Address"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text20
                x: 148
                y: 42
                width: 190
                height: 30
                color: "#284863"
                text: "IPv4 Address"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text21
                x: 123
                y: 76
                width: 215
                height: 30
                color: "#284863"
                text: "IPv6 Address"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text22
                x: 148
                y: 110
                width: 190
                height: 30
                color: "#284863"
                text: "Subnet Mask"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text23
                x: 148
                y: 144
                width: 190
                height: 30
                color: "#284863"
                text: "Default Gateway"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text24
                x: 148
                y: 178
                width: 190
                height: 30
                color: "#284863"
                text: "DNS Server"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: text25
                x: 148
                y: 212
                width: 190
                height: 30
                color: "#284863"
                text: "Mac Address"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            GroupItem {
                id:groupFTPServer
                x: 4
                y: 243
                visible: false

                Text {
                    id: text26
                    x: 0
                    y: 0
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "FTP Server"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                    font.styleName: "Bold"
                }

                Text {
                    id: text28
                    x: 0
                    y: 69
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "IPv6 Address"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text29
                    x: 0
                    y: 103
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "Subnet Mask"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text30
                    x: 0
                    y: 137
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "Default Gateway"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text31
                    x: 0
                    y: 171
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "DNS Server"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text32
                    x: 0
                    y: 205
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "Mac Address"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }


                Text {
                    id: text27
                    x: 0
                    y: 35
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "IPv4 Address"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text33
                    x: 144
                    y: 35
                    width: 190
                    height: 30
                    color: "#284863"
                    text: text20.text
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text34
                    x: 104
                    y: 69
                    width: 230
                    height: 30
                    color: "#284863"
                    text: text21.text
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text35
                    x: 144
                    y: 103
                    width: 190
                    height: 30
                    color: "#284863"
                    text: text22.text
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text36
                    x: 144
                    y: 137
                    width: 190
                    height: 30
                    color: "#284863"
                    text: text23.text
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text37
                    x: 144
                    y: 171
                    width: 190
                    height: 30
                    color: "#284863"
                    text: text24.text
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text38
                    x: 144
                    y: 205
                    width: 190
                    height: 30
                    color: "#284863"
                    text: text25.text
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }
            }
        }

        Text {
            id: text7
            x: 8
            y: 13
            width: 190
            height: 30
            color: "#284863"
            text: "Connection Type"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: text8
            x: 8
            y: 43
            width: 190
            height: 30
            color: "#284863"
            text: "Connection"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: text9
            x: 8
            y: 73
            width: 190
            height: 30
            color: "#284863"
            text: "Feedback Activation"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: text11
            x: 204
            y: 13
            width: 151
            height: 30
            color: "#284863"
            text: "None"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: text12
            x: 204
            y: 43
            width: 151
            height: 30
            color: "#284863"
            text: "No Connection"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: text13
            x: 204
            y: 73
            width: 151
            height: 30
            color: "#284863"
            text: "Deactivated"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Rectangle {
            id: rectangle17
            x: 5
            y: 414
            width: 345
            height: 291
            color: "#ffffff"
            border.color: "#e1e5ea"

            Rectangle {
                x: 10
                y: 140
                width: parent.width-20
                height: parent.height-150

                Canvas {
                    id: canvas
                    anchors.fill: parent


                    property real phase: 0

                    onPaint: {
                        var ctx = getContext("2d");

                        // Clear the canvas
                        ctx.clearRect(0, 0, canvas.width, canvas.height);

                        // Draw the sine wave
                        ctx.beginPath();
                        ctx.moveTo(0, canvas.height / 2);

                        for (var i = 0; i < canvas.width; i++) {
                            var x = i * period;
                            var y = canvas.height / 2 + Math.random((x + phase) * 0.1) * amplitude;
                            ctx.lineTo(x, y);
                        }

                        ctx.strokeStyle = "blue";
                        ctx.stroke();

                        // Increment phase for animation
                        phase += 0.1;
                        if (phase > 360) {
                            phase = 0;
                        }
                    }

                    // Update the canvas on every frame
                    Timer {
                        id:timerForGraph
                        interval: 1000  // About 60 frames per second
                        running: false
                        repeat: true

                        onTriggered: {
                            amplitude = Math.random() * 50 + 10
                            period = Math.random() * 18 + 1;  // Random period between 1 and 5
                            canvas.requestPaint();
                        }
                    }
                }
            }


            Text {
                id: text39
                x: 8
                y: 8
                width: 190
                height: 30
                color: "#284863"
                text: "Data Monitor"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
                font.styleName: "Bold"
            }

            Text {
                x: 8
                y: 43
                width: 161
                height: 30
                color: "#284863"
                text: "Send"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 179
                y: 43
                width: 190
                height: 30
                color: "#284863"
                text: "Receive"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 8
                y: 102
                width: 161
                height: 30
                color: "#284863"
                text: "Total Send"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                x: 179
                y: 102
                width: 190
                height: 30
                color: "#284863"
                text: "Total Receive"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Rectangle {
                id: rectangle18
                x: 8
                y: 67
                width: 110
                height: 1
                color: "#000000"
            }

            Rectangle {
                id: rectangle19
                x: 8
                y: 126
                width: 110
                height: 1
                color: "#000000"
            }

            Rectangle {
                id: rectangle20
                x: 179
                y: 67
                width: 120
                height: 1
                color: "#000000"
            }

            Rectangle {
                id: rectangle21
                x: 179
                y: 126
                width: 120
                height: 1
                color: "#000000"
            }

            Text {
                id:receiveData
                x: 179
                y: 68
                width: 161
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
                Timer {
                    id: sendDataTimer
                    interval: 1000
                    running: false
                    repeat: true
                    onTriggered: {
                        var randomValue = (Math.random() * (9.00 - 4.00) + 4.00).toFixed(2);
                        receiveData.text = randomValue +  " kbps"

                        totalValue += parseFloat(randomValue); // Toplam değeri güncelle
                        totalReceive.text = totalValue.toFixed(2) + " " + unitLabels[unitIndex];

                        if (totalValue >= 1024) {
                            totalValue /= 1024;
                            unitIndex++;
                            if(unitIndex>=2)
                            {
                                unitIndex=2
                            }
                        }
                    }
                }

            }

            Text {
                id:sendData
                x: 8
                y: 68
                width: 166
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
                Timer {
                    id: receiveDataTimer
                    interval: 1000
                    running: false
                    repeat: true
                    onTriggered: {
                        var randomValue = (Math.random() * (4.00 - 0.00) + 0.00).toFixed(2);
                        sendData.text = randomValue + " kbps";

                        totalValue2 += parseFloat(randomValue); // Toplam değeri güncelle
                        totalSend.text = totalValue2.toFixed(2) + " " + unitLabels2[unitIndex2];

                        if (totalValue2 >= 1024) {
                            totalValue2 /= 1024;
                            unitIndex2++;
                            if(unitIndex2>=2)
                            {
                                unitIndex2=2
                            }
                        }



                    }
                }
            }

            Text {
                id:totalReceive
                x: 179
                y: 127
                width: 161
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id:totalSend
                x: 8
                y: 127
                width: 166
                height: 30
                color: "#284863"
                text: "0 kbps"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }
        }

    }




}



