import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.10
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtCharts 2.3




Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#f7f8fa"
    border.color: "#ffffff"
    property bool dragging: false





    Image {
        id: menu5
        x: 913
        y: 0
        width: 367
        height: 611
        source: "images/Menu.svg"
        fillMode: Image.Stretch

        Rectangle {
            id: rectangle25
            x: 0
            y: 297
            width: 367
            height: 1
            color: "#eef1f3"
        }



    }

    Image {
        id: menu3
        x: 0
        y: 619
        width: 720/2
        height: 218/2
        source: "images/Menu.svg"
        fillMode: Image.Stretch


        CustomButtonHeaderBlackBG{
            id:chosingStandarts
            x: 106
            y: 20
            width: 81
            height: 67
            clip: true

        }

        Text {
            id: memoryTypeText3
            x: 8
            y: 31
            width: 88
            height: 47
            color: "#284863"
            text: qsTr("Standarts")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }



        Text {
            id: memoryTypeText4
            x: 189
            y: 31
            width: 78
            height: 47
            color: "#284863"
            text: qsTr("IEE 1159")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Light"
        }



        Text {
            id: memoryTypeText5
            x: 106
            y: 31
            width: 74
            height: 47
            color: "#ffffff"
            text: qsTr("Manuel")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Light"

            MouseArea {
                id: mouseArea
                x: -16
                y: -30
                width: 97
                height: 108
                onClicked: {
                    chosingStandarts.x=memoryTypeText5.x
                    memoryTypeText4.color="#284863"
                    memoryTypeText5.color="#ffffff"
                    memoryTypeText6.color="#284863"

                }
            }

            MouseArea {
                id: mouseArea1
                x: 82
                y: -30
                width: 81
                height: 108
                onClicked: {
                    chosingStandarts.x=memoryTypeText4.x
                    memoryTypeText4.color="#ffffff"
                    memoryTypeText5.color="#284863"
                    memoryTypeText6.color="#284863"

                }
            }

            MouseArea {
                id: mouseArea2
                x: 164
                y: -29
                width: 81
                height: 108
                onClicked: {
                    chosingStandarts.x=memoryTypeText6.x
                    memoryTypeText4.color="#284863"
                    memoryTypeText5.color="#284863"
                    memoryTypeText6.color="#ffffff"

                }
            }
        }



        Text {
            id: memoryTypeText6
            x: 272
            y: 31
            width: 78
            height: 47
            color: "#284863"
            text: qsTr("EN 50160")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Light"
        }

    }


    Image {
        id: menu4
        x: 365
        y: 5
        width: 544
        height: 611
        source: "images/Menu.svg"
        fillMode: Image.Stretch


        Rectangle {
            id: rectangle19
            x: -870
            y: 231
            width: 426
            height: 258
            color: "#ffffff"

            Rectangle {
                id: rectangle7
                x: 13
                y: 6
                width: 1
                height: 250
                color: "#eceff1"
            }

            Rectangle {
                id: rectangle9
                x: 213
                y: -69
                width: 1
                height: 400
                color: "#eceff1"
                rotation: 90
            }

            Rectangle {
                id: rectangle16
                x: 411
                y: 127
                width: 9
                height: 9
                color: "#eceff1"
                radius: 4
            }

            Rectangle {
                id: rectangle17
                x: 9
                y: 249
                width: 9
                height: 9
                color: "#eceff1"
                radius: 4
            }

            Rectangle {
                id: rectangle18
                x: 9
                y: 0
                width: 9
                height: 9
                color: "#eceff1"
                radius: 4
            }
        }



        RangeSlider {
            id: rangeSlider
            x: 385
            y: 140

            width: 250
            height: 40
            padding: 0
            rotation: 90

            first.value: 0
            second.value: 1
            background: Rectangle {
                width: 250
                implicitWidth: 300  // Arka planın genişliğini belirtir
                height: 40
                color: "#EFF2F6"
                anchors.centerIn: parent

                Connections {
                    target: rangeSlider.first
                    onValueChanged: {
                        if (rangeSlider.first.value > 0.5) {
                            rangeSlider.first.value = 0.5;
                        }
                    }
                }
            }

            // First handle customization
            first.handle: Rectangle {
                id:firstTH
                x: rangeSlider.leftPadding + rangeSlider.first.visualPosition * (rangeSlider.availableWidth - width) +5
                y: parent.height / 2 - height / 2
                width: 3
                height: 40
                color: rangeSlider.first.pressed ? "#FF5555" : "#EA0000"
                border.width: 0

            }

            // Second handle customization
            second.handle: Rectangle {
                id:secondTH
                x: rangeSlider.y + rangeSlider.width/2 - rangeSlider.first.value*rangeSlider.width -15 +5
                y: parent.height / 2 - height / 2
                width: 3
                height: 40
                color: rangeSlider.second.pressed ? "#FF5555" : "#EA0000"
                border.width: 0
            }
        }

        Rectangle {
            id: rectangle50
            x: 2
            y: 0
            width: 500
            height: 341
            color: "#00ffffff"
            antialiasing: false
            ChartView {
                id: chartView
                anchors.fill: parent
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 0
                legend.visible: false
                //               title: "Örnek Grafik"
                antialiasing: true
                CategoryAxis {
                    id: xAxis
                    labelsFont.pixelSize: 12
                    min: 0
                    max: 10*3.1419
                    tickCount: 5
                    labelsPosition: CategoryAxis.AxisLabelsPositionOnValue

                    CategoryRange { endValue: 5; label: "1:00" }
                    CategoryRange { endValue: 10; label: "2:00" }
                    CategoryRange { endValue: 15; label: "3:00" }
                    CategoryRange { endValue: 20; label: "4:00" }
                    CategoryRange { endValue: 25; label: "5:00" }
                    //                    CategoryRange { endValue: 30; label: "6:00" }


                }

                Rectangle {
                    id: rectangle21
                    x: 90
                    y: 36
                    width: 380
                    height: 250
                    color: "#00ffffff"
                    antialiasing: false

                    Rectangle {
                        id: rectangle20
                        x: 2
                        y: rangeSlider.first.value*245
                        width: 393
                        height: 3
                        opacity: 0.514
                        color: "#ea0000"
                    }

                    Rectangle {
                        id: rectangle22
                        x: 2
                        y: secondTH.x
                        width: 393
                        height: 3
                        opacity: 0.508
                        color: "#ea0000"
                        border.width: 0
                    }

                    Image {
                        id: dipSVG
                        x: 250
                        y: 292
                        width: 201
                        height: 133
                        source: "images/DipSVG.png"
                        fillMode: Image.PreserveAspectFit
                    }


                }


                ValueAxis {
                    id: yAxis
                    min: -500
                    max: 500
                    tickCount: 5
                }


                LineSeries {
                    id: lineSeries
                    name: "Örnek Seri"
                    width: 2.5
                    color: "#217efd"
                    axisX: xAxis
                    axisY: yAxis
                    //                                               XYPoint { x: 0; y:0}
                    //                                               XYPoint { x: 1; y: -250}
                    //                                               XYPoint { x: 2; y: 0}
                    //                                               XYPoint { x: 3; y: 250}
                    //                                               XYPoint { x: 4; y: 500}
                    Component.onCompleted: {
                        //                        for (var i = 0 ; i <= 2 * 3.14159; i += 0.01) {
                        //                            var yValue = 20 * Math.sin(i) + 220;
                        //                            append(i, yValue);
                        //                        }

                        for (var i = 0; i <= 100; i++) {
                            var x = i / 100 * (10 * 3.14159265358979323846); // 2 pi
                            var y = 220 * Math.sin(x);
                            append(x, y);
                        }
                    }
                }

                Rectangle {
                    id: rectangle23
                    x: 623
                    y: -158
                    width: 200
                    height: 200
                    color: "#ffffff"
                }


            }
        }

        Rectangle {
            id: rectangle24
            x: 493
            y: firstTH.x+35-histeresis.text
            width: 37
            height: 3
            color: "#b0b0b0"

        }



    }

    Image {
        id: menu
        x: 0
        y: 0
        width: 720/2
        height: 611
        source: "images/Menu.svg"
        fillMode: Image.Stretch




        Flickable {
            id: flickable
            x: 0
            y: 51
            width: 342
            height: 560
            contentY: 0
            clip: true
            flickDeceleration: 3000
            maximumFlickVelocity: 5000
            contentHeight: 600



            Rectangle {
                id: rectangle1
                x: 13
                y: 1
                width: 329
                height: 40
                color: "#ffffff"
                Text {
                    x: 0
                    y: 0
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("Dip")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }
                Image {
                    id: bGForHeader2
                    x: 267
                    y: 1
                    width: 62
                    height: 38
                    source: "images/BGForHeader.svg"
                    sourceSize.height: 77
                    sourceSize.width: 135
                    fillMode: Image.Pad
                    Image {
                        id: on_button_fill
                        x: 5
                        y: 8
                        width: 44/2
                        source: "images/On_button_fill.svg"
                        antialiasing: true
                        visible: false
                        fillMode: Image.PreserveAspectFit
                    }



                    Image {
                        id: on_button_fill2
                        x: 5
                        y: 8
                        width: 24
                        source: "images/On_button_fill-2.svg"
                        antialiasing: true
                        fillMode: Image.PreserveAspectFit
                        visible: true
                    }

                    Image {
                        id: on_button_fill1
                        x: 35
                        y: 8
                        width: 24
                        source: "images/On_button_fill-1.svg"
                        antialiasing: true
                        fillMode: Image.PreserveAspectFit
                        visible: true
                    }

                    MouseArea {
                        id: dip
                        x: -6
                        y: -2
                        width: 86
                        height: 42
                        onClicked: {
                            if(on_button_fill.visible===true){
                                on_button_fill.visible=false
                                on_button_fill1.visible=true
                                on_button_fill2.x=5
                                  toggleItem("Dip", dipThMedium.text);
                            }
                            else{
                                on_button_fill.visible=true
                                on_button_fill1.visible=false
                                on_button_fill2.x=35
                                toggleItem("Dip", dipThMedium.text);
                            }
                        }
                    }

                    Rectangle {
                        id: rectangle2
                        x: -130
                        y: -2
                        width: 60
                        height: 42
                        color: "#fcae18"

                        TextInput {
                            id:dipThMedium
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("90")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            clip: true

                            onTextChanged: {
//                                Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                    rangeSlider.first.value=0.3
                                }

                                rangeSlider.first.value=0.5-(dipThMedium.text/400)
                            }
                        }
                    }

                    Rectangle {
                        id: rectangle3
                        x: -66
                        y: -2
                        width: 60
                        height: 42
                        color: "#ff5555"
                        TextInput {
                            id:dipThMax
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("75")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }
                }

                Text {
                    x: 118
                    y: 0
                    width: 17
                    height: 40
                    color: "#284863"
                    text: qsTr("%")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }
            }

            Rectangle {
                id: rectangle4
                x: 13
                y: 51
                width: 329
                height: 40
                color: "#ffffff"
                Text {
                    x: 0
                    y: 0
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("Pst")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Image {
                    x: 267
                    y: 1
                    width: 62
                    height: 38
                    source: "images/BGForHeader.svg"
                    sourceSize.height: 77
                    sourceSize.width: 135
                    fillMode: Image.Pad
                    Image {
                        id: on_button_fill110
                        x: 5
                        y: 8
                        width: 44/2
                        visible: false
                        source: "images/On_button_fill.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: false
                    }

                    Image {
                        id: on_button_fill112
                        x: 5
                        y: 8
                        width: 24
                        source: "images/On_button_fill-2.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id: on_button_fill111
                        x: 35
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-1.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    MouseArea {
                        id:pst
                        x: -6
                        y: -2
                        width: 86
                        height: 42
                        onClicked: {
                            if(on_button_fill110.visible===true){
                                on_button_fill110.visible=false
                                on_button_fill111.visible=true
                                on_button_fill112.x=5
                                toggleItem("Pst", pstThMedium.text);



                            }
                            else{
                                on_button_fill110.visible=true
                                on_button_fill111.visible=false
                                on_button_fill112.x=35
                                toggleItem("Pst", pstThMedium.text);
                            }
                        }
                    }

                    Rectangle {
                        x: -130
                        y: -2
                        width: 60
                        height: 42
                        color: "#fcae18"
                        TextInput {
                            id:pstThMedium
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("95")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }
                }

                Text {
                    x: 118
                    y: 0
                    width: 17
                    height: 40
                    color: "#284863"
                    text: qsTr("%")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }
            }

            Rectangle {
                id: rectangle5
                x: 13
                y: 101
                width: 329
                height: 40
                color: "#ffffff"
                Text {
                    x: 0
                    y: 0
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("Plt")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Image {
                    x: 267
                    y: 1
                    width: 62
                    height: 38
                    source: "images/BGForHeader.svg"
                    sourceSize.height: 77
                    sourceSize.width: 135
                    fillMode: Image.Pad
                    Image {
                        id:on_button_fill120
                        x: 5
                        y: 8
                        width: 44/2
                        visible: false
                        source: "images/On_button_fill.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill122
                        x: 5
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-2.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill121
                        x: 35
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-1.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    MouseArea {
                        x: -6
                        y: -2
                        width: 86
                        height: 42
                        onClicked: {
                            if(on_button_fill120.visible===true){
                                on_button_fill120.visible=false
                                on_button_fill121.visible=true
                                on_button_fill122.x=5
                                toggleItem("Plt", pltThMedium.text);

                            }
                            else{
                                on_button_fill120.visible=true
                                on_button_fill121.visible=false
                                on_button_fill122.x=35
                                toggleItem("Plt", pltThMedium.text);
                            }
                        }
                    }

                    Rectangle {
                        x: -130
                        y: -2
                        width: 60
                        height: 42
                        color: "#fcae18"
                        TextInput {
                            id:pltThMedium
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("95")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }
                }

                Text {
                    x: 118
                    y: 0
                    width: 17
                    height: 40
                    color: "#284863"
                    text: qsTr("%")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }
            }

            Rectangle {
                id: rectangle6
                x: 13
                y: 151
                width: 329
                height: 40
                color: "#ffffff"
                Text {
                    x: 0
                    y: 0
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("Sweel")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Image {
                    x: 267
                    y: 1
                    width: 62
                    height: 38
                    source: "images/BGForHeader.svg"
                    sourceSize.height: 77
                    sourceSize.width: 135
                    fillMode: Image.Pad
                    Image {
                        id:on_button_fill130
                        x: 5
                        y: 8
                        width: 44/2
                        visible: false
                        source: "images/On_button_fill.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill132
                        x: 5
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-2.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill131
                        x: 35
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-1.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    MouseArea {
                        x: -12
                        y: 0
                        width: 86
                        height: 40
                        onClicked: {
                            if(on_button_fill130.visible===true){
                                on_button_fill130.visible=false
                                on_button_fill131.visible=true
                                on_button_fill132.x=5
                                toggleItem("Sweel", sweelThMedium.text);
                            }
                            else{
                                on_button_fill130.visible=true
                                on_button_fill131.visible=false
                                on_button_fill132.x=35
                                toggleItem("Sweel", sweelThMedium.text);
                            }
                        }
                    }

                    Rectangle {
                        x: -130
                        y: -2
                        width: 60
                        height: 42
                        color: "#fcae18"
                        TextInput {
                            id:sweelThMedium
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("110")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }

                    Rectangle {
                        x: -66
                        y: -2
                        width: 60
                        height: 42
                        color: "#ff5555"
                        TextInput {
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("150")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }
                }

                Text {
                    x: 118
                    y: 0
                    width: 17
                    height: 40
                    color: "#284863"
                    text: qsTr("%")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }
            }

            Rectangle {
                id: rectangle8
                x: 13
                y: 201
                width: 329
                height: 40
                color: "#ffffff"
                Text {
                    x: 0
                    y: 0
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("Interruption")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Image {
                    x: 267
                    y: 1
                    width: 62
                    height: 38
                    source: "images/BGForHeader.svg"
                    sourceSize.height: 77
                    sourceSize.width: 135
                    fillMode: Image.Pad
                    Image {
                        id:on_button_fill140
                        x: 5
                        y: 8
                        width: 44/2
                        visible: false
                        source: "images/On_button_fill.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill142
                        x: 5
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-2.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill141
                        x: 35
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-1.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    MouseArea {
                        x: -6
                        y: -2
                        width: 86
                        height: 42
                        onClicked: {
                            if(on_button_fill140.visible===true){
                                on_button_fill140.visible=false
                                on_button_fill141.visible=true
                                on_button_fill142.x=5
                                toggleItem("Interruption", interruptionThMedium.text);

                            }
                            else{
                                on_button_fill140.visible=true
                                on_button_fill141.visible=false
                                on_button_fill142.x=35
                                toggleItem("Interruption", interruptionThMedium.text);
                            }
                        }
                    }

                    Rectangle {
                        x: -130
                        y: -2
                        width: 60
                        height: 42
                        color: "#fcae18"
                        TextInput {
                            id:interruptionThMedium
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("10")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }

                    Rectangle {
                        x: -66
                        y: -2
                        width: 60
                        height: 42
                        color: "#ff5555"
                        TextInput {
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("5")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }
                }

                Text {
                    x: 118
                    y: 0
                    width: 17
                    height: 40
                    color: "#284863"
                    text: qsTr("%")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }
            }

            Rectangle {
                id: rectangle10
                x: 13
                y: 251
                width: 329
                height: 40
                color: "#ffffff"
                Text {
                    x: 0
                    y: 0
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("RVC")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Image {
                    x: 267
                    y: 1
                    width: 62
                    height: 38
                    source: "images/BGForHeader.svg"
                    sourceSize.height: 77
                    sourceSize.width: 135
                    fillMode: Image.Pad
                    Image {
                        id:on_button_fill150
                        x: 5
                        y: 8
                        visible: false
                        width: 44/2
                        source: "images/On_button_fill.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill152
                        x: 5
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-2.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill151
                        x: 35
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-1.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    MouseArea {
                        x: -6
                        y: -2
                        width: 86
                        height: 42
                        onClicked: {
                            if(on_button_fill150.visible===true){
                                on_button_fill150.visible=false
                                on_button_fill151.visible=true
                                on_button_fill152.x=5
                                toggleItem("RVC", rvcThMedium.text);

                            }
                            else{
                                on_button_fill150.visible=true
                                on_button_fill151.visible=false
                                on_button_fill152.x=35
                                toggleItem("RVC", rvcThMedium.text);
                            }
                        }
                    }

                    Rectangle {
                        x: -130
                        y: -2
                        width: 60
                        height: 42
                        color: "#fcae18"
                        TextInput {
                            id:rvcThMedium
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("±" + "10")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }

                    Rectangle {
                        x: -66
                        y: -2
                        width: 60
                        height: 42
                        color: "#ff5555"
                        TextInput {
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("±" + "90")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }
                }

                Text {
                    x: 118
                    y: 0
                    width: 17
                    height: 40
                    color: "#284863"
                    text: qsTr("%")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }
            }

            Rectangle {
                id: rectangle11
                x: 13
                y: 301
                width: 329
                height: 40
                color: "#ffffff"
                Text {
                    x: 0
                    y: 0
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("Histeresis")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Image {
                    x: 267
                    y: 1
                    width: 62
                    height: 38
                    source: "images/BGForHeader.svg"
                    sourceSize.height: 77
                    sourceSize.width: 135
                    fillMode: Image.Pad
                    Image {
                        id:on_button_fill160
                        x: 5
                        y: 8
                        width: 44/2
                        visible: false
                        source: "images/On_button_fill.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill162
                        x: 5
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-2.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill161
                        x: 35
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-1.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    MouseArea {
                        x: -6
                        y: -2
                        width: 86
                        height: 42
                        onClicked: {
                            if(on_button_fill160.visible===true){
                                on_button_fill160.visible=false
                                on_button_fill161.visible=true
                                on_button_fill162.x=5
                                toggleItem("Histeresis", histeresis.text);
                            }
                            else{
                                on_button_fill160.visible=true
                                on_button_fill161.visible=false
                                on_button_fill162.x=35
                                toggleItem("Histeresis", histeresis.text);
                            }
                        }
                    }

                    Rectangle {
                        x: -130
                        y: -2
                        width: 60
                        height: 42
                        color: "#eff2f6"
                        TextInput {
                            id:histeresis
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#284863"
                            text: qsTr("5")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }


                }

                Text {
                    x: 118
                    y: 0
                    width: 17
                    height: 40
                    color: "#284863"
                    text: qsTr("%")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }
            }

            Rectangle {
                id: rectangle12
                x: 13
                y: 351
                width: 329
                height: 40
                color: "#ffffff"
                Text {
                    x: 0
                    y: 0
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("Inrush Current")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Image {
                    x: 267
                    y: 1
                    width: 62
                    height: 38
                    source: "images/BGForHeader.svg"
                    sourceSize.height: 77
                    sourceSize.width: 135
                    fillMode: Image.Pad
                    Image {
                        id:on_button_fill170
                        x: 5
                        y: 8
                        width: 44/2
                        visible: false
                        source: "images/On_button_fill.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill172
                        x: 5
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-2.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill171
                        x: 35
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-1.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    MouseArea {
                        x: -6
                        y: -2
                        width: 86
                        height: 42
                        onClicked: {
                            if(on_button_fill170.visible===true){
                                on_button_fill170.visible=false
                                on_button_fill171.visible=true
                                on_button_fill172.x=5
                                toggleItem("Inrush Current", inrushCurThMedium.text);

                            }
                            else{
                                on_button_fill170.visible=true
                                on_button_fill171.visible=false
                                on_button_fill172.x=35
                                toggleItem("Inrush Current", inrushCurThMedium.text);
                            }
                        }
                    }

                    Rectangle {
                        x: -130
                        y: -2
                        width: 60
                        height: 42
                        color: "#fcae18"
                        TextInput {
                            id:inrushCurThMedium
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("3,00 A")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }

                    Rectangle {
                        x: -66
                        y: -2
                        width: 60
                        height: 42
                        color: "#ff5555"
                        TextInput {
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("5,00 A")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }
                }
            }


            Rectangle {
                id: rectangle13
                x: 13
                y: 401
                width: 329
                height: 40
                color: "#ffffff"
                Text {
                    x: 0
                    y: -10
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("Frequency")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Image {
                    x: 267
                    y: 1
                    width: 62
                    height: 38
                    source: "images/BGForHeader.svg"
                    sourceSize.height: 77
                    sourceSize.width: 135
                    fillMode: Image.Pad
                    Image {
                        id:on_button_fill180
                        x: 5
                        y: 8
                        width: 44/2
                        visible: false
                        source: "images/On_button_fill.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill182
                        x: 5
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-2.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill181
                        x: 35
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-1.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    MouseArea {
                        x: -6
                        y: -2
                        width: 86
                        height: 42
                        onClicked: {
                            if(on_button_fill180.visible===true){
                                on_button_fill180.visible=false
                                on_button_fill181.visible=true
                                on_button_fill182.x=5
                                toggleItem("Frequency 1Wave", freq1ThMedium.text);

                            }
                            else{
                                on_button_fill180.visible=true
                                on_button_fill181.visible=false
                                on_button_fill182.x=35
                                toggleItem("Frequency 1Wave", freq1ThMedium.text);
                            }
                        }
                    }

                    Rectangle {
                        x: -130
                        y: -2
                        width: 60
                        height: 42
                        color: "#fcae18"
                        TextInput {
                            id:freq1ThMedium
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("±" + "10")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }

                    Rectangle {
                        x: -66
                        y: -2
                        width: 60
                        height: 42
                        color: "#ff5555"
                        TextInput {
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("±" + "20")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }
                }

                Text {
                    x: 118
                    y: 0
                    width: 17
                    height: 40
                    color: "#284863"
                    text: qsTr("%")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    x: 0
                    y: 9
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("1 Wave")
                    font.letterSpacing: -2
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }
            }

            Rectangle {
                id: rectangle14
                x: 13
                y: 451
                width: 329
                height: 40
                color: "#ffffff"
                Text {
                    x: 0
                    y: -10
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("Frequency")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Image {
                    x: 267
                    y: 1
                    width: 62
                    height: 38
                    source: "images/BGForHeader.svg"
                    sourceSize.height: 77
                    sourceSize.width: 135
                    fillMode: Image.Pad
                    Image {
                        id:on_button_fill190
                        x: 5
                        y: 8
                        width: 22
                        visible: false
                        source: "images/On_button_fill.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill192
                        x: 5
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-2.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill191
                        x: 35
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-1.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    MouseArea {
                        x: -6
                        y: -2
                        width: 86
                        height: 42
                        onClicked: {
                            if(on_button_fill190.visible===true){
                                on_button_fill190.visible=false
                                on_button_fill191.visible=true
                                on_button_fill192.x=5
                                toggleItem("Frequency 200ms", freq2ThMedium.text);



                            }
                            else{
                                on_button_fill190.visible=true
                                on_button_fill191.visible=false
                                on_button_fill192.x=35
                                toggleItem("Frequency 200ms", freq2ThMedium.text);

                            }
                        }
                    }

                    Rectangle {
                        x: -130
                        y: -2
                        width: 60
                        height: 42
                        color: "#fcae18"
                        TextInput {
                            id:freq2ThMedium
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("±" + "10")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }

                    Rectangle {
                        x: -66
                        y: -2
                        width: 60
                        height: 42
                        color: "#ff5555"
                        TextInput {
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("±" + "20")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }
                }

                Text {
                    x: 118
                    y: 0
                    width: 17
                    height: 40
                    color: "#284863"
                    text: qsTr("%")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    x: 0
                    y: 9
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("200ms")
                    font.letterSpacing: -2
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }
            }

            Rectangle {
                id: rectangle15
                x: 13
                y: 501
                width: 329
                height: 40
                color: "#ffffff"
                Text {
                    x: 0
                    y: 0
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("Transient")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Image {
                    x: 267
                    y: 1
                    width: 62
                    height: 38
                    source: "images/BGForHeader.svg"
                    sourceSize.height: 77
                    sourceSize.width: 135
                    fillMode: Image.Pad
                    Image {
                        id:on_button_fill1110
                        x: 5
                        y: 8
                        width: 44/2
                        visible: false
                        source: "images/On_button_fill.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill1112
                        x: 5
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-2.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:on_button_fill1111
                        x: 35
                        y: 8
                        width: 24
                        visible: true
                        source: "images/On_button_fill-1.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    MouseArea {
                        x: -6
                        y: -2
                        width: 86
                        height: 42
                        onClicked: {
                            if(on_button_fill1110.visible===true){
                                on_button_fill1110.visible=false
                                on_button_fill1111.visible=true
                                on_button_fill1112.x=5
                                toggleItem("Transient", transientThMedium.text);

                            }
                            else{
                                on_button_fill1110.visible=true
                                on_button_fill1111.visible=false
                                on_button_fill1112.x=35
                                toggleItem("Transient", transientThMedium.text);
                            }
                        }
                    }

                    Rectangle {
                        x: -130
                        y: -2
                        width: 60
                        height: 42
                        color: "#fcae18"
                        TextInput {
                            id:transientThMedium
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("3,00 kW")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }

                    Rectangle {
                        x: -66
                        y: -2
                        width: 60
                        height: 42
                        color: "#ff5555"
                        TextInput {
                            x: 0
                            y: 0
                            width: parent.width
                            height: 42
                            color: "#ffffff"
                            text: qsTr("5,00 kW")
                            font.pixelSize: 15
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            onTextChanged: {
                                // Girilen değer 9999'dan büyükse, değeri 9999'a ayarla
                                if (parseInt(text) > 9999) {
                                    text = "9999";
                                }
                            }
                            clip: true
                        }
                    }
                }
            }
        }

        Text {
            id: memoryTypeText
            x: 13
            y: 4
            width: 121
            height: 47
            color: "#284863"
            text: qsTr("Event Type")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        Text {
            id: memoryTypeText1
            x: 134
            y: 4
            width: 140
            height: 47
            color: "#284863"
            text: qsTr("Threshold Limits")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"

            Image {
                id: eventSettings
                x: 767
                y: 320
                width: 379
                height: 415
                horizontalAlignment: Image.AlignRight
                verticalAlignment: Image.AlignBottom
                source: "images/EventSettings.svg"
                sourceSize.height: 800
                sourceSize.width: 1280
                clip: false
                fillMode: Image.Pad
            }
        }

        Text {
            id: memoryTypeText2
            x: 280
            y: 4
            width: 62
            height: 47
            color: "#284863"
            text: qsTr("State")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: memoryTypeText7
            x: 371
            y: 336
            width: 161
            height: 30
            color: "#284863"
            text: qsTr("DESCIRIPTION")
            font.letterSpacing: -2
            font.pixelSize: 22
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Light"
        }

        Text {
            id: memoryTypeText8
            x: 371
            y: 366
            width: 161
            height: 30
            color: "#284863"
            text: qsTr("Dip")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: memoryTypeText9
            x: 371
            y: 396
            width: 460
            height: 56
            color: "#284863"
            text: "Voltage magnitude specified for the purpose of\ndetecting the start and the end of a voltage  dip"
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: memoryTypeText10
            x: 371
            y: 452
            width: 460
            height: 33
            color: "#284863"
            text: "IEEE-1159 Dip defination"
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: memoryTypeText11
            x: 371
            y: 485
            width: 460
            height: 126
            color: "#284863"
            text: "3.1.51 sag: A decrease to between 0.1 and 0.9 pu in rms voltage or current at the power\nfrequency for durations of 0.5 cycle to 1 min. Typical values are 0.1 to 0.9 pu."
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: memoryTypeText12
            x: 915
            y: 4
            width: 112
            height: 47
            color: "#284863"
            text: qsTr("Set Events")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: memoryTypeText13
            x: 1056
            y: 4
            width: 84
            height: 47
            color: "#284863"
            text: qsTr("Percent")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: perc
            x: 1057
            y: 37
            width: 83
            height: 16
            color: "#284863"
            text: qsTr("(%)")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }
        Text {
            id: memoryTypeText14
            x: 1129
            y: 4
            width: 154
            height: 47
            color: "#284863"
            text: qsTr("Threshold Values")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: perc1
            x: 1156
            y: 37
            width: 42
            height: 16
            color: "#284863"
            text: qsTr("Min")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: perc2
            x: 1218
            y: 37
            width: 42
            height: 16
            color: "#284863"
            text: qsTr("Max")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: perc3
            x: 915
            y: 37
            width: 83
            height: 16
            color: "#284863"
            text: qsTr("Type Name")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }
    }


    Text {
        x: 448  // ya da istediğiniz bir başka konum
        y: 8  // rangeSlider'ın biraz üstünde görünmesi için
        text: "Value 1: " + rangeSlider.first.value.toFixed(2) // 2 basamakla sınırlı olarak gösterilir
        color: "black"
    }

    Text {
        x: 572  // ya da istediğiniz bir başka konum
        y: 8  // rangeSlider'ın biraz üstünde görünmesi için
        text: "Value 1: " + secondTH.x.toFixed(2) // 2 basamakla sınırlı olarak gösterilir
        color: "black"
    }








    ListView {
        x: 913
        y: 61
        width: 221
        height: 220
        spacing: 25
        model: itemsModel


        delegate:
            Item {
            Text {
                color: "#284863"
                x:3
                text: model.name
                font.pixelSize: 15
        }
            Text {
                color: "#284863"
                x: 144
                text:model.extraInfo
                font.pixelSize: 15
            }



    }
    }

    ListModel {
        id: itemsModel

    }

    Image {
        id: recordNow
        x: 1014
        y: 619
        width: 532/2
        source: "images/RecordNow.svg"
        fillMode: Image.PreserveAspectFit
        MouseArea{
        x:0
        y:0
        width: parent.width
        height: parent.height
        onClicked: {
            if(forRecord===true){
                eventRecAnimation.start()
//                eventRecAnimation.resume()
                forRecord=false
             }
            else{
                eventRecAnimation.stop()
                forRecord=true
            }
        }
        }
    }

    Rectangle {
        id: rectangle26
        x: 360
        y: 618
        width: 651
        height: 134
        color: "#f7f8fa"
    }
    function toggleItem(name, extraInfo) {
        for (var i = 0; i < itemsModel.count; i++) {
            if (itemsModel.get(i).name === name) {
                itemsModel.remove(i);
                return;
            }
        }
        itemsModel.append({name: name, extraInfo: extraInfo}); // Her öğe için "name" ve "extraInfo" özelliklerini tanımlayarak obje ekledik
    }




}


