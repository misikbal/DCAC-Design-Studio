import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtQuick.Shapes 1.0
import QtQuick.Layouts 1.10
import QtQuick.Timeline 1.0



Rectangle {
    id: rectangle1
    width: 1280
    height: 800
    color: "#F7F8FA"
    border.color: "#ffffff"
    border.width: 0
    layer.enabled: true

    property int animationsForCurrentClickedSmallCircle: 150
    property int animationsForcurrentClickedCircle: 1000
    property int animationsForcurrentClickedCircleClosed: 450
    property int animationsForcurrentClickedCircleOpenedClosed: 300


    property string colorCodeRed: String("#FF5555")
    property string colorCodeOrange: String("#FCAE18")
    property string colorCodegGreen: String("#4EC040")
    property string colorCodeGray: String("#ADB1B4")

    property alias stackViewstatus: stackViewStatusForQtR01
    property alias pagenametext: pageNameText.text

    Component.onCompleted: {

        imagePF1Animation.start()
        imagePF2Animation2.start()
        unbalancesRotationBig.start()
        groupDotRotation.start()
        currentRotationBig.start()
        currentRotationSmall.start()
        flickerRotationBig.start()
        flickerRotationSmall.start()
        frequencyRotationBig.start()
        frequencyRotationSmall.start()
        unbalanceRotationBig.start()
        unbalanceRotationSmall.start()
        powerRotationBig.start()
        powerRotationSmall.start()
        voltageRotationBig.start()
        voltageRotationSmall.start()
        rotatePQ.start()


    }



    Image {
        id: rectangle87
        x: 10
        y: 85
        width: 287/2
        source: "images/Rectangle 87.svg"
        fillMode: Image.PreserveAspectFit


    }













    Rectangle {
        id: powerQualityRectangle
        x: 0
        y: 0
        width: 1280
        height: 800
        visible: false
        color: "#ffffff"


        Rectangle {
            id: rectangle13
            x: 442
            y: 0
            width: 471
            height: 728
            color: "#00ffffff"
            Rectangle {
                id: rectangle25
                x: 0
                y: 0
                width: 471
                height: 728
                color: "#00ffffff"
                Image {
                    id: vector284
                    x: 205
                    y: 276
                    width: 57/2
                    source: "images/Vector 284.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector6
                    x: 0
                    y: 163
                    height: 641/2
                    source: "images/Vector-6.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector5
                    x: 0
                    y: 176
                    height: 587/2
                    source: "images/Vector-5.svg"
                    fillMode: Image.PreserveAspectFit
                    Text {
                        id: systemRiskyText
                        x: 20/2
                        y: 20
                        width: 100
                        height: 450/2
                        color: "#ffffff"
                        text: qsTr("System is medium risky! \n\nRisk time")
                        font.letterSpacing: -2
                        font.pixelSize: 24
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                    }

                    Text {
                        id: systemRiskyTimeText
                        x: 20/2
                        y: 200
                        width: 125
                        height: 200/2
                        color: "#ffffff"
                        text: qsTr("14m:10s:3ms")
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        verticalAlignment: Text.AlignTop
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }
                }

                Image {
                    id: vector7
                    x: 0
                    y: 136
                    height: 751/2
                    source: "images/Vector-7.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector1
                    x: 19
                    y: 458
                    width: 308/2
                    source: "images/Vector-1.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector3
                    x: 17
                    y: 108
                    width: 308/2
                    source: "images/Vector-3.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector2
                    x: 152
                    y: 325
                    width: 162/2
                    source: "images/Vector-2.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector285
                    x: 152
                    y: 431
                    width: 97/2
                    source: "images/Vector 285.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector
                    x: 152
                    y: 170
                    width: 162/2
                    source: "images/Vector.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: group9728
                    x: 92
                    y: 533
                    width: 63/2
                    source: "images/Group 9728.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: group9727
                    x: 195
                    y: 458
                    width: 155/2
                    source: "images/Group 9727.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: group9726
                    x: 237
                    y: 375
                    width: 176/2
                    source: "images/Group 9726.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: group9725
                    x: 233
                    y: 280
                    width: 199/2
                    source: "images/Group 9725.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector10
                    x: 159
                    y: 20
                    width: 214/2
                    source: "images/Vector-10.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector20Edited
                    x: 290
                    y: 106
                    width: 214/2
                    source: "images/Vector-20.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector12Edited
                    x: 347
                    y: 238
                    width: 214/2
                    source: "images/Vector-12.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector18Edited
                    x: 341
                    y: 379
                    width: 214/2
                    source: "images/Vector-18.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector14Edited
                    x: 275
                    y: 512
                    width: 214/2
                    source: "images/Vector-14.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector16Edited
                    x: 137
                    y: 578
                    width: 214/2
                    source: "images/Vector-16.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: group9724
                    x: 215
                    y: 170
                    width: 117/2
                    source: "images/Group 9724.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: vector9
                    x: 151
                    y: 12
                    width: 245/2
                    source: "images/Vectoredited.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Image {
                    id: vector5Edited
                    x: 282
                    y: 98
                    width: 245/2
                    source: "images/Vector-5edited.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Image {
                    id: vector3Edited
                    x: 339
                    y: 230
                    width: 245/2
                    source: "images/Vector-3edited.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Image {
                    id: vector1Edited
                    x: 333
                    y: 371
                    width: 245/2
                    source: "images/Vector-1edited.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Image {
                    id: vector6Edited
                    x: 267
                    y: 504
                    width: 245/2
                    source: "images/Vector-5edited.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Image {
                    id: vector2Edited
                    x: 129
                    y: 570
                    width: 245/2
                    source: "images/Vector-2edited.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Image {
                    id: group9722
                    x: 100
                    y: 76
                    width: 93/2
                    source: "images/Group 9722.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: ellipse197
                    x: 169
                    y: 30
                    width: 174/2
                    source: "images/Ellipse 197.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: text54
                    x: 152
                    y: 49
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("Current")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }

                ParallelAnimation {
                    id: currentClicked
                    NumberAnimation {
                        target: rectangle27
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.5
                    }

                    NumberAnimation {
                        target: rectangle27
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 300
                    }

                    NumberAnimation {
                        target: rectangle27
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 30
                    }
                }

                ParallelAnimation {
                    id: currentnonClicked
                    onStopped: {
                        closeCurrent.start()
                    }
                    NumberAnimation {
                        target: rectangle27
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed
                        to: 0.2
                    }

                    NumberAnimation {
                        target: rectangle27
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed
                        to: 275
                    }

                    NumberAnimation {
                        target: rectangle27
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed
                        to: -235
                    }
                }

                MouseArea {
                    id: mouseAreaForCurrent
                    x: 100
                    y: 8
                    width: 172
                    height: 128
                    onClicked: {
                        currentClickedSmallCircle1.start()
                        rectangle25.x=1500
                        rectangle26.x=442
                        rectangle26.y=72
                        rectangle27.visible=true
                        curAnim1.start()
                        groupDot.visible=false
                        currentClicked.start()
                        currentClickedCircle1.start()

                    }
                    enabled: true
                }

                Text {
                    id: text55
                    x: 152
                    y: 76
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("275")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                RectangleItem {
                    id: rectangle16
                    x: 282
                    y: 98
                    width: 245/2
                    height: 245/2
                    fillColor: "#00ffffff"
                    strokeWidth: -1
                }

                Image {
                    x: 300
                    y: 116
                    width: 174/2
                    source: "images/Ellipse 198.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: text56
                    x: 283
                    y: 162
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("1285")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                RectangleItem {
                    id: rectangle17
                    x: 339
                    y: 230
                    width: 245/2
                    height: 245/2
                    fillColor: "#00ffffff"
                    strokeWidth: -1
                }

                Image {
                    x: 357
                    y: 248
                    width: 174/2
                    source: "images/Ellipse 199.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    x: 340
                    y: 294
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("1285")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                RectangleItem {
                    id: rectangle18
                    x: 333
                    y: 371
                    width: 245/2
                    height: 245/2
                    fillColor: "#00ffffff"
                    strokeWidth: -1
                }

                Image {
                    x: 351
                    y: 389
                    width: 174/2
                    source: "images/Ellipse 200.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    x: 334
                    y: 435
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("1285")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                RectangleItem {
                    id: rectangle19
                    x: 267
                    y: 504
                    width: 245/2
                    height: 245/2
                    fillColor: "#00ffffff"
                    strokeWidth: -1
                }

                Image {
                    x: 285
                    y: 522
                    width: 174/2
                    source: "images/Ellipse 201.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    x: 268
                    y: 568
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("335")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                RectangleItem {
                    id: rectangle20
                    x: 129
                    y: 570
                    width: 245/2
                    height: 245/2
                    fillColor: "#00ffffff"
                    strokeWidth: -1
                }

                Image {
                    x: 147
                    y: 588
                    width: 174/2
                    source: "images/Ellipse 202.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    x: 130
                    y: 607
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("Voltage")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }

                Text {
                    x: 268
                    y: 541
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("Power")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    x: 130
                    y: 634
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("1285")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    x: 283
                    y: 135
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("Flicker")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }

                Text {
                    x: 334
                    y: 408
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("Unbalance")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }

                Text {
                    x: 340
                    y: 267
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("Frequency")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }

            Image {
                id: groupDot
                x: -168
                y: 152
                width: 684/2
                source: "images/GroupDot.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: menu11
                x: -442
                y: 0
                width: 885/2
                source: "images/Menu-1.svg"
                fillMode: Image.PreserveAspectFit
            }

            Rectangle {
                id: rectangle12
                x: -442
                y: 0
                width: 1280
                height: 728
                color: "#00ffffff"
                Image {
                    id: rectangle104
                    x: 163
                    y: 331
                    width: 531/2
                    source: "images/Rectangle 104.svg"
                    fillMode: Image.PreserveAspectFit
                    Text {
                        id: pfHeaderText
                        x: 50/2
                        y: 0
                        width: 222
                        height: 144/2
                        color: "#284863"
                        text: qsTr("PF")
                        font.letterSpacing: -2
                        font.pixelSize: 26
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                    }
                }

                Rectangle {
                    id: rectangle21
                    x: 184
                    y: 586
                    width: 11
                    height: 19
                    color: "#ea0000"
                    radius: 5.5
                }

                Text {
                    id: text16
                    x: 205
                    y: 584
                    width: 90
                    height: 50/2
                    color: "#284863"
                    text: qsTr("A: 0.94")
                    font.letterSpacing: -2
                    font.pixelSize: 21
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Rectangle {
                    id: rectanglerPF
                    x: 224
                    y: 390
                    width: 150
                    height: 150
                    color: "#ffffff"
                    radius: 100
                    border.color: "#dde1e6"
                    border.width: 1
                    layer.effect: OpacityMask {
                        maskSource: Item {
                            width: rectanglerPF.width
                            height: rectanglerPF.height
                            Rectangle {
                                width: rectanglerPF.adapt ? rectanglerPF.width : Math.min(rectanglerPF.width, rectanglerPF.height)
                                height: rectanglerPF.adapt ? rectanglerPF.height : width
                                radius: 100
                                anchors.centerIn: parent
                            }
                        }
                    }
                    Image {
                        id: imagePF2
                        x: -500
                        y: 65
                        width: 2600
                        height: 180
                        source: "images/graph2.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: imagePF1
                        x: -1700
                        y: 65
                        width: 2600
                        height: 180
                        source: "images/graph1.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: text52
                        x: 35
                        y: 20
                        width: 158/2
                        height: 50/2
                        color: "#284863"
                        text: qsTr("kVAR")
                        font.letterSpacing: -2
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Regular"
                        font.family: "Akshar"
                    }

                    Text {
                        id: text53
                        x: 35
                        y: 100
                        width: 158/2
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("kW")
                        font.letterSpacing: -2
                        font.pixelSize: 25
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Regular"
                        font.family: "Akshar"
                    }
                    layer.enabled: true
                }

                Text {
                    id: text17
                    x: 205
                    y: 618
                    width: 90
                    height: 50/2
                    color: "#284863"
                    text: qsTr("C: 0.94")
                    font.letterSpacing: -2
                    font.pixelSize: 21
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: text18
                    x: 340
                    y: 584
                    width: 90
                    height: 50/2
                    color: "#284863"
                    text: qsTr("B: 0.94")
                    font.letterSpacing: -2
                    font.pixelSize: 21
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: text19
                    x: 340
                    y: 618
                    width: 90
                    height: 50/2
                    color: "#284863"
                    text: qsTr("N: 0.94")
                    font.letterSpacing: -2
                    font.pixelSize: 21
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Rectangle {
                    id: rectangle22
                    x: 184
                    y: 621
                    width: 11
                    height: 19
                    color: "#217efd"
                    radius: 5.5
                }

                Rectangle {
                    id: rectangle23
                    x: 317
                    y: 586
                    width: 11
                    height: 19
                    color: "#fc9318"
                    radius: 5.5
                }

                Rectangle {
                    id: rectangle24
                    x: 317
                    y: 620
                    width: 11
                    height: 19
                    color: "#4ec040"
                    radius: 5.5
                }

                Image {
                    id: rectangle105
                    x: 163
                    y: 13
                    width: 531/2
                    source: "images/Rectangle 105.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: unbalanceHeaderText
                    x: 188
                    y: 13
                    width: 222
                    height: 138/2
                    color: "#284863"
                    text: qsTr("Unbalance")
                    font.letterSpacing: -2
                    font.pixelSize: 26
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }

                RectangleItem {
                    id: rectangle
                    x: 164
                    y: 52
                    width: 265
                    height: 265
                    fillColor: "#008b2626"
                    strokeWidth: -1
                    Image {
                        id: ellipse203
                        x: 26
                        y: 15
                        width: 413/2
                        source: "images/Ellipse 203.svg"
                        fillMode: Image.PreserveAspectFit
                        rotation: 0
                    }

                    PieItem {
                        id: pie3
                        x: 60
                        y: 48
                        width: 280/2
                        height: 280/2
                        end: 420
                        gradient: RadialGradient {
                            focalX: 68.5
                            centerRadius: 68.5
                            GradientStop {
                                position: 0
                                color: "#217efd"
                            }

                            GradientStop {
                                position: 1
                                color: "#00217efd"
                            }
                            focalRadius: 0
                            centerY: 68.5
                            focalY: 68.5
                            centerX: 68.5
                        }
                        begin: 300
                        strokeColor: "#00ff0000"
                    }

                    Image {
                        id: group9791
                        x: 130
                        y: 115
                        width: 135/2
                        source: "images/Group 9791.svg"
                        fillMode: Image.PreserveAspectFit
                        rotation: 30
                        transformOrigin: Item.Left
                    }

                    PieItem {
                        id: pie2
                        x: 60
                        y: 48
                        width: 280/2
                        height: 280/2
                        end: 300
                        gradient: RadialGradient {
                            focalX: 68.5
                            centerRadius: 68.5
                            GradientStop {
                                position: 0
                                color: "#fcae18"
                            }

                            GradientStop {
                                position: 1
                                color: "#00217efd"
                            }
                            focalRadius: 0
                            centerY: 68.5
                            focalY: 68.5
                            centerX: 68.5
                        }
                        begin: 180
                        strokeColor: "#00ff0000"
                    }

                    Image {
                        id: group9789
                        x: 130
                        y: 115
                        width: 135/2
                        source: "images/Group 9789.svg"
                        fillMode: Image.PreserveAspectFit
                        rotation: 160
                        transformOrigin: Item.Left
                    }

                    PieItem {
                        id: pie1
                        x: 60
                        y: 48
                        width: 280/2
                        height: 280/2
                        end: 180
                        gradient: RadialGradient {
                            focalX: 68.5
                            centerRadius: 68.5
                            GradientStop {
                                position: 0
                                color: "#ff5654"
                            }

                            GradientStop {
                                position: 1
                                color: "#00217efd"
                            }
                            focalRadius: 0
                            centerY: 68.5
                            focalY: 68.5
                            centerX: 68.5
                        }
                        begin: 60
                        strokeColor: "#00ff0000"
                    }

                    Image {
                        id: group97901
                        x: 130
                        y: 115
                        width: 135/2
                        height: 6
                        source: "images/Group 9790.svg"
                        fillMode: Image.PreserveAspectFit
                        rotation: 270
                        transformOrigin: Item.Left
                    }
                }

                Text {
                    id: text10
                    x: 171
                    y: 283
                    width: 90
                    height: 50/2
                    color: "#284863"
                    text: qsTr("A: 119.2°")
                    font.letterSpacing: -2
                    font.pixelSize: 21
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: text12
                    x: 255
                    y: 283
                    width: 90
                    height: 50/2
                    color: "#284863"
                    text: qsTr("B: 119.2°")
                    font.letterSpacing: -2
                    font.pixelSize: 21
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: text222
                    x: 339
                    y: 283
                    width: 90
                    height: 50/2
                    color: "#284863"
                    text: qsTr("C: 119.2°")
                    font.letterSpacing: -2
                    font.pixelSize: 21
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Image {
                    id: menu3
                    x: 913
                    y: 0
                    width: 734/2
                    source: "images/Menu.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: thdVoltageHeader
                    x: 925
                    y: 425
                    width: 285/2
                    height: 480/2
                    color: "#284863"
                    text: qsTr("THD \nTHD \nTDD")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    font.styleName: "Bold"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    id: harmonicsValues
                    x: 925
                    y: 445
                    width: 180/2
                    height: 480/2
                    color: "#284863"
                    text: qsTr("Voltage \nCurrent \nCurrent")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    font.styleName: "Light"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    id: harmonicsValuesPhaseA
                    x: 1000
                    y: 435
                    width: 150/2
                    height: 480/2
                    color: "#284863"
                    text: qsTr("25,47 \n21,14\n44,71")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    font.styleName: "Light"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    id: harmonicsValuesPhaseB
                    x: 1075
                    y: 435
                    width: 150/2
                    height: 480/2
                    color: "#284863"
                    text: qsTr("25,47 \n21,14\n44,71")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    font.styleName: "Light"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    id: harmonicsValuesPhaseC
                    x: 1145
                    y: 435
                    width: 150/2
                    height: 480/2
                    color: "#284863"
                    text: qsTr("25,47 \n21,14\n44,71")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    font.styleName: "Light"
                    font.family: "Akshar"
                    z: 1
                }

                CustomHeaderForPhaseN {
                    x: 1207
                    y: 383
                    width: 133/2
                    height: 62/2
                    clip: true
                }

                CustomHeaderForPhaseC {
                    x: 1136
                    y: 383
                    width: 133/2
                    height: 62/2
                    clip: true
                }

                CustomHeaderForPhaseB {
                    x: 1065
                    y: 383
                    width: 133/2
                    height: 62/2
                    clip: true
                }

                CustomHeaderForPhaseA {
                    x: 994
                    y: 383
                    width: 133/2
                    height: 62/2
                    clip: true
                }

                Text {
                    id: phaseBHarmonicHeader
                    x: 1071
                    y: 375
                    width: 60
                    height: 96/2
                    color: "#ffffff"
                    text: qsTr("Phase B")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id: phaseCHarmonicHeader
                    x: 1142
                    y: 375
                    width: 60
                    height: 96/2
                    color: "#ffffff"
                    text: qsTr("Phase C")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id: harmonicsValuesPhaseN
                    x: 1215
                    y: 435
                    width: 150/2
                    height: 480/2
                    color: "#284863"
                    text: qsTr("25,47 \n21,14\n44,71")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    font.styleName: "Light"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    id: eventsTexts
                    x: 1095
                    y: 84
                    width: 150/2
                    height: 500/2
                    color: "#284863"
                    text: qsTr("116 \n122 \n221 \n121 \n100")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    verticalAlignment: Text.AlignTop
                    lineHeight: 2.1
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    id: phaseAHarmonicHeader
                    x: 1000
                    y: 375
                    width: 60
                    height: 96/2
                    color: "#ffffff"
                    text: qsTr("Phase A")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id: eventsMediumRisksTexts
                    x: 1192
                    y: 87
                    width: 150/2
                    height: 500/2
                    color: "#fcae18"
                    text: qsTr("58 \n60 \n55 \n60 \n40")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    verticalAlignment: Text.AlignTop
                    lineHeight: 2.4
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    z: 1
                    styleColor: "#000000"
                }

                Text {
                    id: phaseNHarmonicHeader
                    x: 1213
                    y: 375
                    width: 120/2
                    height: 96/2
                    color: "#ffffff"
                    text: qsTr("Phase N")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id: eventsHighRisksTexts
                    x: 1245
                    y: 87
                    width: 150/2
                    height: 500/2
                    color: "#ff5854"
                    text: qsTr("58 \n60 \n55 \n60 \n40")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    verticalAlignment: Text.AlignTop
                    lineHeight: 2.4
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    z: 1
                    styleColor: "#000000"
                }

                CustomButtonHeaderWhiteBG {
                    x: 1091
                    y: 20
                    width: 150/2
                    height: 99/2
                    clip: true
                }

                Text {
                    id: events
                    x: 1098
                    y: 20
                    width: 250/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("Events")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                CustomButtonHeaderWhiteBG {
                    x: 1170
                    y: 20
                    width: 200/2
                    height: 99/2
                    clip: true
                }

                Text {
                    id: risks
                    x: 1175
                    y: 20
                    width: 250/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("Risks")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                CustomButtonHeaderBlackBG {
                    x: 925
                    y: 20
                    width: 325/2
                    height: 99/2
                    clip: true
                }

                Text {
                    id: dips
                    x: 925
                    y: 71
                    width: 285/2
                    height: 480/2
                    color: "#284863"
                    text: qsTr("Dips \nSweels \nInterrruptions \nRVC \nSags")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2
                    wrapMode: Text.Wrap
                    clip: true
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    id: eventtypes
                    x: 938
                    y: 20
                    width: 250/2
                    height: 96/2
                    color: "#ffffff"
                    text: qsTr("Event Types")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                CustomButtonHeaderWhiteBG {
                    x: 938
                    y: 314
                    width: 664/2
                    height: 99/2
                    clip: true
                }

                Text {
                    id: totalEventsValues
                    x: 1150
                    y: 315
                    width: 250/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("2,214")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                CustomButtonHeaderBlackBG {
                    x: 925
                    y: 314
                    width: 361/2
                    height: 99/2
                    clip: true
                }

                Text {
                    id: totalEventsText
                    x: 938
                    y: 315
                    width: 250/2
                    height: 96/2
                    color: "#ffffff"
                    text: qsTr("Total Event")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Column {
                    x: 1170
                    y: 84
                    width: 290/2
                    Repeater {
                        model: 5
                        Image {
                            id: group9730
                            x: 0
                            y: 0
                            width: 48/2
                            source: "images/Group 9730.svg"
                            fillMode: Image.PreserveAspectFit
                        }
                    }
                    spacing: 39/2
                }

                Column {
                    x: 1223
                    y: 84
                    width: 290/2
                    Repeater {
                        model: 5
                        Image {
                            id: group97301
                            x: 0
                            y: 0
                            width: 48/2
                            source: "images/Group 9729.svg"
                            fillMode: Image.PreserveAspectFit
                        }
                    }
                    spacing: 39/2
                }
            }

            PropertyAnimation {
                id: groupDotRotation
                target: groupDot
                loops: -1
                property: "rotation"
                duration: 500
                from:0
                to: 360
            }

            PropertyAnimation {
                id: menubuttonClickedTopMenuAnim
                target: topSubMenu
                property: "opacity"
                duration: 100
                to: 1
            }

            PropertyAnimation {
                id: menubuttonnonClickedTopMenuAnim
                target: topSubMenu
                property: "opacity"
                duration: 100
                to: 0
            }

            PropertyAnimation {
                id: unbalancesRotationBig
                target: ellipse203
                loops: -1
                property: "rotation"
                duration: 100
                from:0
                to: 360
            }

            PropertyAnimation {
                id: imagePF1Animation
                target: imagePF1
                property: "x"
                duration: 5000
                to: -650
                //        easing.type:Easing.InCubic
                onStopped: {
                    imagePF1Animation1.start()
                }
            }

            PropertyAnimation {
                id: imagePF1Animation1
                target: imagePF1
                property: "x"
                duration: 5000
                to: -1650
                //        easing.type:Easing.InCubic
                onStopped: {
                    imagePF1Animation.start()
                }
            }

            PropertyAnimation {
                id: imagePF2Animation
                target: imagePF2
                property: "x"
                duration: 5000
                to: -550
                //        easing.type:Easing.InCubic
                onStopped: {
                    imagePF2Animation2.start()
                }
            }

            PropertyAnimation {
                id: imagePF2Animation2
                target: imagePF2
                property: "x"
                duration: 5000
                to: -1900
                //        easing.type:Easing.InCubic
                onStopped: {
                    imagePF2Animation.start()
                }
            }

            PropertyAnimation {
                id: currentRotationBig
                target: vector9
                loops: -1
                property: "rotation"
                duration: 2000
                from:0
                to: 360
            }

            PropertyAnimation {
                id: currentRotationSmall
                target: vector10
                loops: -1
                property: "rotation"
                duration: 2000
                from:360
                to: 0
            }

            PropertyAnimation {
                id: flickerRotationSmall
                target: vector5Edited
                loops: -1
                property: "rotation"
                duration: 2000
                from:0
                to: 360
            }

            PropertyAnimation {
                id: flickerRotationBig
                target: vector20Edited
                loops: -1
                property: "rotation"
                duration: 2000
                from:360
                to: 0
            }

            PropertyAnimation {
                id: frequencyRotationSmall
                target: vector3Edited
                loops: -1
                property: "rotation"
                duration: 2000
                from:0
                to: 360
            }

            PropertyAnimation {
                id: frequencyRotationBig
                target: vector12Edited
                loops: -1
                property: "rotation"
                duration: 2000
                from:360
                to: 0
            }

            PropertyAnimation {
                id: unbalanceRotationSmall
                target: vector1Edited
                loops: -1
                property: "rotation"
                duration: 2000
                from:0
                to: 360
            }

            PropertyAnimation {
                id: unbalanceRotationBig
                target: vector18Edited
                loops: -1
                property: "rotation"
                duration: 2000
                from:360
                to: 0
            }

            PropertyAnimation {
                id: powerRotationSmall
                target: vector6Edited
                loops: -1
                property: "rotation"
                duration: 2000
                from:0
                to: 360
            }

            PropertyAnimation {
                id: powerRotationBig
                target: vector14Edited
                loops: -1
                property: "rotation"
                duration: 2000
                from:360
                to: 0
            }

            PropertyAnimation {
                id: voltageRotationSmall
                target:vector2Edited
                loops: -1
                property: "rotation"
                duration: 2000
                from:0
                to: 360
            }

            PropertyAnimation {
                id: voltageRotationBig
                target: vector16Edited
                loops: -1
                property: "rotation"
                duration: 2000
                from:360
                to: 0
            }

            PropertyAnimation {
                id: rectifierMenuOpened
                target: rectangle11
                property: "x"
                duration: 150
                to: 0
            }

            PropertyAnimation {
                id: rectifierMenuClosed
                target: rectangle11
                property: "x"
                duration: 150
                to: -150
            }
        }

        ParallelAnimation {
            id: closeCurrent
            NumberAnimation {
                target: rectangle25
                property: "x"
                duration: 1
                to: 0
            }

            NumberAnimation {
                target: rectangle25
                property: "y"
                duration: 1
                to: 0
            }

            NumberAnimation {
                target: rectangle26
                property: "x"
                duration: 1
                to: 442
            }

            NumberAnimation {
                target: rectangle26
                property: "y"
                duration: 1
                to: 1000
            }

            NumberAnimation {
                target: rectangle27
                property: "visible"
                duration: 1
                to: 0
            }

            NumberAnimation {
                target: groupDot
                property: "visible"
                duration: 1
                to: 1
            }
        }

        Rectangle {
            id: rectangle26
            x: 442
            y: 800
            width: 471
            height: 728
            color: "#00ffffff"
            MouseArea {
                id: mouseAreaForReturnBack
                x: 0
                y: 0
                width: 470
                height: 600
                onClicked: {
                    currentnonClickedSmallCircle1.start()
                    currentnonClicked.start()

                }
            }

            Rectangle {
                id: rectangle111
                x: 127
                y: 573
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    id: inCurrentEllipse3
                    x: 17
                    y: 20
                    width: 174/2
                    source: "images/InCurrentEllipse3.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: inCurrentVector1
                    x: -2
                    y: 0
                    width: 245/2
                    source: "images/InCurrentVector1.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: inCurrentVector2
                    x: 8
                    y: 9
                    width: 212/2
                    source: "images/InCurrentVector2.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: text517
                    x: -2
                    y: 61
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("275")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: text512
                    x: -2
                    y: 32
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("RMS")
                    font.letterSpacing: -2
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }

            Rectangle {
                id: rectangle15
                x: 254
                y: 581
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    id: inCurrentEllipse1
                    x: 15
                    y: 15
                    width: 174/2
                    source: "images/InCurrentEllipse1.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: inCurrentVector5
                    x: -3
                    y: -3
                    width: 245/2
                    source: "images/InCurrentVector5.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: text514
                    x: -2
                    y: 61
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("120")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: text510
                    x: -2
                    y: 32
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("KF")
                    font.letterSpacing: -2
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }

                Image {
                    id: inCurrentVector6
                    x: 5
                    y: 6
                    width: 212/2
                    source: "images/InCurrentVector6.svg"
                    fillMode: Image.PreserveAspectFit
                }
            }

            ParallelAnimation {
                id: currentClickedCircle1
                NumberAnimation {
                    target: inCurrentVector3
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 0
                    from: 360
                }

                NumberAnimation {
                    target: inCurrentVector4
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 360
                    from: 0
                }

                NumberAnimation {
                    target: inCurrentVector6
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 360
                    from: 0
                }

                NumberAnimation {
                    target: inCurrentVector5
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 0
                    from: 360
                }

                NumberAnimation {
                    target: inCurrentVector2
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 360
                    from: 0
                }

                NumberAnimation {
                    target: inCurrentVector1
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 0
                    from: 360
                }

                NumberAnimation {
                    target: lineCur6
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 360
                    from: 0
                }

                NumberAnimation {
                    target: lineCur5
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 0
                    from: 360
                }
            }

            Rectangle {
                id: rectangle112
                x: 7
                y: 526
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    id: inCurrentEllipse2
                    x: 15
                    y: 17
                    width: 174/2
                    source: "images/InCurrentEllipse2.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: inCurrentVector3
                    x: -3
                    y: -1
                    width: 245/2
                    source: "images/InCurrentVector3.svg"
                    fillMode: Image.PreserveAspectFit
                }

                SequentialAnimation {
                    id: currentClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: lineCur2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: rectangle112
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: lineCur3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: rectangle111
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: lineCur1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: rectangle15
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: lineCur4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: rectangle113
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 1
                            from: 0
                        }
                    }

                    NumberAnimation {
                        property: "opacity"
                        duration: animationsForCurrentClickedSmallCircle
                        to: 1
                        from: 0
                    }
                }

                SequentialAnimation {
                    id: currentnonClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: lineCur2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: rectangle112
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: lineCur3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: rectangle111
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: lineCur1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: rectangle15
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: lineCur4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: rectangle113
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }

                    NumberAnimation {
                        property: "opacity"
                        duration: animationsForCurrentClickedSmallCircle
                        to: 0
                        from: 1
                    }
                }

                Image {
                    id: inCurrentVector4
                    x: 5
                    y: 7
                    width: 212/2
                    source: "images/InCurrentVector4.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: text515
                    x: -2
                    y: 61
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("275")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: text511
                    x: -2
                    y: 32
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("DC")
                    font.letterSpacing: -2
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }

            Image {
                id: lineCur1
                x: 264
                y: 529
                opacity: 0
                source: "images/LineCur1.svg"
                fillMode: Image.PreserveAspectFit
                rotation: 44.398
            }

            Image {
                id: lineCur2
                x: 105
                y: 477
                opacity: 0
                source: "images/LineCur2.svg"
                fillMode: Image.PreserveAspectFit
                rotation: 35
            }

            Image {
                id: lineCur3
                x: 183
                y: 515
                opacity: 0
                source: "images/LineCur3.svg"
                fillMode: Image.PreserveAspectFit
                rotation: 39.905
            }

            Rectangle {
                id: rectangle113
                x: 351
                y: 496
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    x: 15
                    y: 17
                    width: 174/2
                    source: "images/InCurrentEllipse2.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: lineCur5
                    x: -3
                    y: -1
                    width: 245/2
                    source: "images/InCurrentVector3.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: lineCur6
                    x: 5
                    y: 7
                    width: 212/2
                    source: "images/InCurrentVector4.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: text455
                    x: 23
                    y: 32
                    width: 70
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Int. H")
                    font.letterSpacing: -2
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }

                Text {
                    id: text516
                    x: -2
                    y: 61
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("120")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }
            }

            Image {
                id: lineCur4
                x: 352
                y: 467
                width: 6
                opacity: 0
                source: "images/LineCur2.svg"
                fillMode: Image.PreserveAspectFit
                rotation: -30
            }
        }

        ParallelAnimation {
            id: curAnim1
            NumberAnimation {
                target: vectorCur2
                property: "rotation"
                loops: -1
                duration: 1000
                to: 360
                from: 0
            }

            NumberAnimation {
                target: vectorCur41
                property: "rotation"
                loops: -1
                duration: 2000
                to: 0
                from: 360
            }

            NumberAnimation {
                target: vectorCur31
                property: "rotation"
                loops: -1
                duration: 2000
                to: 360
                from: 0
            }
        }

        Rectangle {
            id: rectangle27
            x: 275
            y: -235
            width: 760
            height: 760
            visible: false
            color: "#00ffffff"
            Image {
                id: vectorCur11
                x: 161
                y: 175
                source: "images/VectorCur1.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: vectorCur2
                x: 34
                y: 45
                width: 800/1.2
                source: "images/VectorCur2.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: vectorCur31
                x: -171
                y: -156
                source: "images/VectorCur3.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: vectorCur41
                x: 113
                y: 128
                source: "images/VectorCur4.svg"
                fillMode: Image.PreserveAspectFit
                rotation: 70
            }

            Text {
                id: text544
                x: 138
                y: 250
                width: 438
                height: 200
                color: "#ffffff"
                text: qsTr("Current")
                font.letterSpacing: -2
                font.pixelSize: 90
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: text545
                x: 138
                y: 350
                width: 438
                height: 200
                color: "#ffffff"
                text: qsTr("275")
                font.letterSpacing: -2
                font.pixelSize: 80
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            scale: 0.2
        }

    }



    Rectangle {
        id: rectangle14
        x: -170
        y: 72
        width: 327
        height: 728
        visible: false
        color: "#00ffffff"

        MouseArea {
            id: mouseAreaForSlideMenu
            x: 0
            y: 0
            width: 327
            height: 728
            onExited: {

                if(rectangle14.x>=500)
                {
                    rectangle14.x=1123
                    pageNameText.text="POWER"
                    powerTextClickedChangeBarX.start()
                    powerTextClickedChangeBarWidth.start()
                    mouseAreaForCurrent.enabled=false
                }
                else {
                    rectangle14.x=-170
                    pageNameText.text="POWER QUALITY"
                    powerQualityTextClicked.start()
                    powerQualityTextClickedChangeBarWidth.start()
                    mouseAreaForCurrent.enabled=true
                }

            }
            onMouseXChanged: {

                if(rectangle14.x>=500)
                {
                    rectangle14.x=1123
                    pageNameText.text="POWER"
                    powerTextClickedChangeBarX.start()
                    powerTextClickedChangeBarWidth.start()
                    mouseAreaForCurrent.enabled=false
                }

            }
            drag.target: parent
            onEntered: {

                if(rectangle14.x>=500)
                {
                    rectangle14.x=1123
                    pageNameText.text="POWER"
                    powerTextClickedChangeBarX.start()
                    powerTextClickedChangeBarWidth.start()
                    mouseAreaForCurrent.enabled=false
                }
                else {
                    rectangle14.x=-170
                    pageNameText.text="POWER QUALITY"
                    powerQualityTextClicked.start()
                    powerQualityTextClickedChangeBarWidth.start()
                    mouseAreaForCurrent.enabled=true
                }
            }
            drag.axis: Drag.XAxis
        }




        MouseArea {
            id: mouseAreaForSlideMenu2
            x: -2
            y: 0
            drag.target:parent
            width: 172
            height: 728


            drag.axis: Drag.XAxis

            onEntered:  {

                if(rectangle14.x<=500)
                {
                    rectangle14.x=-170
                    pageNameText.text="POWER QUALITY"
                    powerQualityTextClicked.start()
                    powerQualityTextClickedChangeBarWidth.start()
                    mouseAreaForCurrent.enabled=true
                }
                else {
                    rectangle14.x=1123
                    pageNameText.text="POWER"
                    powerTextClickedChangeBarX.start()
                    powerTextClickedChangeBarWidth.start()
                    mouseAreaForCurrent.enabled=false
                }
            }
            onExited:   {

                if(rectangle14.x<=500)
                {
                    rectangle14.x=-170
                    pageNameText.text="POWER QUALITY"
                    powerQualityTextClicked.start()
                    powerQualityTextClickedChangeBarWidth.start()
                    mouseAreaForCurrent.enabled=true
                }
                else {
                    rectangle14.x=1123
                    pageNameText.text="POWER"
                    powerTextClickedChangeBarX.start()
                    powerTextClickedChangeBarWidth.start()
                    mouseAreaForCurrent.enabled=false
                }

            }
            onMouseXChanged:      {

                if(rectangle14.x<=500)
                {
                    rectangle14.x=-170
                    powerQualityTextClicked.start()
                    powerQualityTextClickedChangeBarWidth.start()
                    pageNameText.text="POWER QUALITY"
                    mouseAreaForCurrent.enabled=true
                }

            }


        }

        Rectangle {
            id: rectanglePOWER
            x: -1123
            y: 0
            width: 1293
            height: 728
            color: "#f7f8fa"

            CustomButtonHeaderGrayWithStrokeBG
            {
                x: 794/2
                y: 177/2-72
                width:182
                height: 54
                clip: true
            }

            CustomButtonHeaderGrayWithStrokeBG
            {
                x: 38/2
                y: 177/2-72
                width:182
                height: 54
                clip: true
            }

            CustomButtonHeaderGrayWithStrokeBG
            {
                x: 415/2
                y: 177/2-72
                width:182
                height: 54
                clip: true
            }


            CustomButtonHeaderWhiteWithStrokeBG
            {
                x: 48/2
                y: 190/2-72
                width:173
                height: 42
                clip: true

                Image {
                    id: scrollDownIconForSubMenus
                    x: 144
                    y: 9
                    source: "images/ScrollDownIconForSubMenus.svg"
                    fillMode: Image.PreserveAspectFit
                }

            }




            CustomButtonHeaderWhiteWithStrokeBG
            {
                x: 805/2
                y: 190/2-72
                width:173
                height: 42
                clip: true
                Image {
                    id: scrollDownIconForSubMenus2
                    x: 144
                    y: 9
                    source: "images/ScrollDownIconForSubMenus.svg"
                    fillMode: Image.PreserveAspectFit
                }
                Text {
                    id: powerTextSubMenus2
                    x: 10
                    y: -3
                    width: 150
                    height: 96/2
                    color: "#284863"
                    text: qsTr("FREQUENCY")
                    font.letterSpacing: -2
                    font.pixelSize: 22
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

            }



            CustomButtonHeaderWhiteWithStrokeBG
            {
                x: 426/2
                y: 190/2-72
                width:173
                height: 42
                clip: true
                Image {
                    id: scrollDownIconForSubMenus1
                    x: 144
                    y: 9
                    source: "images/ScrollDownIconForSubMenus.svg"
                    fillMode: Image.PreserveAspectFit
                }
            }




            Rectangle {
                id: rectangle30
                x: 1186/2
                y: 0
                width: 1371/2
                height: 1456/2
                color: "#ffffff"
                border.color: "#dce8ef"
            }


            Rectangle {
                id: rectangle31
                x: 1220/2
                y: 176/2-72
                width: 981/2
                height: 1437/2
                color: "#f7f8fa"
                border.color: "#dce8ef"
            }



            Text {
                id: activePowerValueTextN
                x: 1934/2
                y: 365/2-72
                width: 242/2
                height: 138/2
                color: colorCodegGreen
                text: qsTr("180.12 \nW")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }


            Text {
                id: activePowerHeaderTextRightN
                x: 1934/2
                y: 345/2-72
                width: 242/2
                height: 80/2
                color: colorCodegGreen
                text: qsTr("PN")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: reactivePowerValueTextN
                x: 1934/2
                y: 522/2-72
                width: 242/2
                height: 138/2
                color: colorCodegGreen
                text: qsTr("180.12 \nVAR")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }

            Text {
                id: apparentPowerValueTextN
                x: 1934/2
                y: 680/2-72
                width: 242/2
                height: 138/2
                color: colorCodegGreen
                text: qsTr("180.12 \nVA")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyPlusValueTextN
                x: 1934/2
                y: 840/2-72
                width: 242/2
                height: 138/2
                color: colorCodegGreen
                text: qsTr("180.12 \nWh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyMinusValueTextN
                x: 1934/2
                y:998/2-72
                width: 242/2
                height: 138/2
                color: colorCodeGray
                text: qsTr("180.12 \nWh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyPlusValueTextN
                x: 1934/2
                y:1156/2-72
                width: 242/2
                height: 138/2
                color: colorCodegGreen
                text: qsTr("180.12 \nVARh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyMinusValueTextN
                x: 1934/2
                y:1314/2-72
                width: 242/2
                height: 138/2
                color: colorCodegGreen
                text: qsTr("180.12 \nVARh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: apparentEnergyMinusValueTextN
                x: 1934/2
                y:1474/2-72
                width: 242/2
                height: 138/2
                color: colorCodegGreen
                text: qsTr("180.12 \nVAh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }

            Text {
                id: reactivePowerHeaderTextRightN
                x: 1934/2
                y: 500/2-72
                width: 242/2
                height: 80/2
                color: colorCodegGreen
                text: qsTr("QN")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: aparentPowerHeaderTextRightN
                x: 1934/2
                y: 658/2-72
                width: 242/2
                height: 80/2
                color: colorCodegGreen
                text: qsTr("SN")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyPlusHeaderTextRightN
                x: 1934/2
                y: 818/2-72
                width: 242/2
                height: 80/2
                color: colorCodegGreen
                text: qsTr("EPN+")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyMinusHeaderTextRightN
                x: 1934/2
                y: 975/2-72
                width: 242/2
                height: 80/2
                color: colorCodegGreen
                text: qsTr("EPN-")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: reactiveEnergyPlusHeaderTextRightN
                x: 1934/2
                y: 1134/2-72
                width: 242/2
                height: 80/2
                color: colorCodegGreen
                text: qsTr("EQN+")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyMinusHeaderTextRightN
                x: 1934/2
                y: 1292/2-72
                width: 242/2
                height: 80/2
                color: colorCodegGreen
                text: qsTr("EQN-")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: apparentEnergyHeaderTextRightN
                x: 1934/2
                y: 1450/2-72
                width: 242/2
                height: 80/2
                color: colorCodegGreen
                text: qsTr("ESN")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }



            Text {
                id: activePowerValueTextC
                x: 1701/2
                y: 365/2-72
                width: 242/2
                height: 138/2
                color: colorCodeGray
                text: qsTr("180.12 \nW")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }


            Text {
                id: activePowerHeaderTextRightC
                x: 1701/2
                y: 345/2-72
                width: 242/2
                height: 80/2
                color: colorCodeGray
                text: qsTr("PB")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: reactivePowerValueTextC
                x: 1701/2
                y: 522/2-72
                width: 242/2
                height: 138/2
                color: colorCodeGray
                text: qsTr("180.12 \nVAR")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }

            Text {
                id: apparentPowerValueTextC
                x: 1701/2
                y: 680/2-72
                width: 242/2
                height: 138/2
                color: colorCodeGray
                text: qsTr("180.12 \nVA")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyPlusValueTextC
                x: 1701/2
                y: 840/2-72
                width: 242/2
                height: 138/2
                color: colorCodeGray
                text: qsTr("180.12 \nWh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyMinusValueTextC
                x: 1701/2
                y:998/2-72
                width: 242/2
                height: 138/2
                color: colorCodeGray
                text: qsTr("180.12 \nWh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyPlusValueTextC
                x: 1701/2
                y:1156/2-72
                width: 242/2
                height: 138/2
                color: colorCodeGray
                text: qsTr("180.12 \nVARh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyMinusValueTextC
                x: 1701/2
                y:1314/2-72
                width: 242/2
                height: 138/2
                color: colorCodeGray
                text: qsTr("180.12 \nVARh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: apparentEnergyMinusValueTextC
                x: 1701/2
                y:1474/2-72
                width: 242/2
                height: 138/2
                color: colorCodeGray
                text: qsTr("180.12 \nVAh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }

            Text {
                id: reactivePowerHeaderTextRightC
                x: 1701/2
                y: 500/2-72
                width: 242/2
                height: 80/2
                color: colorCodeGray
                text: qsTr("QC")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: aparentPowerHeaderTextRightC
                x: 1701/2
                y: 658/2-72
                width: 242/2
                height: 80/2
                color: colorCodeGray
                text: qsTr("SC")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyPlusHeaderTextRightC
                x: 1701/2
                y: 818/2-72
                width: 242/2
                height: 80/2
                color: colorCodeGray
                text: qsTr("EPC+")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyMinusHeaderTextRightC
                x: 1701/2
                y: 975/2-72
                width: 242/2
                height: 80/2
                color: colorCodeGray
                text: qsTr("EPC-")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: reactiveEnergyPlusHeaderTextRightC
                x: 1701/2
                y: 1134/2-72
                width: 242/2
                height: 80/2
                color: colorCodeGray
                text: qsTr("EQC+")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyMinusHeaderTextRightC
                x: 1701/2
                y: 1292/2-72
                width: 242/2
                height: 80/2
                color: colorCodeGray
                text: qsTr("EQC-")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: apparentEnergyHeaderTextRightC
                x: 1701/2
                y: 1450/2-72
                width: 242/2
                height: 80/2
                color: colorCodeGray
                text: qsTr("ESC")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: activePowerValueTextB
                x: 1465/2
                y: 365/2-72
                width: 242/2
                height: 138/2
                color: colorCodeOrange
                text: qsTr("180.12 \nW")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }


            Text {
                id: activePowerHeaderTextRightB
                x: 1465/2
                y: 345/2-72
                width: 242/2
                height: 80/2
                color: colorCodeOrange
                text: qsTr("PB")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: reactivePowerValueTextB
                x: 1465/2
                y: 522/2-72
                width: 242/2
                height: 138/2
                color: colorCodeOrange
                text: qsTr("180.12 \nVAR")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }

            Text {
                id: apparentPowerValueTextB
                x: 1465/2
                y: 680/2-72
                width: 242/2
                height: 138/2
                color: colorCodeOrange
                text: qsTr("180.12 \nVA")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyPlusValueTextB
                x: 1465/2
                y: 840/2-72
                width: 242/2
                height: 138/2
                color: colorCodeOrange
                text: qsTr("180.12 \nWh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyMinusValueTextB
                x: 1465/2
                y:998/2-72
                width: 242/2
                height: 138/2
                color: colorCodeOrange
                text: qsTr("180.12 \nWh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyPlusValueTextB
                x: 1465/2
                y:1156/2-72
                width: 242/2
                height: 138/2
                color: colorCodeOrange
                text: qsTr("180.12 \nVARh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyMinusValueTextB
                x: 1465/2
                y:1314/2-72
                width: 242/2
                height: 138/2
                color: colorCodeOrange
                text: qsTr("180.12 \nVARh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: apparentEnergyMinusValueTextB
                x: 1465/2
                y:1474/2-72
                width: 242/2
                height: 138/2
                color: colorCodeOrange
                text: qsTr("180.12 \nVAh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }

            Text {
                id: reactivePowerHeaderTextRightB
                x: 1465/2
                y: 500/2-72
                width: 242/2
                height: 80/2
                color: colorCodeOrange
                text: qsTr("QB")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: aparentPowerHeaderTextRightB
                x: 1465/2
                y: 658/2-72
                width: 242/2
                height: 80/2
                color: colorCodeOrange
                text: qsTr("SB")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyPlusHeaderTextRightB
                x: 1465/2
                y: 818/2-72
                width: 242/2
                height: 80/2
                color: colorCodeOrange
                text: qsTr("EPB+")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyMinusHeaderTextRightB
                x: 1465/2
                y: 975/2-72
                width: 242/2
                height: 80/2
                color: colorCodeOrange
                text: qsTr("EPB-")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: reactiveEnergyPlusHeaderTextRightB
                x: 1465/2
                y: 1134/2-72
                width: 242/2
                height: 80/2
                color: colorCodeOrange
                text: qsTr("EQB+")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyMinusHeaderTextRightB
                x: 1465/2
                y: 1292/2-72
                width: 242/2
                height: 80/2
                color: colorCodeOrange
                text: qsTr("EQB-")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: apparentEnergyHeaderTextRightB
                x: 1465/2
                y: 1450/2-72
                width: 242/2
                height: 80/2
                color: colorCodeOrange
                text: qsTr("ESB")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }





            Text {
                id: activePowerValueText
                x: 1230/2
                y: 365/2-72
                width: 242/2
                height: 138/2
                color: colorCodeRed
                text: qsTr("180.12 \nW")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }


            Text {
                id: activePowerHeaderTextRight
                x: 1230/2
                y: 345/2-72
                width: 242/2
                height: 80/2
                color: colorCodeRed
                text: qsTr("PA")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: reactivePowerValueText
                x: 1230/2
                y: 522/2-72
                width: 242/2
                height: 138/2
                color: colorCodeRed
                text: qsTr("180.12 \nVAR")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }

            Text {
                id: apparentPowerValueText
                x: 1230/2
                y: 680/2-72
                width: 242/2
                height: 138/2
                color: colorCodeRed
                text: qsTr("180.12 \nVA")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyPlusValueText
                x: 1230/2
                y: 840/2-72
                width: 242/2
                height: 138/2
                color: colorCodeRed
                text: qsTr("180.12 \nWh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyMinusValueText
                x: 1230/2
                y:998/2-72
                width: 242/2
                height: 138/2
                color: colorCodeRed
                text: qsTr("180.12 \nWh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyPlusValueText
                x: 1230/2
                y:1156/2-72
                width: 242/2
                height: 138/2
                color: colorCodeRed
                text: qsTr("180.12 \nVARh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyMinusValueText
                x: 1230/2
                y:1314/2-72
                width: 242/2
                height: 138/2
                color: colorCodeRed
                text: qsTr("180.12 \nVARh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }
            Text {
                id: apparentEnergyMinusValueText
                x: 1230/2
                y:1474/2-72
                width: 242/2
                height: 138/2
                color: colorCodeRed
                text: qsTr("180.12 \nVAh")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }

            Text {
                id: reactivePowerHeaderTextRight
                x: 1230/2
                y: 500/2-72
                width: 242/2
                height: 80/2
                color: colorCodeRed
                text: qsTr("QA")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: aparentPowerHeaderTextRight
                x: 1230/2
                y: 658/2-72
                width: 242/2
                height: 80/2
                color: colorCodeRed
                text: qsTr("SA")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyPlusHeaderTextRight
                x: 1230/2
                y: 818/2-72
                width: 242/2
                height: 80/2
                color: colorCodeRed
                text: qsTr("EPA+")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: activeEnergyMinusHeaderTextRight
                x: 1230/2
                y: 975/2-72
                width: 242/2
                height: 80/2
                color: colorCodeRed
                text: qsTr("EPA-")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: reactiveEnergyPlusHeaderTextRight
                x: 1230/2
                y: 1134/2-72
                width: 242/2
                height: 80/2
                color: colorCodeRed
                text: qsTr("EQA+")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Text {
                id: reactiveEnergyMinusHeaderTextRight
                x: 1230/2
                y: 1292/2-72
                width: 242/2
                height: 80/2
                color: colorCodeRed
                text: qsTr("EQA-")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: apparentEnergyHeaderTextRight
                x: 1230/2
                y: 1450/2-72
                width: 242/2
                height: 80/2
                color: colorCodeRed
                text: qsTr("ESA")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 1.7
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }


            CustomButtonForErrorsRed{
                x:1243/2
                y:324/2-72
                width: 215/2
                height: 18/2
                clip: true

            }
            CustomButtonForErrorsOrange{
                x:1243/2
                y:482/2-72
                width: 215/2
                height: 18/2
                clip: true

            }

            CustomButtonForErrorsOrange{
                x:1954/2
                y:482/2-72
                width: 215/2
                height: 18/2
                clip: true

            }

            CustomButtonForErrorsOrange{
                x:1954/2
                y:1431/2-72
                width: 215/2
                height: 18/2
                clip: true

            }
            CustomButtonForErrorsOrange{
                x:1954/2
                y:1273/2-72
                width: 215/2
                height: 18/2
                clip: true

            }
            CustomButtonForErrorsGreen{
                x:1954/2
                y:956/2-72
                width: 215/2
                height: 18/2
                clip: true
            }

            CustomButtonForErrorsGreen{
                x:1954/2
                y:798/2-72
                width: 215/2
                height: 18/2
                clip: true
            }
            Column {
                x: 1482/2
                y: 482/2-72
                width: 290/2
                spacing: 140/2
                Repeater {
                    model: 7

                    CustomButtonForErrorsGreen{
                        x:0
                        y:0
                        width: 215/2
                        height: 18/2
                        clip: true

                    }

                }
            }


            Column {
                x: 1243/2
                y: 640/2-72
                width: 290/2
                spacing: 140/2
                Repeater {
                    model: 6

                    CustomButtonForErrorsGreen{
                        x:0
                        y:0
                        width: 215/2
                        height: 18/2
                        clip: true

                    }

                }
            }


            CustomButtonForErrorsOrange{
                x:1482/2
                y:324/2-72
                width: 215/2
                height: 18/2
                clip: true

            }
            CustomButtonForErrorsRed{
                x:1954/2
                y:324/2-72
                width: 215/2
                height: 18/2
                clip: true
            }
            CustomButtonForErrorsRed{
                x:1954/2
                y:640/2-72
                width: 215/2
                height: 18/2
                clip: true
            }
            CustomButtonForErrorsRed{
                x:1954/2
                y:1113/2-72
                width: 215/2
                height: 18/2
                clip: true
            }
            Column {
                x: 1718/2
                y: 324/2-72
                width: 290/2
                spacing: 140/2
                Repeater {
                    model: 8

                    CustomButtonForNotConnect{
                        x:0
                        width: 215/2
                        height: 18/2
                        clip: true
                    }

                }
            }

            Rectangle{
                x:1240/2
                y:198/2-72
                width: 940/2
                height: 106/2
                border.color: "#dce8ef"
                Image {
                    id: vector163
                    x: 447
                    y: 14
                    width: 30
                           /2

                    source: "images/Vector 163.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: scrollDownIconForSubMenus3
                    x: 425
                    y: 14
                    source: "images/ScrollDownIconForSubMenus.svg"
                    fillMode: Image.PreserveAspectFit
                }
                Text {
                    id: powerandenergyTextSubMenus2
                    x: 13
                    y: 0
                    width: 250
                    height: 104/2
                    color: "#284863"
                    text: qsTr("POWER&ENERGY")
                    font.letterSpacing: -2
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

            }



            Rectangle {
                id: rectangle28
                x: 38/2
                y: 306/2-72
                width: 1120/2
                height: 524/2
                color: "#ffffff"
                border.color: "#dce8ef"
                Text {
                    id: reaktivePowerDefinition
                    x: 57
                    y: 212
                    width: 120/2
                    height: 100/2
                    color: "#284863"
                    text: qsTr("Qsum")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }
                Text {
                    id: activePowerDefinition
                    x: 151
                    y: 212
                    width: 200/2
                    height: 100/2
                    color: "#284863"
                    text: qsTr("Psum")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }
                Rectangle {
                    id: rectangle32
                    x: 28
                    y: 229
                    width: 24
                    height: 16
                    color: "#3d70f8"
                    radius: 8
                }
                Rectangle {
                    id: rectangle33
                    x: 123
                    y: 229
                    width: 24
                    height: 16
                    color: "#4ec040"
                    radius: 8
                }
            }


            Image {
                id: ovalWithShadow
                x: 220
                y: 125
                width: 348/2
                source: "images/OvalWithShadow.png"
                fillMode: Image.PreserveAspectFit
            }

            ArcItem {
                id: arc
                x: 418/2
                y: 377/2-72
                width: 390/2
                height: 390/2
                end: 360
                strokeColor: "#4ec040"
                strokeWidth: 25
                fillColor: "#00000000"
            }

            ArcItem {
                id: arc1
                x: 199
                y: 109
                width: 400/2
                height: 400/2
                begin: 220
                end: 360
                strokeColor: "#3d70f8"
                strokeWidth: 40
                fillColor: "#00000000"
            }
            Text {
                id: apparentPowervoltageValueText
                x: 490/2
                y: 360/2
                width: 242/2
                height: 138/2
                color: "#284863"
                text: qsTr("180.12")
                font.letterSpacing: -2
                font.pixelSize: 22
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }


            Text {
                id: apparentPowerHeaderText
                x: 490/2
                y: 345/2
                width: 242/2
                height: 200/2
                color: "#284863"
                text: qsTr("Qsum \nVA")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 2
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }




            Rectangle {
                id: rectangle29
                x: 38/2
                y: 866/2-72
                width: 1120/2
                height: 524/2
                color: "#ffffff"
                border.color: "#dce8ef"

                Text {
                    id: reaktivePowerDefinition1
                    x: 57
                    y: 212
                    width: 120/2
                    height: 100/2
                    color: "#284863"
                    text: qsTr("EQsum")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

                Rectangle {
                    id: rectangle34
                    x: 28
                    y: 229
                    width: 24
                    height: 16
                    color: "#617284"
                    radius: 8
                }

                Text {
                    id: activePowerDefinition1
                    x: 151
                    y: 212
                    width: 200/2
                    height: 100/2
                    color: "#284863"
                    text: qsTr("EPsum")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

                Rectangle {
                    id: rectangle35
                    x: 123
                    y: 229
                    width: 24
                    height: 16
                    color: "#3d70f8"
                    radius: 8
                }
            }

            Image {
                id: oval3
                x: 438
                y: 504
                width: 196/2
                source: "images/Oval-1.svg"
                fillMode: Image.PreserveAspectFit
            }
            Image {
                id: ellipse21662
                x: 860/2
                y: 1136/2-72
                width: 225/2
                source: "images/Ellipse 214.svg"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay2
                    color: "#3d70f8"
                }
                fillMode: Image.PreserveAspectFit
            }
            Text {
                id: reactiveEnergyValueText
                x: 845/2
                y: 1040/2
                width: 242/2
                height: 138/2
                color: "#FFFFFF"
                text: qsTr("180.12")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }


            Text {
                id: reactiveEnergyHeaderText
                x: 855/2
                y: 1030/2
                width: 242/2
                height: 200/2
                color: "#FFFFFF"
                text: qsTr("EPsum \nWh")
                font.letterSpacing: -2
                font.pixelSize: 22
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 2
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }



            Image {
                id: ellipse1971
                x: 888/2
                y: 576/2-72
                width: 188/2
                source: "images/Ellipse 197.svg"
                fillMode: Image.PreserveAspectFit
            }

            ParallelAnimation
            {
                id:rotatePQ

                NumberAnimation{
                    target:ellipse214
                    property: "rotation"
                    duration: 5000
                    loops:-1
                    from:0
                    to:360
                }
                NumberAnimation{
                    target:ellipse2145
                    property: "rotation"
                    duration: 5000
                    loops:-1
                    from:360
                    to:0
                }
                NumberAnimation{
                    target:ellipse215
                    property: "rotation"
                    duration: 5000
                    loops:-1
                    from:360
                    to:0
                }
                NumberAnimation{
                    target: ellipse21662
                    property: "rotation"
                    duration: 5000
                    loops:-1
                    from:0
                    to:360
                }

            }

            Image {
                id: ellipse214
                x: 869/2
                y: 558/2-72
                width: 225/2
                source: "images/Ellipse 214.svg"
                fillMode: Image.PreserveAspectFit
            }



            Image {
                id: ellipse2145
                x: 114/2
                y: 426/2-72
                width: 225/2
                source: "images/Ellipse 214.svg"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay
                    color: "#3d70f8"
                }
                fillMode: Image.PreserveAspectFit
            }



            Image {
                id: ellipse215
                x: 77/2
                y: 954/2-72
                width: 264/2
                source: "images/Ellipse 214.svg"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay1
                    color: "#617284"
                }
                fillMode: Image.PreserveAspectFit
            }





            Image {
                id: oval1
                x: 128/2
                y: 441/2-72
                width: 196/2
                source: "images/Oval-1.svg"
                fillMode: Image.PreserveAspectFit
            }





            Image {
                id: oval2
                x: 100/2
                y: 975/2-72
                width: 220/2
                source: "images/Oval-2.svg"
                fillMode: Image.PreserveAspectFit
            }



            Image {
                id: ovalWithShadow2
                x: 220
                y: 504-72
                width: 348/2
                source: "images/OvalWithShadow.png"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: reaktiveEnergyValueText
                x: 86/2
                y: 870/2
                width: 242/2
                height: 138/2
                color: "#FFFFFF"
                text: qsTr("180.12")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }

            Text {
                id: reaktiveEnergyHeaderText
                x: 86/2
                y: 860/2
                width: 242/2
                height: 200/2
                color: "#FFFFFF"
                text: qsTr("EQsum \nVARh")
                font.letterSpacing: -2
                font.pixelSize: 22
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 2
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            ArcItem {
                id: arc2
                x: 418/2
                y: 985/2-72
                width: 390/2
                height: 390/2
                end: 360
                strokeColor: "#3d70f8"
                strokeWidth: 25
                fillColor: "#00000000"
            }

            ArcItem {
                id: arc3
                x: 199
                y: 415
                width: 400/2
                height: 400/2
                begin: 220
                end: 360
                strokeColor: "#617284"
                strokeWidth: 40
                fillColor: "#00000000"
            }


            Text {
                id: apparentEnergyValueText
                x: 490/2
                y: 975/2
                width: 242/2
                height: 138/2
                color: "#284863"
                text: qsTr("180.12")
                font.letterSpacing: -2
                font.pixelSize: 22
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }


            Text {
                id: apparentEnergyHeaderText
                x: 490/2
                y: 960/2
                width: 242/2
                height: 200/2
                color: "#284863"
                text: qsTr("ESsum \nVAh")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 2
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
            Text {
                id: reaktivePowervoltageValueText
                x: 104/2
                y: 330/2
                width: 242/2
                height: 138/2
                color: "#FFFFFF"
                text: qsTr("180.12")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }


            Text {
                id: reaktivePowerHeaderText
                x: 102/2
                y: 320/2
                width: 242/2
                height: 200/2
                color: "#FFFFFF"
                text: qsTr("Qsum \nVAR")
                font.letterSpacing: -2
                font.pixelSize: 22
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 2
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }


            Text {
                id: activePowervoltageValueText
                x: 860/2
                y: 465/2
                width: 242/2
                height: 138/2
                color: "#FFFFFF"
                text: qsTr("180.12")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Light"
                font.family: "Akshar"
            }


            Text {
                id: activePowerHeaderText
                x: 860/2
                y: 455/2
                width: 242/2
                height: 200/2
                color: "#FFFFFF"
                text: qsTr("Psum \nW")
                font.letterSpacing: -2
                font.pixelSize: 22
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                lineHeight: 2
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                id: powerTextSubMenus
                x: 35
                y: 20
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("VOLTAGE")
                font.letterSpacing: -2
                font.pixelSize: 22
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                id: powerTextSubMenus1
                x: 224
                y: 20
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("CURRENT")
                font.letterSpacing: -2
                font.pixelSize: 22
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Image {
                id: holdBG
                x: 35/2
                y: 704-72
                width: 1120/2
                source: "images/HoldBG.svg"
                fillMode: Image.PreserveAspectFit

                Text {
                    id: holdButtonText
                    x: 0
                    y: 0
                    width: 560
                    height: 50
                    color: "#FFFFFF"
                    text: qsTr("HOLD")
                    font.letterSpacing: -2
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }
            }


            Rectangle {
                id: rectangle37
                x: 1101
                y: 0
                width: 192
                height: 726
                color: "#ffffff"
                Text {
                    x: 6
                    y: 156
                    width: 300/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("THD Volt B")
                    font.letterSpacing: -2
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Medium"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    x: 6
                    y: 229
                    width: 300/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("THD Volt C")
                    font.letterSpacing: -2
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Medium"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    x: 53
                    y: 302
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("THD Volt N")
                    font.letterSpacing: -2
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Medium"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    x: 53
                    y: 375
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("THD Cur A")
                    font.letterSpacing: -2
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Medium"
                    font.family: "Akshar"
                    z: 1
                }

                Column {
                    x: 22
                    y: 125
                    width: 290/2
                    spacing: 72/2
                    Repeater {
                        model: 8
                        Image {
                            x: 0
                            y: 0
                            width: 287/2
                            source: "images/Rectangle 146.svg"
                            fillMode: Image.PreserveAspectFit
                        }
                    }
                }

                Image {
                    x: 21
                    y: 244
                    width: 72/2
                    source: "images/CloseMenu.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 131
                    y: 244
                    width: 72/2
                    opacity: 0
                    source: "images/CloseMenu.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    x: 53
                    y: 448
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("THD Cur B")
                    font.letterSpacing: -2
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Medium"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    x: 53
                    y: 521
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("THD Cur C")
                    font.letterSpacing: -2
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Medium"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    x: 53
                    y: 594
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("THD Cur N")
                    font.letterSpacing: -2
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Medium"
                    font.family: "Akshar"
                    z: 1
                }

                Text {
                    x: 53
                    y: 120
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("220,21 V")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }

                Text {
                    x: 53
                    y: 192
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("220,21 V")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }

                Text {
                    x: 53
                    y: 265
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("220,21 V")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }

                Text {
                    x: 53
                    y: 337
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("220,21 V")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }

                Text {
                    x: 53
                    y: 410
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("11.65 A")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }

                Text {
                    x: 53
                    y: 482
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("11.65 A")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }

                Text {
                    x: 53
                    y: 555
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("11.65 A")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }

                Text {
                    x: 53
                    y: 633
                    width: 206/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("11.65 A")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }

                Image {
                    x: 22
                    y: 15
                    width: 290/2
                    source: "images/Rectangle 147.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    x: 51
                    y: 26
                    width: 250/2
                    height: 96/2
                    color: "#284863"
                    text: qsTr("POWER QUALITY")
                    font.letterSpacing: -2
                    font.pixelSize: 24
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    x: 22
                    y: 84
                    width: 134
                    height: 47
                    color: "#284863"
                    text: qsTr("THD Volt A")
                    font.letterSpacing: -2
                    font.pixelSize: 22
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Medium"
                    font.family: "Akshar"
                    z: 0
                }
            }


        }

        Rectangle {
            id: rectangle36
            x: 170
            y: 0
            width: 153
            height: 728
            color: "#ffffff"

            Text {
                id: leftMenuVoltageB
                x: 11
                y: 155
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("Voltage B")
                font.letterSpacing: -2
                font.pixelSize: 22
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Medium"
                font.family: "Akshar"
                z: 1
            }

            Text {
                id: leftMenuVoltageC
                x: 11
                y: 228
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("Voltage C")
                font.letterSpacing: -2
                font.pixelSize: 22
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Medium"
                font.family: "Akshar"
                z: 1
            }

            Text {
                id: leftMenuVoltageN
                x: 11
                y: 301
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("Voltage N")
                font.letterSpacing: -2
                font.pixelSize: 22
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Medium"
                font.family: "Akshar"
                z: 1
            }

            Text {
                id: leftMenuCurrentA
                x: 11
                y: 374
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("Current A")
                font.letterSpacing: -2
                font.pixelSize: 22
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Medium"
                font.family: "Akshar"
                z: 1
            }

            Column {
                x: 7
                y: 124
                width: 290/2
                Repeater {
                    model: 8
                    Image {
                        id: rectangle146
                        x: 0
                        y: 0
                        width: 287/2
                        source: "images/Rectangle 146.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }
                spacing: 72/2
            }

            Image {
                id: openMenu
                x: 116
                y: 242
                width: 72/2
                source: "images/Group 9785.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: closeMenu
                x: 116
                y: 243
                width: 72/2
                opacity: 0
                source: "images/CloseMenu.svg"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: leftMenuCurrentB
                x: 11
                y: 447
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("Current B")
                font.letterSpacing: -2
                font.pixelSize: 22
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Medium"
                font.family: "Akshar"
                z: 1
            }

            Text {
                id: leftMenuCurrentC
                x: 11
                y: 520
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("Current C")
                font.letterSpacing: -2
                font.pixelSize: 22
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Medium"
                font.family: "Akshar"
                z: 1
            }

            Text {
                id: leftMenuCurrentN
                x: 11
                y: 593
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("Current N")
                font.letterSpacing: -2
                font.pixelSize: 22
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Medium"
                font.family: "Akshar"
                z: 1
            }

            Text {
                id: leftMenuVoltageTextA
                x: 11
                y: 119
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("220,21 V")
                font.letterSpacing: -2
                font.pixelSize: 40/2
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
            }

            Text {
                id: leftMenuVoltageTextB
                x: 11
                y: 191
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("220,21 V")
                font.letterSpacing: -2
                font.pixelSize: 40/2
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
            }

            Text {
                id: leftMenuVoltageTextC
                x: 11
                y: 264
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("220,21 V")
                font.letterSpacing: -2
                font.pixelSize: 40/2
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
            }

            Text {
                id: leftMenuVoltageTextN
                x: 11
                y: 336
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("220,21 V")
                font.letterSpacing: -2
                font.pixelSize: 40/2
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
            }

            Text {
                id: leftMenuCurrentTextA
                x: 11
                y: 409
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("11.65 A")
                font.letterSpacing: -2
                font.pixelSize: 40/2
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
            }

            Text {
                id: leftMenuCurrentTextB
                x: 11
                y: 481
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("11.65 A")
                font.letterSpacing: -2
                font.pixelSize: 40/2
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
            }

            Text {
                id: leftMenuCurrentTextC
                x: 11
                y: 554
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("11.65 A")
                font.letterSpacing: -2
                font.pixelSize: 40/2
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
            }

            Text {
                id: leftMenuCurrentTextN
                x: 11
                y: 632
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("11.65 A")
                font.letterSpacing: -2
                font.pixelSize: 40/2
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
            }

            Image {
                id: rectangle147
                x: 7
                y: 14
                width: 290/2
                source: "images/Rectangle 147.svg"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: powerTextLeftMenu
                x: 38
                y: 26
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("POWER")
                font.letterSpacing: -2
                font.pixelSize: 24
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                id: leftMenuVoltageA
                x: 11
                y: 80
                width: 206/2
                height: 96/2
                color: "#284863"
                text: qsTr("Voltage A")
                font.letterSpacing: -2
                font.pixelSize: 22
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Medium"
                font.family: "Akshar"
                z: 0
            }


        }
    }




    StackView {
        id: stackViewStatusForQtR01
        y: 72
        width: 1280
        height: 728
        visible: true

        Rectangle {
            id: stackViewRectangle
            y: 0
            color: "#F7F8FA"
            radius: 6
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            //            anchors.left: parent.left
            //            anchors.right: parent.right
            //            anchors.rightMargin: stackViewStatusForQtR01.width/64
            //            anchors.leftMargin: stackViewStatusForQtR01.width/4
            rotation: 0

        }
    }







    Rectangle {
        id: settingsBottomBar
        x: 0
        y: -100
        width: 1280
        height: 71
        color: "#f7f8fa"

        Rectangle {
            x: 1205
            y: 0
            width: 1
            height: 143/2
            color: "#c6cdd1"
            rotation: 0
        }
        PropertyAnimation {
            id: mainSettingsTextClickedChangeBarX
            target: bottomMenuChosingSettings
            property: "x"
            duration: 200
            to: mainSettingsText.x+10
        }

        PropertyAnimation {
            id: mainSettingsTextClickedChangeBarWidth
            target: bottomMenuChosingSettings
            property: "width"
            duration: 200
            to: mainSettingsText.width-20
        }

        PropertyAnimation {
            id: eventSettingsTextClickedChangeBarX
            target: bottomMenuChosingSettings
            property: "x"
            duration: 200
            to: eventSettingsText.x+10
        }

        PropertyAnimation {
            id: eventSettingsTextClickedChangeBarWidth
            target: bottomMenuChosingSettings
            property: "width"
            duration: 200
            to: eventSettingsText.width-20
        }

        PropertyAnimation {
            id: loggerSettingsTextClickedChangeBarX
            target: bottomMenuChosingSettings
            property: "x"
            duration: 200
            to: loggerSettingsText.x+20
        }

        PropertyAnimation {
            id: loggerSettingsTextClickedChangeBarWidth
            target: bottomMenuChosingSettings
            property: "width"
            duration: 200
            to: loggerSettingsText.width-40
        }

        PropertyAnimation {
            id: communicationSettingsTextClickedChangeBarX
            target: bottomMenuChosingSettings
            property: "x"
            duration: 200
            to: communicationSettingsText.x-5
        }

        PropertyAnimation {
            id: communicationSettingsTextClickedChangeBarWidth
            target: bottomMenuChosingSettings
            property: "width"
            duration: 200
            to: communicationSettingsText.width+10
        }

        PropertyAnimation {
            id: singleLineDiagramSettingsTextClickedChangeBarX
            target: bottomMenuChosingSettings
            property: "x"
            duration: 200
            to: singleLineDiagramSettingsText.x
        }

        PropertyAnimation {
            id: singleLineDiagramSettingsTextClickedChangeBarWidth
            target: bottomMenuChosingSettings
            property: "width"
            duration: 200
            to: singleLineDiagramSettingsText.width
        }

        PropertyAnimation {
            id: locationSettingsTextClickedChangeBarX
            target: bottomMenuChosingSettings
            property: "x"
            duration: 200
            to: locationSettingsText.x+20
        }

        PropertyAnimation {
            id: locationTextClickedChangeBarWidth
            target: bottomMenuChosingSettings
            property: "width"
            duration: 200
            to: locationSettingsText.width-40
        }

        PropertyAnimation {
            id: interfaceSettingsTextClickedChangeBarX
            target: bottomMenuChosingSettings
            property: "x"
            duration: 200
            to: interfaceSettingsText.x+16
        }

        PropertyAnimation {
            id: interfaceTextClickedChangeBarWidth
            target: bottomMenuChosingSettings
            property: "width"
            duration: 200
            to: interfaceSettingsText.width-30
        }

        Rectangle {
            id: bottomMenuChosingSettings
            x: 1282
            y: 0
            width: 140
            height: 8
            color: "#217efd"
        }

        Text {
            id: mainSettingsText
            x: 142
            y: 1
            width: 120
            height: 140/2
            color: "#284863"
            text: qsTr("Main Settings")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            MouseArea {
                id: mouseAreaMainSettingsText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    mainSettingsTextClickedChangeBarX.start()
                    mainSettingsTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingMeasurements.x=1400
                    pageNameText.text="MAIN SETTINGS"
                }
            }
            font.family: "Abel"
        }

        Text {
            id: eventSettingsText
            x: 262
            y: 1
            width: 120
            height: 140/2
            color: "#284863"
            text: qsTr("Event Settings")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            MouseArea {
                id: mouseAreaEventSettingsText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    eventSettingsTextClickedChangeBarX.start()
                    eventSettingsTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingMeasurements.x=1400
                    pageNameText.text="EVENT SETTINGS"
                    stackViewStatusForQtR01.pop()
                    stackViewStatusForQtR01.push("EventSettingsForQtR01.qml")
                }
            }
            font.family: "Abel"
        }

        Text {
            id: loggerSettingsText
            x: 382
            y: 1
            width: 270/2
            height: 140/2
            color: "#284863"
            text: qsTr("Logger Settings")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            MouseArea {
                id: mouseAreaLoggerSettingsText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    loggerSettingsTextClickedChangeBarX.start()
                    loggerSettingsTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingMeasurements.x=1400
                    pageNameText.text="LOGGER SETTINGS"
                }
            }
            font.family: "Abel"
        }

        Text {
            id: communicationSettingsText
            x: 517
            y: 1
            width: 156
            height: 140/2
            color: "#284863"
            text: qsTr("Communication Settings")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            MouseArea {
                id: mouseAreaCommunicationSettingsText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    communicationSettingsTextClickedChangeBarX.start()
                    communicationSettingsTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingMeasurements.x=1400
                    pageNameText.text="COMMUNICATION SETTINGS"
                }
            }
            font.family: "Abel"
        }

        Text {
            id: singleLineDiagramSettingsText
            x: 688
            y: 1
            width: 175
            height: 140/2
            color: "#284863"
            text: qsTr("Single Line Diagram Settings")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            MouseArea {
                id: mouseAreaSingleLineDiagramSettingsText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    singleLineDiagramSettingsTextClickedChangeBarX.start()
                    singleLineDiagramSettingsTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingMeasurements.x=1400
                    pageNameText.text="SINGLE LINE DIAGRAM SETTINGS"
                }
            }
            font.family: "Abel"
        }

        Text {
            id: locationSettingsText
            x: 864
            y: 1
            width: 265/2
            height: 140/2
            color: "#284863"
            text: qsTr("Location Settings")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            MouseArea {
                id: mouseAreaLocationSettingsText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    locationSettingsTextClickedChangeBarX.start()
                    locationTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingMeasurements.x=1400
                    pageNameText.text="LOCATION SETTINGS"
                }
            }
            font.family: "Abel"
        }

        Text {
            id: interfaceSettingsText
            x: 997
            y: 1
            width: 265/2
            height: 140/2
            color: "#284863"
            text: qsTr("Interface Settings")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            MouseArea {
                id: mouseAreaInterfaceSettingsText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    interfaceSettingsTextClickedChangeBarX.start()
                    interfaceTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingMeasurements.x=1400
                    pageNameText.text="INTERFACE SETTINGS"
                }
            }
            font.family: "Abel"
        }

        Image {
            x: 1230
            y: 24
            width: 50/2
            height: 50/2
            source: "images/Expand_right_double_light-1.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            x: 1154
            y: 24
            width: 50/2
            height: 50/2
            source: "images/Expand_right_double_light.svg"
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            x: 1129
            y: 0
            width: 1
            height: 143/2
            color: "#c6cdd1"
            rotation: 0
        }
    }





    Rectangle {
        id: measurementsBottomBar
        x: 0
        y: -200
        width: 1280
        height: 71
        color: "#f7f8fa"

        Text {
            id: harmonicsText
            x: 275
            y: 1
            width: 280/2
            height: 140/2
            color: "#284863"
            text: qsTr("Harmonics")
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Abel"
            font.styleName: "Regular"

            MouseArea {
                id: mouseAreaHarmonicsText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    harmonicsTextClickedChangeBarX.start()
                    harmonicsTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingSettings.x=1400
                    pageNameText.text="HARMONICS"
                    stackViewStatusForQtR01.pop()
                    stackViewStatusForQtR01.push("HarmonicsForQtR01.qml")
                }
            }
        }

        Text {
            id: eventsText
            x: 415
            y: 1
            width: 280/2
            height: 140/2
            color: "#284863"
            text: qsTr("Events")
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Abel"
            font.styleName: "Regular"
            MouseArea {
                id: mouseAreaEventsText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    eventsTextClickedChangeBarX.start()
                    eventsTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingSettings.x=1400
                    pageNameText.text="EVENTS"
                    stackViewStatusForQtR01.pop()
                    stackViewStatusForQtR01.push("EventsForQtR01.qml")
                }
            }
        }

        Text {
            id: graphsText
            x: 555
            y: 1
            width: 280/2
            height: 140/2
            color: "#284863"
            text: qsTr("Graphs")
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Abel"
            font.styleName: "Regular"
            MouseArea {
                id: mouseAreaGraphsText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    graphsTextClickedChangeBarX.start()
                    graphsTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingSettings.x=1400
                    pageNameText.text="GRAPHS"
                    stackViewStatusForQtR01.pop()
                    stackViewStatusForQtR01.push("GraphsForQtR01.qml")
                }
            }
        }


        Text {
            id: unbalanceText
            x: 695
            y: 1
            width: 300/2
            height: 140/2
            color: "#284863"
            text: qsTr("Unbalance")
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Abel"
            font.styleName: "Regular"
            MouseArea {
                id: mouseAreaUnbalanceText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    unbalanceTextClickedChangeBarX.start()
                    unbalanceTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingSettings.x=1400
                    pageNameText.text="UNBALANCE"
                    stackViewStatusForQtR01.pop()
                    stackViewStatusForQtR01.push("UnbalanceForQtR01.qml")
                }

            }
        }


        Text {
            id: loggerDataText
            x: 855
            y: 1
            width: 300/2
            height: 140/2
            color: "#284863"
            text: qsTr("Logger Data")
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Abel"
            font.styleName: "Regular"
            MouseArea {
                id: mouseAreaLoggerDataText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    loggerDataTextClickedChangeBarX.start()
                    loggerDataTextClickedChangeBarWidth.start()
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingSettings.x=1400
                    pageNameText.text="LOGGER DATA"
                }

            }
        }


        PropertyAnimation {
            id: harmonicsTextClickedChangeBarX
            target: bottomMenuChosingMeasurements
            property: "x"
            duration: 200
            to: harmonicsText.x
        }

        PropertyAnimation {
            id: harmonicsTextClickedChangeBarWidth
            target: bottomMenuChosingMeasurements
            property: "width"
            duration: 200
            to: harmonicsText.width
        }

        Rectangle {
            id: bottomMenuChosingMeasurements
            x: 1282
            y:0
            width: 140
            height: 8
            color: "#217efd"
        }

        PropertyAnimation {
            id: eventsTextClickedChangeBarX
            target: bottomMenuChosingMeasurements
            property: "x"
            duration: 200
            to: eventsText.x+20
        }

        PropertyAnimation {
            id: eventsTextClickedChangeBarWidth
            target: bottomMenuChosingMeasurements
            property: "width"
            duration: 200
            to: eventsText.width-40
        }

        PropertyAnimation {
            id: graphsTextClickedChangeBarX
            target: bottomMenuChosingMeasurements
            property: "x"
            duration: 200
            to: graphsText.x+20
        }

        PropertyAnimation {
            id: graphsTextClickedChangeBarWidth
            target: bottomMenuChosingMeasurements
            property: "width"
            duration: 200
            to: graphsText.width-40
        }

        PropertyAnimation {
            id: unbalanceTextClickedChangeBarX
            target: bottomMenuChosingMeasurements
            property: "x"
            duration: 200
            to: unbalanceText.x+5
        }

        PropertyAnimation {
            id: unbalanceTextClickedChangeBarWidth
            target: bottomMenuChosingMeasurements
            property: "width"
            duration: 200
            to: unbalanceText.width-10
        }
        PropertyAnimation {
            id: loggerDataTextClickedChangeBarX
            target: bottomMenuChosingMeasurements
            property: "x"
            duration: 200
            to: loggerDataText.x
        }

        PropertyAnimation {
            id: loggerDataTextClickedChangeBarWidth
            target: bottomMenuChosingMeasurements
            property: "width"
            duration: 200
            to: loggerDataText.width
        }

        Image {
            x: 1230
            y: 24
            width: 50/2
            height: 50/2
            source: "images/Expand_right_double_light-1.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            x: 1154
            y: 24
            width: 50/2
            height: 50/2
            source: "images/Expand_right_double_light.svg"
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            x: 1129
            y: 0
            width: 1
            height: 143/2
            color: "#c6cdd1"
            rotation: 0
        }

        Rectangle {
            x: 1205
            y: 0
            width: 1
            height: 143/2
            color: "#c6cdd1"
            rotation: 0
        }


    }





    Rectangle {
        id: statusBottomBar
        x: 0
        y: -300
        width: 1280
        height: 71
        color: "#f7f8fa"
        Image {
            x: 1230
            y: 24
            width: 50/2
            height: 50/2
            source: "images/Expand_right_double_light-1.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            x: 1154
            y: 24
            width: 50/2
            height: 50/2
            source: "images/Expand_right_double_light.svg"
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            x: 1129
            y: 0
            width: 1
            height: 143/2
            color: "#c6cdd1"
            rotation: 0
        }

        Rectangle {
            x: 1205
            y: 0
            width: 1
            height: 143/2
            color: "#c6cdd1"
            rotation: 0
        }

        Text {
            id:powerQualityText
            x: 490
            y: 1
            width: 280/2
            height: 140/2
            color: "#284863"
            text: qsTr("Power Quality")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Abel"

            MouseArea {
                id: mouseAreaPowerQualityText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    powerQualityTextClicked.start()
                    powerQualityTextClickedChangeBarWidth.start()
                    bottomMenuChosingMeasurements.x=1400
                    bottomMenuChosingSettings.x=1400
                    stackViewStatusForQtR01.pop()
                    stackViewStatusForQtR01.push("PowerAndPowerQuality.qml")
                    pageNameText.text="POWER QUALITY"

                }
            }
        }

        Text {
            id:powerText
            x: 630
            y: 1
            width: 280/2
            height: 140/2
            color: "#284863"
            text: qsTr("Power")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Abel"

            MouseArea {
                id: mouseAreaPowerText
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    powerTextClickedChangeBarX.start()
                    powerTextClickedChangeBarWidth.start()
                    bottomMenuChosingMeasurements.x=1400
                    bottomMenuChosingSettings.x=1400
                    pageNameText.text="POWER"

                }
            }
        }


        PropertyAnimation {
            id: powerQualityTextClicked
            target: bottomMenuChosingStatus
            property: "x"
            duration: 200
            to: powerQualityText.x
        }

        PropertyAnimation {
            id: powerQualityTextClickedChangeBarWidth
            target: bottomMenuChosingStatus
            property: "width"
            duration: 200
            to: powerQualityText.width
        }


        PropertyAnimation {
            id: powerTextClickedChangeBarX
            target: bottomMenuChosingStatus
            property: "x"
            duration: 200
            to: powerText.x+33
        }

        PropertyAnimation {
            id: powerTextClickedChangeBarWidth
            target: bottomMenuChosingStatus
            property: "width"
            duration: 200
            to: powerText.width-64
        }

        Rectangle {
            id:bottomMenuChosingStatus
            x: powerQualityText.x
            y: 0
            width: 140
            height: 8
            color: "#217efd"
        }

    }






    Rectangle {
        id: topSubMenu
        x: 360
        y: -438
        width: 600
        height: 78
        opacity: 1
        color: "#00ffffff"
        clip: true

        Text {
            id: statusText
            x: 0
            y: 0
            width: 280/2
            height: 140/2
            opacity: 1
            color: "#284863"
            text: qsTr("Status")
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Abel"
            font.styleName: "Regular"
            MouseArea {
                id: statusTextMouseArea
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    statusTextClickedChangeBarX.start()
                    statusTextClickedChangeBarWidth.start()
                    statusBottomBar.x=0
                    statusBottomBar.y=729
                    measurementsBottomBar.x=0
                    measurementsBottomBar.y=-200
                    settingsBottomBar.x=0
                    settingsBottomBar.y=-300
                }
            }
        }

        Text {
            id: measurementsText
            x: 140
            y: 0
            width: 220
            height: 140/2
            opacity: 1
            color: "#284863"
            text: qsTr("Measurements")
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Abel"
            font.styleName: "Regular"
            MouseArea {
                id: measurementsTextMouseArea
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    measurementsTextClickedChangeBarX.start()
                    measurementsTextClickedChangeBarWidth.start()
                    statusBottomBar.x=0
                    statusBottomBar.y=-100
                    measurementsBottomBar.x=0
                    measurementsBottomBar.y=729
                    settingsBottomBar.x=0
                    settingsBottomBar.y=-300


                }
            }
        }

        Text {
            id: settingsText
            x: 360
            y: 0
            width: 280/2
            height: 140/2
            opacity: 1
            color: "#284863"
            text: qsTr("Settings")
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Abel"
            font.styleName: "Regular"
            MouseArea {
                id: settingsTextMouseArea
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    settingsTextClickedChangeBarX.start()
                    settingsTextClickedChangeBarWidth.start()
                    statusBottomBar.x=0
                    statusBottomBar.y=-100
                    measurementsBottomBar.x=0
                    measurementsBottomBar.y=-200
                    settingsBottomBar.x=0
                    settingsBottomBar.y=729
                }
            }
        }

        Text {
            id: helpText
            x: 500
            y: 0
            width: 280/2
            height: 140/2
            opacity: 1
            color: "#284863"
            text: qsTr("Help")
            font.pixelSize: 45/2
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Abel"
            font.styleName: "Regular"
            MouseArea {
                id: helpTextMouseArea
                x: 0
                y: -1
                width: parent.width
                height: 71
                onClicked: {
                    helpTextClickedChangeBarX.start()
                    helpTextClickedChangeBarWidth.start()
                    statusBottomBar.x=0
                    statusBottomBar.y=-100
                    measurementsBottomBar.x=0
                    measurementsBottomBar.y=-200
                    settingsBottomBar.x=0
                    settingsBottomBar.y=-300
                    bottomMenuChosingStatus.x=1400
                    bottomMenuChosingMeasurements.x=1400
                    bottomMenuChosingSettings.x=1400
                    pageNameText.text="HELP"
                }
            }
        }



        PropertyAnimation {
            id: statusTextClickedChangeBarX
            target: topMenuChosing
            property: "x"
            duration: 200
            to: statusText.x+30
        }
        PropertyAnimation {
            id: statusTextClickedChangeBarWidth
            target: topMenuChosing
            property: "width"
            duration: 200
            to: statusText.width-60
        }

        PropertyAnimation {
            id: measurementsTextClickedChangeBarX
            target: topMenuChosing
            property: "x"
            duration: 200
            to: measurementsText.x+22
        }

        PropertyAnimation {
            id: measurementsTextClickedChangeBarWidth
            target: topMenuChosing
            property: "width"
            duration: 200
            to: measurementsText.width-40
        }

        PropertyAnimation {
            id: settingsTextClickedChangeBarX
            target: topMenuChosing
            property: "x"
            duration: 200
            to: settingsText.x+19
        }
        PropertyAnimation {
            id: settingsTextClickedChangeBarWidth
            target: topMenuChosing
            property: "width"
            duration: 200
            to: settingsText.width-35
        }

        PropertyAnimation {
            id: helpTextClickedChangeBarX
            target: topMenuChosing
            property: "x"
            duration: 200
            to: helpText.x+40
        }
        PropertyAnimation {
            id: helpTextClickedChangeBarWidth
            target: topMenuChosing
            property: "width"
            duration: 200
            to: helpText.width
        }

        Rectangle {
            id: topMenuChosing
            x: statusText.x+30
            y: statusText.y+70
            width: 80
            height: 8
            color: "#217efd"
        }
    }











    Image {
        id: unnamed1
        x: 0
        y: 0
        width: 144/2
        source: "images/unnamed 1.png"
        fillMode: Image.PreserveAspectFit
    }










    Image {
        id: pageNameBG
        x: 288/2
        y: 0
        width: 477/2
        source: "images/Menu-4.svg"
        fillMode: Image.PreserveAspectFit
    }





    Image {
        id: menu
        x: 2275/2
        y: 0
        width: 285/2
        source: "images/ClockMenu.svg"
        fillMode: Image.PreserveAspectFit
    }





    Text {
        id: pageNameText
        x: 300/2
        y: 0
        width: 222
        height: 144/2
        color: "#284863"
        text: qsTr("POWER QUALITY")
        font.letterSpacing: -2
        font.pixelSize: 24
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Akshar"
    }





    Text {
        id: text14
        x: 2315/2
        y: 26/2
        width: 120
        height: 60/2
        color: "#284863"
        text: qsTr("20.10.2023")
        font.letterSpacing: -3
        font.pixelSize: 50/2
        wrapMode: Text.Wrap
        font.styleName: "Regular"
        font.family: "Akshar"
    }





    Image {
        id: time
        x: 2315/2
        y: 90/2
        width: 42/2
        source: "images/Time.svg"
        fillMode: Image.PreserveAspectFit
    }





    Text {
        id: text15
        x: 2371/2
        y: 85/2
        width: 120/2
        height: 51/2
        color: "#284863"
        text: qsTr("09:30")
        font.letterSpacing: -2
        font.pixelSize: 45/2
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Regular"
        font.family: "Akshar"
    }





    Image {
        id: menu1
        x: 977
        y: 0
        width: 160/2
        source: "images/Group 8733.svg"
        fillMode: Image.PreserveAspectFit
    }





    Image {
        id: menu2
        x: 1057
        y: 0
        width: 160/2
        source: "images/Group 8733-1.svg"
        fillMode: Image.PreserveAspectFit
    }


    Text {
        id: text13
        x: 1055
        y: 45
        width: 80
        height: 60/2
        color: "#ffffff"
        text: qsTr("6573")
        font.letterSpacing: -2
        font.pixelSize: 45/2
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.Wrap
        font.styleName: "Regular"
        font.family: "Akshar"
    }

    Text {
        id: text11
        x: 975
        y: 45
        width: 160/2
        height: 60/2
        color: "#ffffff"
        text: qsTr("5342")
        font.letterSpacing: -2
        font.pixelSize: 45/2
        horizontalAlignment: Text.AlignHCenter
        wrapMode: Text.Wrap
        font.styleName: "Regular"
        font.family: "Akshar"
    }

    Rectangle {
        id: topMenuBar
        x: 352
        y: 0
        width: 928
        height: 72
        color: "#00ffffff"

        PropertyAnimation {
            id: topMenuBarClickedMenu
            target: topMenuBar
            property: "opacity"
            duration: 100
            to: 0
            onStopped: {
                menubuttonClickedTopMenuAnim.start()
            }
        }

        PropertyAnimation {
            id: topMenuBarnonClickedMenu
            target: topMenuBar
            property: "opacity"
            duration: 100
            to: 1
            onStopped: {
                menubuttonnonClickedTopMenuAnim.start()
            }
        }




        Image {
            id: menu6
            x: 332
            y: 0
            width: 582/2
            source: "images/Menu-6.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: menu4
            x: 14
            y: 0
            width: 477/2
            source: "images/Menu-4.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: rectangle3
            x: 28
            y: 7
            width: 22/2
            height: 50/2
            source: "images/Rectangle-3.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: rectangle4
            x: 28
            y: 39
            width: 22/2
            height: 50/2
            source: "images/Rectangle-3.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: rectangle5
            x: 153205
            y: 7
            width: 22/2
            height: 50/2
            source: "images/Rectangle-3.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: rectangle6
            x: 153
            y: 39
            width: 22/2
            height: 50/2
            source: "images/Rectangle-3.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: text2
            x: 48
            y: 3

            width: 200/2
            height: 66/2
            color: "#284863"
            text: qsTr("220 V")
            font.letterSpacing: -2
            font.pixelSize: 25
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Akshar"
        }

        Text {
            id: text3
            x: 48
            y: 35
            width: 200/2
            height: 50/2
            color: "#284863"
            text: qsTr("3 PHASE")
            font.letterSpacing: -2
            font.pixelSize: 25
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Akshar"
        }

        Text {
            id: text4
            x: 173
            y: 35
            width: 158/2
            height: 50/2
            color: "#284863"
            text: qsTr("50 Hz")
            font.letterSpacing: -2
            font.pixelSize: 25
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Akshar"
        }

        Text {
            id: text5
            x: 173
            y: 3
            width: 158/2
            height: 50/2
            color: "#284863"
            text: qsTr("6 A")
            font.letterSpacing: -2
            font.pixelSize: 25
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Akshar"
        }

        Image {
            id: menu5
            x: 253
            y: 0
            width: 158/2
            source: "images/Menu-5.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: icon_camerathree_
            x: 274
            y: 15
            width: 80/2
            source: "images/🦆 icon _camera three_.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: ellipse157
            x: 352
            y: 22
            width: 24/2
            source: "images/Ellipse 157.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: ellipse158
            x: 348
            y: 17
            width: 42/2
            source: "images/Ellipse 158.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: text6
            x: 378
            y: 11
            width: 175/2
            height: 60/2
            color: "#284863"
            text: qsTr("Log REC")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            wrapMode: Text.Wrap
            font.styleName: "Medium"
            font.family: "Akshar"
        }

        Text {
            id: text7
            x: 377
            y: 42
            width: 120/2
            height: 51/2
            color: "#284863"
            text: qsTr("09:30")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Abel"
        }

        Image {
            id: ellipse159
            x: 472
            y: 22
            width: 24/2
            source: "images/Ellipse 157.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: ellipse160
            x: 467
            y: 17
            width: 42/2
            source: "images/Ellipse 158.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: text8
            x: 498
            y: 11
            width: 250/2
            height: 60/2
            color: "#284863"
            text: qsTr("Event REC")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            wrapMode: Text.Wrap
            font.styleName: "Medium"
            font.family: "Akshar"
        }

        Text {
            id: text9
            x: 498
            y: 42
            width: 120/2
            height: 51/2
            color: "#284863"
            text: qsTr("09:30")
            font.letterSpacing: -2
            font.pixelSize: 45/2
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Abel"
        }

        Image {
            id: rectangle10
            x: 153
            y: 7
            width: 22/2
            height: 50/2
            source: "images/Rectangle-3.svg"
            fillMode: Image.PreserveAspectFit
        }
    }



    Rectangle {
        id: rectangle11
        x: -170
        y: 72
        width: 144
        height: 728
        visible: true
        color: "#ffffff"

        Image {
            id: group9585
            x: 50
            y: 543
            source: "images/Group 9585.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: rectifier1
            x: 13
            y: 103
            width: 206/2
            height: 96/2
            color: "#284863"
            text: qsTr("Rectifier 1")
            font.letterSpacing: -2
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            z:1


            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Medium"
            font.family: "Akshar"
        }

        Image {
            id: group9584
            x: 50
            y: 63
            source: "images/Group 9584.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: group9583
            x: 50
            y: 183
            source: "images/Group 9583.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: group9581
            x: 50
            y: 303
            source: "images/Group 9581.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: group9582
            x: 50
            y: 423
            source: "images/Group 9582.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: rectifier2
            x: 13
            y: 223
            width: 206/2
            height: 96/2
            color: "#284863"
            text: qsTr("Rectifier 2")
            font.letterSpacing: -2
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Medium"
            font.family: "Akshar"
        }

        Text {
            id: rectifier3
            x: 13
            y: 343
            width: 206/2
            height: 96/2
            color: "#284863"
            text: qsTr("Rectifier 3")
            font.letterSpacing: -2
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Medium"
            font.family: "Akshar"
        }

        Text {
            id: rectifier4
            x: 13
            y: 463
            width: 206/2
            height: 96/2
            color: "#284863"
            text: qsTr("Rectifier 4")
            font.letterSpacing: -2
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Medium"
            font.family: "Akshar"
        }

        Text {
            id: rectifier5
            x: 13
            y: 583
            width: 206/2
            height: 96/2
            color: "#284863"
            text: qsTr("Sum")
            font.letterSpacing: -2
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Medium"
            font.family: "Akshar"
        }
    }


    Rectangle {
        id: rectangle2
        x: 72
        y: 0
        width: 72
        height: 72
        opacity: 1
        color: "#617284"
        PropertyAnimation {
            id: menubuttonClickedMenuAnimRect7
            target: rectangle7
            property: "rotation"
            duration: 200
            to: 45
        }

        PropertyAnimation {
            id: menubuttonClickedMenuAnimRect7x
            target: rectangle7
            property: "x"
            duration: 200
            to: 35
        }

        PropertyAnimation {
            id: menubuttonClickedMenuAnimRect8
            target: rectangle8
            property: "y"
            duration: 200
            to: 30
        }

        PropertyAnimation {
            id: menubuttonClickedMenuAnimRect8opacity
            target: rectangle8
            property: "opacity"
            duration: 200
            to: 0
        }

        PropertyAnimation {
            id: menubuttonClickedMenuAnimRect8height
            target: rectangle8
            property: "height"
            duration: 100
            to: 10
        }

        PropertyAnimation {
            id: menubuttonClickedMenuAnimRect9
            target: rectangle9
            property: "rotation"
            duration: 200
            to: 315
        }

        PropertyAnimation {
            id: menubuttonClickedMenuAnimRect9x
            target: rectangle9
            property: "x"
            duration: 200
            to: 35
        }

        PropertyAnimation {
            id: menubuttonnonClickedMenuAnimRect7
            target: rectangle7
            property: "rotation"
            duration: 200
            to: 0
        }

        PropertyAnimation {
            id: menubuttonnonClickedMenuAnimRect7x
            target: rectangle7
            property: "x"
            duration: 200
            to: 27
        }

        PropertyAnimation {
            id: menubuttonnonClickedMenuAnimRect8
            target: rectangle8
            property: "y"
            duration: 200
            to: 25
        }

        PropertyAnimation {
            id: menubuttonnonClickedMenuAnimRect8opacity
            target: rectangle8
            property: "opacity"
            duration: 200
            to: 1
        }

        PropertyAnimation {
            id: menubuttonnonClickedMenuAnimRect8height
            target: rectangle8
            property: "height"
            duration: 100
            to: 23
        }

        PropertyAnimation {
            id: menubuttonnonClickedMenuAnimRect9
            target: rectangle9
            property: "rotation"
            duration: 200
            to: 0
        }

        PropertyAnimation {
            id: menubuttonnonClickedMenuAnimRect9x
            target: rectangle9
            property: "x"
            duration: 200
            to: 43
        }

        Rectangle {
            id: rectangle7
            x: 27
            y: 25
            width: 2
            height: 23
            color: "#ffffff"
            clip: true
        }

        Rectangle {
            id: rectangle8
            x: 35
            y: 25
            width: 2
            height: 23
            color: "#ffffff"
            clip: true
        }

        Rectangle {
            id: rectangle9
            x: 43
            y: 25
            width: 2
            height: 23
            color: "#ffffff"
            clip: true
        }

        MouseArea {
            id: mouseAreaForMenu
            x: 0
            y: 0
            width: 72
            height: 72
            onClicked: {
                if(rectangle7.x===27){
                    menubuttonClickedMenuAnimRect7.start()
                    menubuttonClickedMenuAnimRect7x.start()
                    menubuttonClickedMenuAnimRect8.start()
                    menubuttonClickedMenuAnimRect8height.start()
                    menubuttonClickedMenuAnimRect9x.start()
                    menubuttonClickedMenuAnimRect9.start()
                    menubuttonClickedMenuAnimRect8opacity.start()
                    topMenuBarClickedMenu.start()
                    rectifierMenuOpened.start()

                    if(pageNameText.text==="POWER QUALITY")
                    {
                        statusBottomBar.x=0
                        statusBottomBar.y=729
                        powerQualityTextClickedChangeBarWidth.start()
                        powerQualityTextClicked.start()
                        statusTextClickedChangeBarX.start()
                        statusTextClickedChangeBarWidth.start()

                    }
                    else if(pageNameText.text==="POWER")
                    {
                        statusBottomBar.x=0
                        statusBottomBar.y=729
                        powerTextClickedChangeBarWidth.start()
                        powerTextClickedChangeBarX.start()
                        statusTextClickedChangeBarX.start()
                        statusTextClickedChangeBarWidth.start()
                    }
                    else if(pageNameText.text==="HARMONICS")
                    {
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=729
                        measurementsTextClickedChangeBarX.start()
                        measurementsTextClickedChangeBarWidth.start()
                    }
                    else if(pageNameText.text==="EVENTS")
                    {
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=729
                        measurementsTextClickedChangeBarX.start()
                        measurementsTextClickedChangeBarWidth.start()
                    }
                    else if(pageNameText.text==="GRAPHS")
                    {
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=729
                        measurementsTextClickedChangeBarX.start()
                        measurementsTextClickedChangeBarWidth.start()
                    }
                    else if(pageNameText.text==="UNBALANCE")
                    {
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=729
                        measurementsTextClickedChangeBarX.start()
                        measurementsTextClickedChangeBarWidth.start()
                    }
                    else if(pageNameText.text==="LOGGER DATA")
                    {
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=729
                        measurementsTextClickedChangeBarX.start()
                        measurementsTextClickedChangeBarWidth.start()
                    }
                    else if(pageNameText.text==="HELP")
                    {
                        statusBottomBar.x=0
                        statusBottomBar.y=-100
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=-200
                        settingsBottomBar.x=0
                        settingsBottomBar.y=-300
                    }


                    else if(pageNameText.text==="MAIN SETTINGS" ||
                            "EVENT SETTINGS" ||
                            "LOGGER SETTINGS" ||
                            "COMMUNICATION SETTINGS" ||
                            "SINGLE LINE DIAGRAM SETTINGS" ||
                            "LOCATION SETTINGS" ||
                            "INTERFACE SETTINGS")
                    {
                        settingsBottomBar.x=0
                        settingsBottomBar.y=729
                        settingsTextClickedChangeBarX.start()
                        settingsTextClickedChangeBarWidth.start()
                    }
                    else{
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingSettings.x=1400
                    }

                    topSubMenu.x=360
                    topSubMenu.y=0

                }
                else {

                    menubuttonnonClickedMenuAnimRect7.start()
                    menubuttonnonClickedMenuAnimRect7x.start()
                    menubuttonnonClickedMenuAnimRect8.start()
                    menubuttonnonClickedMenuAnimRect8height.start()
                    menubuttonnonClickedMenuAnimRect9x.start()
                    menubuttonnonClickedMenuAnimRect9.start()
                    menubuttonnonClickedMenuAnimRect8opacity.start()
                    topMenuBarnonClickedMenu.start()
                    topSubMenu.x=360
                    topSubMenu.y=-500
                    statusBottomBar.x=0
                    statusBottomBar.y=-100
                    measurementsBottomBar.x=0
                    measurementsBottomBar.y=-200
                    settingsBottomBar.x=0
                    settingsBottomBar.y=-300
                    //                    bottomMenuChosingMeasurements.x=1400
                    rectifierMenuClosed.start()
                }
            }
        }
    }
}



