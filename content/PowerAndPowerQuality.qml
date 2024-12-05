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
import QtQuick3D 1.15


Rectangle {
    id: rectanglemain
    width: 1280
    height: 728
    color: "#ffffff"
    border.color: "#ffffff"
    antialiasing: true
    property int animationsForCurrentClickedSmallCircle: 40
    property int animationsForcurrentClickedCircle: 2500
    property int animationsForcurrentClickedCircleClosed: 450
    property int animationsForcurrentClickedCircleOpenedClosed: 300


    property string colorCodeRed: String("#FF5555")
    property string colorCodeOrange: String("#FCAE18")
    property string colorCodegGreen: String("#4EC040")
    property string colorCodeGray: String("#ADB1B4")

    property string bgColors: String("#F7F8FA")

    property alias rectangle14X: rectangle14.x




    Component.onCompleted: {
//        powerPageAnimations.start()
//        phasesRotationAnim.start()
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
//        rotatePQ.start()
        powerandpowerqualityAnim.start()
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
        height: 728
        color: "#f7f8fa"


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
                    id: vector6
                    x: 0
                    y: 163
                    height: 641/2
                    source: "images/Vector-6.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }


                Image {
                    id: vector5
                    x: 0
                    y: 176
                    height: 587/2
                    source: "images/Vector-5.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                    Text {
                        id: systemRiskyText
                        x: 10
                        y: 20
                        width: 100
                        height: 225
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
                    antialiasing: true
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
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit

                }


                Image {
                    id: vector2
                    x: 152
                    y: 325
                    width: 162/2
                    source: "images/Vector-2.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }


                Image {
                    id: vector285
                    x: 152
                    y: 431
                    width: 97/2
                    source: "images/Vector 285.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }


                Image {
                    id: vector
                    x: 152
                    y: 170
                    width: 162/2
                    source: "images/Vector.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }


                Image {
                    id: group9728
                    x: 92
                    y: 533
                    width: 63/2
                    source: "images/Group 9728.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }


                Image {
                    id: group9727
                    x: 195
                    y: 458
                    width: 155/2
                    source: "images/Group 9727.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }


                Image {
                    id: group9726
                    x: 237
                    y: 375
                    width: 176/2
                    source: "images/Group 9726.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }


                Image {
                    id: group9725
                    x: 233
                    y: 280
                    width: 199/2
                    source: "images/Group 9725.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }


                Image {
                    id: vector10
                    x: 159
                    y: 20
                    width: 214/2
                    source: "images/Vector-10.svg"
                    antialiasing: true
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
                    text: qsTr("Voltage")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }


                ParallelAnimation {
                    id: voltageClicked
                    NumberAnimation {
                        target: voltageCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        target: voltageCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        target: voltageCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }


                ParallelAnimation {
                    id: flickerClicked
                    NumberAnimation {
                        target: flickerCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        target: flickerCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        target: flickerCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }


                ParallelAnimation {
                    id: frequencyClicked
                    NumberAnimation {
                        target: frequencyCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        target: frequencyCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        target: frequencyCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }


                ParallelAnimation {
                    id: unbalanceClicked
                    NumberAnimation {
                        target: unbalanceCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        target: unbalanceCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        target: unbalanceCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }


                ParallelAnimation {
                    id: powerClicked
                    NumberAnimation {
                        target: powerCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        target: powerCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        target: powerCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }


                ParallelAnimation {
                    id: currentClicked
                    NumberAnimation {
                        target: currentCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        target: currentCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        target: currentCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }


                ParallelAnimation {
                    id: currentnonClicked
                    onStopped: {
                        closeCurrent.start()
                    }
                    NumberAnimation {
                        target: voltageCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed
                        to: 0.2
                    }

                    NumberAnimation {
                        target: voltageCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed
                        to: 275
                    }

                    NumberAnimation {
                        target: voltageCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed
                        to: -290
                    }
                }


                ParallelAnimation {
                    id: flickerNonClicked
                    onStopped: {
                        closeCurrent.start()
                    }
                    NumberAnimation {
                        target: flickerCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 0.2
                    }

                    NumberAnimation {
                        target: flickerCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 408
                    }

                    NumberAnimation {
                        target: flickerCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: -221
                    }
                }

                ParallelAnimation {
                    id: frequencyNonClicked
                    onStopped: {
                        closeCurrent.start()
                    }
                    NumberAnimation {
                        target: frequencyCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 0.2
                    }

                    NumberAnimation {
                        target: frequencyCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 465
                    }

                    NumberAnimation {
                        target: frequencyCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: -89
                    }
                }

                Image {
                    id: vector284
                    x: 205
                    y: 276
                    width: 57/2
                    source: "images/Vector 284.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                ParallelAnimation {
                    id: unbalanceNonClicked
                    onStopped: {
                        closeCurrent.start()
                    }
                    NumberAnimation {
                        target: unbalanceCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 0.2
                    }

                    NumberAnimation {
                        target: unbalanceCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 459
                    }

                    NumberAnimation {
                        target: unbalanceCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 52
                    }
                }

                ParallelAnimation {
                    id: powerNonClicked
                    onStopped: {
                        closeCurrent.start()
                    }
                    NumberAnimation {
                        target: powerCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 0.2
                    }

                    NumberAnimation {
                        target: powerCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 393
                    }

                    NumberAnimation {
                        target: powerCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 185
                    }
                }

                ParallelAnimation {
                    id: currentNonClicked
                    onStopped: {
                        closeCurrent.start()
                    }
                    NumberAnimation {
                        target: currentCircle
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 0.2
                    }

                    NumberAnimation {
                        target: currentCircle
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 255
                    }

                    NumberAnimation {
                        target: currentCircle
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 251
                    }
                }

                MouseArea {
                    id: mouseAreaForVoltage
                    x: 105
                    y: 8
                    width: 172
                    height: 128
                    onClicked: {
                        currentClickedSmallCircle1.start()
                        rectangle25.x=1600
                        rectangle26.x=450
                        rectangle26.y=0
                        voltageCircle.visible=true
                        curAnim1.start()
                        groupDot.visible=false
                        voltageClicked.start()
                        clickedCircle1.start()
                        mouseAreaForReturnBack.z=1

                        circle1text.text="Transient"
                        circle2text.text="Unbalance"
                        circle3text.text="DC"
                        circle4text.text="Over Voltage"
                        circle5text.text="RVC"
                        circle6text.text="Dip"
                        circle7text.text="Sweel"
                        circle8text.text="Int. Har."
                        circle9text.text="Harmonic"
                        circle10text.text="RMS"



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

                MouseArea {
                    id: mouseAreaForFlicker
                    x: 277
                    y: 76
                    width: 177
                    height: 149
                    onClicked: {
                        flickerClickedSmallCircle1.start()
                        rectangle25.x=1500
                        rectangle26.x=442
                        rectangle26.y=0
                        flickerCircle.visible=true
                        flickerAnim1.start()
                        groupDot.visible=false
                        flickerClicked.start()
                        clickedCircle1.start()
                        mouseAreaForReturnBackFlicker.z=1

                        circle1text.text="Pst"
                        circle2text.text="Plt"


                    }
                    enabled: true
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
                    text: qsTr("Current")
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

                MouseArea {
                    id: mouseAreaForFrequency
                    x: 297
                    y: 225
                    width: 177
                    height: 138
                    enabled: true
                    onClicked: {
                        frequencyClickedSmallCircle1.start()
                        rectangle25.x=1500
                        rectangle26.x=442
                        rectangle26.y=0
                        frequencyCircle.visible=true
                        frequencyAnim1.start()
                        groupDot.visible=false
                        frequencyClicked.start()
                        clickedCircle1.start()
                        mouseAreaForReturnBackFrequency.z=1

                        circle1text.text="1 Wave"
                        circle2text.text="200 ms"

                    }
                }

                MouseArea {
                    id: mouseAreaForUnbalance
                    x: 297
                    y: 363
                    width: 177
                    height: 134
                    enabled: true
                    onClicked: {
                        unbalanceClickedSmallCircle1.start()
                        rectangle25.x=1500
                        rectangle26.x=442
                        rectangle26.y=0
                        unbalanceCircle.visible=true
                        unbalanceAnim1.start()
                        groupDot.visible=false
                        unbalanceClicked.start()
                        clickedCircle1.start()
                        mouseAreaForReturnBackUnbalance.z=1

                        circle1text.text="Positive"
                        circle2text.text="Negative"
                        circle3text.text="Zero"


                    }
                }

                MouseArea {
                    id: mouseAreaForPower
                    x: 259
                    y: 497
                    width: 190
                    height: 138
                    enabled: true
                    onClicked: {
                        powerClickedSmallCircle1.start()
                        rectangle25.x=1500
                        rectangle26.x=442
                        rectangle26.y=0
                        powerCircle.visible=true
                        powerAnim1.start()
                        groupDot.visible=false
                        powerClicked.start()
                        clickedCircle1.start()
                        mouseAreaForReturnBackPower.z=1

                        circle1text.text="P"
                        circle2text.text="Q"
                        circle3text.text="S"
                        circle4text.text="PF"
                        circle5text.text="DPF"
                        circle6text.text="Harmonic"


                    }

                }

                MouseArea {
                    id: mouseAreaForCurrent
                    x: 69
                    y: 561
                    width: 190
                    height: 139
                    enabled: true

                    onClicked: {
                        currentClickedSmallCircle.start()
                        rectangle25.x=1500
                        rectangle26.x=442
                        rectangle26.y=0
                        currentCircle.visible=true
                        currentAnim1.start()
                        groupDot.visible=false
                        currentClicked.start()
                        clickedCircle1.start()
                        mouseAreaForReturnBackCurrent.z=1

                        circle1text.text="DC"
                        circle2text.text="Int. Harm."
                        circle3text.text="Harmonic"
                        circle4text.text="KF"
                        circle5text.text="RMS"
                        circle6text.text="Over Current"

                    }
                }

                Rectangle {
                    id: rectangle5
                    x: 429
                    y: 691
                    width: 14
                    height: 14
                    color: "#284863"
                    radius: 10
                }

                Rectangle {
                    id: rectangle6
                    x: 379
                    y: 697
                    width: 50
                    height: 2
                    color: "#284863"
                }

                Rectangle {
                    id: rectangle7
                    x: 367
                    y: 691
                    width: 14
                    height: 14
                    color: "#b7c5d3"
                    radius: 10
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


                Image {
                    id: fortestleftmenu
                    x: 144
                    y: 0
                    source: "images/fortestleftmenu.svg"
                    fillMode: Image.PreserveAspectFit
                    width: 600/2

                }
                Image {
                    id: fortestleftpng
                    x: 144
                    y: 348
                    width: 600/2
                    source: "images/fortestleftpng.png"
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: rectangle12
                x: -442
                y: 0
                width: 1280
                height: 728
                color: "#00ffffff"





















































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
                id: unbalancesRotationBig
                loops: -1
                property: "rotation"
                duration: 200
                from:0
                to: 360
            }

            PropertyAnimation {
                id: imagePF1Animation
                property: "x"
                duration: 5000
                to: -850
                //        easing.type:Easing.InCubic
                onStopped: {
                    imagePF1Animation1.start()
                }
            }

            PropertyAnimation {
                id: imagePF1Animation1
                property: "x"
                duration: 5000
                to: -1770
                //        easing.type:Easing.InCubic
                onStopped: {
                    imagePF1Animation.start()
                }
            }

            PropertyAnimation {
                id: imagePF2Animation
                property: "x"
                duration: 5000
                to: -870
                //        easing.type:Easing.InCubic
                onStopped: {
                    imagePF2Animation2.start()
                }
            }

            PropertyAnimation {
                id: imagePF2Animation2
                property: "x"
                duration: 5000
                to: -1800
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
                target: voltageCircle
                property: "visible"
                duration: 1
                to: 0
            }

            NumberAnimation {
                target: flickerCircle
                property: "visible"
                duration: 1
                to: 0
            }
            NumberAnimation {
                target: frequencyCircle
                property: "visible"
                duration: 1
                to: 0
            }
            NumberAnimation {
                target: unbalanceCircle
                property: "visible"
                duration: 1
                to: 0
            }
            NumberAnimation {
                target: powerCircle
                property: "visible"
                duration: 1
                to: 0
            }
            NumberAnimation {
                target: currentCircle
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
                y: 1
                width: 470
                height: 728
                onClicked: {    
                    currentnonClickedSmallCircle1.start()
                    currentnonClicked.start()
                    mouseAreaForReturnBack.z=0
                }
            }
            MouseArea {
                id: mouseAreaForReturnBackFlicker
                x: 0
                y: 1
                width: 470
                height: 728
                onClicked: {
                    flickerNonClickedSmallCircle1.start()
                    flickerNonClicked.start()
                    mouseAreaForReturnBackFlicker.z=0
                }
            }
            MouseArea {
                id: mouseAreaForReturnBackFrequency
                x: 0
                y: 1
                width: 470
                height: 728
                onClicked: {
                    frequencyNonClickedSmallCircle1.start()
                    frequencyNonClicked.start()
                    mouseAreaForReturnBackFrequency.z=0
                }
            }

            MouseArea {
                id: mouseAreaForReturnBackUnbalance
                x: 0
                y: 1
                width: 470
                height: 728
                onClicked: {
                    unbalanceNonClickedSmallCircle1.start()
                    unbalanceNonClicked.start()
                    mouseAreaForReturnBackUnbalance.z=0
                }
            }

            MouseArea {
                id: mouseAreaForReturnBackPower
                x: 0
                y: 1
                width: 470
                height: 728
                onClicked: {
                    powerNonClickedSmallCircle1.start()
                    powerNonClicked.start()
                    mouseAreaForReturnBackPower.z=0
                }
            }


            MouseArea {
                id: mouseAreaForReturnBackCurrent
                x: 0
                y: 1
                width: 470
                height: 728
                z: 1
                onClicked: {
                    currentNonClickedSmallCircle1.start()
                    currentNonClicked.start()
                    mouseAreaForReturnBackCurrent.z=0
                }
            }






            ParallelAnimation {
                id: clickedCircle1


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
                    target:lineCur13
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 360
                    from: 0
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
                    target: lineCur6
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 360
                    from: 0
                }

                NumberAnimation {
                    target:lineCur12
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 360
                    from: 0
                }
                NumberAnimation {
                    target:lineCur14
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 360
                    from: 0
                }
                NumberAnimation {
                    target:lineCur15
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 360
                    from: 0
                }
                NumberAnimation {
                    target:lineCur16
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 360
                    from: 0
                }
                NumberAnimation {
                    target:lineCur17
                    property: "rotation"
                    loops: -1
                    duration: animationsForcurrentClickedCircle
                    to: 360
                    from: 0
                }
            }


            Image {
                id: line1
                x: 71
                y: 472
                width: 6
                height: 39
                opacity: 0
                source: "images/LineCur2.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
                rotation: 30.263
            }

            Image {
                id: line2
                x: 145
                y: 499
                width: 21
                opacity: 0
                source: "images/LineCur3.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
                rotation: 32.231
            }

            Image {
                id: line3
                x: 223
                y: 490
                width: 40
                opacity: 0
                source: "images/LineCur1.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
                rotation: 34.606
            }



            Image {
                id: line4
                x: 300
                y: 434
                width: 6
                height: 51
                opacity: 0
                source: "images/LineCur2.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
                rotation: -40.609
            }

            Image {
                id: line5
                x: 341
                y: 364
                width: 6
                height: 40
                opacity: 0
                source: "images/LineCur2.svg"
                fillMode: Image.PreserveAspectFit
                rotation: -67
                antialiasing: true
            }

            Image {
                id: line6
                x: 341
                y: 284
                width: 6
                height: 35
                opacity: 0
                source: "images/LineCur2.svg"
                fillMode: Image.PreserveAspectFit
                rotation: -92
                antialiasing: true
            }


            Image {
                id: line7
                x: 301
                y: 201
                width: 11
                height: 40
                opacity: 0
                source: "images/LineCur2.svg"
                fillMode: Image.PreserveAspectFit
                rotation: -123
                antialiasing: true
            }

            Image {
                id: line8
                x: 241
                y: 133
                width: 15
                height: 49
                opacity: 0
                source: "images/LineCur2.svg"
                fillMode: Image.PreserveAspectFit
                rotation: -149
                antialiasing: true
            }

            Image {
                id: line9
                x: 154
                y: 125
                width: 21
                height: 33
                opacity: 0
                source: "images/LineCur2.svg"
                fillMode: Image.PreserveAspectFit
                rotation: -171.77
                antialiasing: true
            }

            Image {
                id: line10
                x: 77
                y: 138
                width: 6
                height: 38
                opacity: 0
                source: "images/LineCur2.svg"
                fillMode: Image.PreserveAspectFit
                rotation: -201.77
                antialiasing: true
            }

            Rectangle {
                id: circle1
                x: -4
                y: 508
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                antialiasing: true

                SequentialAnimation {
                    id: currentClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            from: 0
                            to: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+90
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+90
                            from: 0
                            to: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+80
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+80
                            from: 0
                            to: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            from: 0
                            to: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+60
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+60
                            from: 0
                            to: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            from: 0
                            to: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line7
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+40
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle7
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+40
                            from: 0
                            to: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line8
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+30
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle8
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+30
                            from: 0
                            to: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line9
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+30
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle9
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+30
                            from: 0
                            to: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line10
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+30
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle10
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+30
                            from: 0
                            to: 1
                        }
                    }
                }


                SequentialAnimation {
                    id: flickerClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            from: 0
                            to: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            from: 0
                            to: 1
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            from: 0
                            to: 1
                        }
                    }
                }

                SequentialAnimation {
                    id: frequencyClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }
                    }
                }
                SequentialAnimation {
                    id: unbalanceClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }
                    }

                }

                SequentialAnimation {
                    id: powerClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+70
                            to: 1
                            from: 0
                        }
                    }
                }

                SequentialAnimation {
                    id: currentClickedSmallCircle
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }

                        NumberAnimation {
                            target: circle6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 1
                            from: 0
                        }
                    }
                }



                SequentialAnimation {
                    id: currentnonClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line7
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle7
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line8
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle8
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line9
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle9
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line10
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle10
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle
                            to: 0
                            from: 1
                        }
                    }
                    NumberAnimation{
                        target:voltageCircle
                        property: "visible"
                        duration: animationsForCurrentClickedSmallCircle
                        to: 0
                    }

                }

                SequentialAnimation {
                    id: flickerNonClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            to: 0
                            from: 1
                        }
                    }
                }

                SequentialAnimation {
                    id: frequencyNonClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+160
                            to: 0
                            from: 1
                        }
                    }
                }


                SequentialAnimation {
                    id: unbalanceNonClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+100
                            to: 0
                            from: 1
                        }
                    }
                }

                SequentialAnimation {
                    id: powerNonClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }
                }


                SequentialAnimation {
                    id: currentNonClickedSmallCircle1
                    ParallelAnimation {
                        NumberAnimation {
                            target: line1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle1
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle2
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle3
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle5
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }
                    ParallelAnimation {
                        NumberAnimation {
                            target: line6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle6
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line7
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle7
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line8
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle8
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line9
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle9
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }

                    ParallelAnimation {
                        NumberAnimation {
                            target: line10
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }

                        NumberAnimation {
                            target: circle10
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+50
                            to: 0
                            from: 1
                        }
                    }
                }

                Image {
                    id: inCurrentEllipse2
                    x: 13
                    y: 14
                    width: 174/2.2
                    source: "images/InCurrentEllipse2.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: inCurrentVector4
                    x: 4
                    y: 6
                    width: 212/2.2
                    source: "images/InCurrentVector4.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: text515
                    x: -8
                    y: 54
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("275")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: circle1text
                    x: -8
                    y: 30
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("DC")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }


            Rectangle {
                id: circle2
                x: 111
                y: 545
                width: 136
                height: 120
                opacity: 0
                color: "#00ffffff"
                antialiasing: true
                Image {
                    id: inCurrentEllipse3
                    x: 6
                    y: 7
                    width: 174/2.2
                    source: "images/InCurrentEllipse3.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: inCurrentVector2
                    x: -3
                    y: -1
                    width: 212/2.2
                    source: "images/InCurrentVector2.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: text517
                    x: -15
                    y: 54
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("275")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: circle2text
                    x: 5
                    y: 27
                    width: 80
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("Over Voltage")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }


            Rectangle {
                id: circle3
                x: 231
                y: 534
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    id: inCurrentEllipse1
                    x: 0
                    y: 8
                    width: 174/2.2
                    source: "images/InCurrentEllipse1.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: inCurrentVector6
                    x: -9
                    y: 0
                    width: 212/2.2
                    source: "images/InCurrentVector6.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: text514
                    x: -22
                    y: 50
                    width: 120
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("120")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }


                Text {
                    id: circle3text
                    x: -7
                    y: 25
                    width: 90
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("Under Voltage")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }

            }


            Rectangle {
                id: circle4
                x: 318
                y: 464
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    x: 9
                    y: 16
                    width: 174/2.2
                    source: "images/InCurrentEllipse2.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: lineCur6
                    x: 0
                    y: 8
                    width: 212/2.2
                    source: "images/InCurrentVector4.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }


                Text {
                    id: text516
                    x: 18
                    y: 66
                    width: 60
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("1220")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }
                Text {
                    id: circle4text
                    x: 13
                    y: 32
                    width: 70
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Transient")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }











            Rectangle {
                id: circle5
                x: 370
                y: 354
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    x: 9
                    y: 16
                    width: 174/2.2
                    source: "images/InCurrentEllipse2.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }

                Image {
                    id:lineCur12
                    x: 0
                    y: 8
                    width: 212/2.2
                    source: "images/InCurrentVector4.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }


                Text {
                    x: 18
                    y: 60
                    width: 60
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("120")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }
                Text {
                    id:circle5text
                    x: 13
                    y: 30
                    width: 70
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Transient")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }








            Rectangle {
                id: circle6
                x: 370
                y: 236
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    x: 9
                    y: 16
                    width: 174/2.2
                    source: "images/InCurrentEllipse2.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }

                Image {
                    id:lineCur13
                    x: 0
                    y: 8
                    width: 212/2.2
                    source: "images/InCurrentVector4.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }


                Text {
                    x: 18
                    y: 60
                    width: 60
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("120")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }
                Text {
                    id:circle6text
                    x: 13
                    y: 30
                    width: 70
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Transient")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }






            Rectangle {
                id: circle7
                x: 318
                y: 115
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    x: 9
                    y: 16
                    width: 174/2.2
                    source: "images/InCurrentEllipse2.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }

                Image {
                    id:lineCur14
                    x: 0
                    y: 9
                    width: 212/2.2
                    source: "images/InCurrentVector4.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }


                Text {
                    x: 18
                    y: 60
                    width: 60
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("120")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }
                Text {
                    id:circle7text
                    x: 13
                    y: 30
                    width: 70
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Transient")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }





            Rectangle {
                id: circle8
                x: 231
                y: 24
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    x: 9
                    y: 16
                    width: 174/2.2
                    source: "images/InCurrentEllipse2.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }

                Image {
                    id:lineCur15
                    x: 0
                    y: 8
                    width: 212/2.2
                    source: "images/InCurrentVector4.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }


                Text {
                    x: 18
                    y: 60
                    width: 60
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("120")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }
                Text {
                    id:circle8text
                    x: 13
                    y: 30
                    width: 70
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Transient")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }




            Rectangle {
                id: circle9
                x: 111
                y: 11
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    x: 9
                    y: 16
                    width: 174/2.2
                    source: "images/InCurrentEllipse2.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }

                Image {
                    id:lineCur16
                    x: 0
                    y: 8
                    width: 212/2.2
                    source: "images/InCurrentVector4.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }


                Text {
                    x: 18
                    y: 60
                    width: 60
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("120")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }
                Text {
                    id:circle9text
                    x: 13
                    y: 30
                    width: 70
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Transient")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }



            Rectangle {
                id: circle10
                x: -4
                y: 33
                width: 120
                height: 120
                opacity: 0
                color: "#00ffffff"
                Image {
                    x: 9
                    y: 16
                    width: 174/2.2
                    source: "images/InCurrentEllipse2.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }

                Image {
                    id:lineCur17
                    x: 0
                    y: 8
                    width: 212/2.2
                    source: "images/InCurrentVector4.svg"
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }


                Text {
                    x: 18
                    y: 60
                    width: 60
                    height: 50/2
                    color: "#ffffff"
                    text: qsTr("120")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }
                Text {
                    id:circle10text
                    x: 13
                    y: 30
                    width: 70
                    height: 30
                    color: "#ffffff"
                    text: qsTr("Transient")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
            }


            ParallelAnimation {
                id: frequencyNonClicked1
                NumberAnimation {
                    target: frequencyCircle
                    property: "scale"
                    duration: animationsForcurrentClickedCircleClosed+100
                    to: 0.2
                }

                NumberAnimation {
                    target: frequencyCircle
                    property: "x"
                    duration: animationsForcurrentClickedCircleClosed+100
                    to: 465
                }

                NumberAnimation {
                    target: frequencyCircle
                    property: "y"
                    duration: animationsForcurrentClickedCircleClosed+100
                    to: -89
                }
            }
        }

        ParallelAnimation {
            id: curAnim1
            NumberAnimation {
                target: vectorCur2
                property: "rotation"
                loops: -1
                duration: 2000
                to: 360
                from: 0
            }

            NumberAnimation {
                target: vectorCur41
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 0
                from: 360
            }

            NumberAnimation {
                target: vectorCur31
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 360
                from: 0
            }
        }
        
        
        ParallelAnimation {
            id: flickerAnim1
            NumberAnimation {
                target: vectorFlicker2
                property: "rotation"
                loops: -1
                duration: 2000
                to: 360
                from: 0
            }

            NumberAnimation {
                target: vectorFlicker4
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 0
                from: 360
            }

            NumberAnimation {
                target: vectorFlicker3
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 360
                from: 0
            }
        }

        ParallelAnimation {
            id: frequencyAnim1
            NumberAnimation {
                target: vectorFrequency2
                property: "rotation"
                loops: -1
                duration: 2000
                to: 360
                from: 0
            }

            NumberAnimation {
                target: vectorFrequency4
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 0
                from: 360
            }

            NumberAnimation {
                target: vectorFrequency3
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 360
                from: 0
            }
        }


        ParallelAnimation {
            id: unbalanceAnim1
            NumberAnimation {
                target: vectorUnbalance2
                property: "rotation"
                loops: -1
                duration: 2000
                to: 360
                from: 0
            }

            NumberAnimation {
                target: vectorUnbalance4
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 0
                from: 360
            }

            NumberAnimation {
                target: vectorUnbalance3
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 360
                from: 0
            }
        }

        ParallelAnimation {
            id: powerAnim1
            NumberAnimation {
                target: vectorPower2
                property: "rotation"
                loops: -1
                duration: 2000
                to: 360
                from: 0
            }

            NumberAnimation {
                target: vectorPower4
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 0
                from: 360
            }

            NumberAnimation {
                target: vectorPower3
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 360
                from: 0
            }
        }


        ParallelAnimation {
            id: currentAnim1
            NumberAnimation {
                target: vectorCurrent2
                property: "rotation"
                loops: -1
                duration: 2000
                to: 360
                from: 0
            }

            NumberAnimation {
                target: vectorCurrent4
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 0
                from: 360
            }

            NumberAnimation {
                target: vectorCurrent3
                property: "rotation"
                loops: -1
                duration: animationsForcurrentClickedCircle
                to: 360
                from: 0
            }
        }

        Rectangle {
            id: voltageCircle
            x: 275
            y: -305
            width: 760
            height: 760
            visible: false
            color: "#00ffffff"
            antialiasing: true
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
                x: 142
                y: 250
                width: 453
                height: 200
                color: "#ffffff"
                text: qsTr("Voltage")
                font.letterSpacing: -2
                font.pixelSize: 75
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: text545
                x: 71
                y: 349
                width: 595
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

        
        
        Rectangle {
            id: flickerCircle
            x: 408
            y: -221
            width: 760
            height: 760
            visible: false
            color: "#00ffffff"
            antialiasing: true
            Image {
                id: vectorFlicker1
                x: 161
                y: 175
                source: "images/VectorCur1.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: vectorFlicker2
                x: 34
                y: 45
                width: 800/1.2
                source: "images/VectorCur2.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: vectorFlicker3
                x: -171
                y: -156
                source: "images/VectorCur3.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: vectorFlicker4
                x: 113
                y: 128
                source: "images/VectorCur4.svg"
                fillMode: Image.PreserveAspectFit
                rotation: 70
            }

            Text {
                id: text5442
                x: 142
                y: 250
                width: 453
                height: 200
                color: "#ffffff"
                text: qsTr("Flicker")
                font.letterSpacing: -2
                font.pixelSize: 75
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: text5452
                x: 71
                y: 349
                width: 595
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

        Rectangle {
            id: frequencyCircle
            x: 465
            y: -89
            width: 760
            height: 760
            visible: false
            color: "#00ffffff"
            antialiasing: true
            Image {
                id:vectorFrequency1
                x: 161
                y: 175
                source: "images/VectorCur1.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorFrequency2
                x: 34
                y: 45
                width: 800/1.2
                source: "images/VectorCur2.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorFrequency3
                x: -171
                y: -156
                source: "images/VectorCur3.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorFrequency4
                x: 113
                y: 128
                source: "images/VectorCur4.svg"
                rotation: 70
                fillMode: Image.PreserveAspectFit
            }

            Text {
                x: 142
                y: 250
                width: 453
                height: 200
                color: "#ffffff"
                text: qsTr("Frequency")
                font.letterSpacing: -2
                font.pixelSize: 75
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Regular"
            }

            Text {
                x: 71
                y: 349
                width: 595
                height: 200
                color: "#ffffff"
                text: qsTr("275")
                font.letterSpacing: -2
                font.pixelSize: 80
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Light"
            }
            scale: 0.2
        }

        Rectangle {
            id: unbalanceCircle
            x: 459
            y: 52
            width: 760
            height: 760
            visible: false
            color: "#00ffffff"
            antialiasing: true
            Image {
                id:vectorUnbalance1
                x: 161
                y: 175
                source: "images/VectorCur1.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorUnbalance2
                x: 34
                y: 45
                width: 800/1.2
                source: "images/VectorCur2.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorUnbalance3
                x: -171
                y: -156
                source: "images/VectorCur3.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorUnbalance4
                x: 113
                y: 128
                source: "images/VectorCur4.svg"
                rotation: 70
                fillMode: Image.PreserveAspectFit
            }

            Text {
                x: 142
                y: 250
                width: 453
                height: 200
                color: "#ffffff"
                text: qsTr("Unbalance")
                font.letterSpacing: -2
                font.pixelSize: 75
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Regular"
            }

            Text {
                x: 71
                y: 349
                width: 595
                height: 200
                color: "#ffffff"
                text: qsTr("275")
                font.letterSpacing: -2
                font.pixelSize: 80
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Light"
            }
            scale: 0.2
        }

        Rectangle {
            id: powerCircle
            x: 393
            y: 185
            width: 760
            height: 760
            visible: false
            color: "#00ffffff"
            antialiasing: true
            scale: 0.2
            Image {
                id:vectorPower1
                x: 161
                y: 175
                source: "images/VectorCur1.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorPower2
                x: 34
                y: 45
                width: 800/1.2
                source: "images/VectorCur2.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorPower3
                x: -171
                y: -156
                source: "images/VectorCur3.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorPower4
                x: 113
                y: 128
                source: "images/VectorCur4.svg"
                rotation: 70
                fillMode: Image.PreserveAspectFit
            }

            Text {
                x: 142
                y: 250
                width: 453
                height: 200
                color: "#ffffff"
                text: qsTr("Power")
                font.letterSpacing: -2
                font.pixelSize: 75
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Regular"
            }

            Text {
                x: 71
                y: 349
                width: 595
                height: 200
                color: "#ffffff"
                text: qsTr("1285")
                font.letterSpacing: -2
                font.pixelSize: 80
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Light"
            }
        }

        Rectangle {
            id: currentCircle
            x: 255
            y: 251
            width: 760
            height: 760
            visible: false
            color: "#00ffffff"
            antialiasing: true
            scale: 0.2
            Image {
                id:vectorCurrent1
                x: 161
                y: 175
                source: "images/VectorCur1.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorCurrent2
                x: 34
                y: 45
                width: 800/1.2
                source: "images/VectorCur2.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorCurrent3
                x: -171
                y: -156
                source: "images/VectorCur3.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id:vectorCurrent4
                x: 113
                y: 128
                source: "images/VectorCur4.svg"
                rotation: 70
                fillMode: Image.PreserveAspectFit
            }

            Text {
                x: 142
                y: 250
                width: 453
                height: 200
                color: "#ffffff"
                text: qsTr("Current")
                font.letterSpacing: -2
                font.pixelSize: 75
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Regular"
            }

            Text {
                x: 71
                y: 349
                width: 595
                height: 200
                color: "#ffffff"
                text: qsTr("1285")
                font.letterSpacing: -2
                font.pixelSize: 80
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Light"
            }
        }

        Image {
            id: menuRightSide
            x: 930
            y: -1
            width: 700/2
            source: "images/menuRightSide.svg"
            fillMode: Image.PreserveAspectFit
        }
    }

    PropertyAnimation {
        id: powerSlided
        target: rectangle14
        property: "x"
        duration: 300
        to: 1123

    }

    PropertyAnimation {
        id: powerQualitySlided
        target: rectangle14
        property: "x"
        duration: 300
        to: -170
    }

    Rectangle {
        id: rectangle14
        x: -170
        y: 0
        width: 327
        height: 728
        color: "#00ffffff"

        MouseArea {
            id: mouseAreaForSlideMenu
            x: 0
            y: 0
            width: 327
            height: 728
            onClicked: {
//                powerSlided.start()

            }
        }



        MouseArea {
            id: mouseAreaForSlideMenu1
            x: 935
            y: 668
            width: 163
            height: 60
            onClicked: {
                powerSlided.start()

            }
        }

        MouseArea {
            id: mouseAreaForSlideMenu2
            x: -22
            y: 0
            width: 192
            height: 728
            //            drag.target:parent
            //            drag.axis: Drag.XAxis
            onClicked: {
                powerQualitySlided.start()
            }
        }

        Rectangle {
            id: rectangle36
            x: 170
            y: 0
            width: 153
            height: 728
            color: "#ffffff"
            Image {
                id: openMenu
                x: 91
                y: 599
                width: 72/2
                source: "images/Group 9785.svg"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay1
                    color: "#ff9300"
                }
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: group9835
                x: 0
                y: 0
                width: 288/2
                source: "images/Group 9835.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: powerqualitymenu
                x: 0
                y: 0
                width: 288/2
                source: "images/powerqualitymenu.svg"
                fillMode: Image.PreserveAspectFit

                Text {
                    id: freq
                    x: 0
                    y: 65
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "50.02"+" Hz"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: voltageA
                    x: 0
                    y: 137
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "242.21"+" V"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: voltageB
                    x: 0
                    y: 185
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "212.11"+" V"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: voltageC
                    x: 0
                    y: 234
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "212.11"+" V"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: voltageN
                    x: 0
                    y: 281
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "0.45"+" V"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    x: 0
                    id: currentA
                    y: 362
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "5.21"+" A"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: currentB
                    x: 0
                    y: 410
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "2.11"+" A"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: currentC
                    x: 0
                    y: 459
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "4.21"+" A"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: currentN
                    x: 0
                    y: 506
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "0.09"+" A"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: power
                    x: -6
                    y: 590
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "5.21" +" kW"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: reactivePower
                    x: -6
                    y: 638
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "2.11"+" kVAR"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: apparentPower
                    x: -6
                    y: 687
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "4.21"+" kVA"
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }
            }
        }

        SequentialAnimation {
               id: powerandpowerqualityAnim
               running: false

               ColorAnimation {
                   target: orangeRectanglePowerquality
                   property: "color"
                   from: "#ff9300"
                   to: "#3d3d3d"
                   duration: 2000 // 2 saniye
               }
               ColorAnimation {
                   property: "color"
                   from: "#ff9300"
                   to: "#3d3d3d"
                   duration: 2000 // 2 saniye
               }
               onStopped: {
                   powerandpowerqualityAnim2.start()
               }
        }


        SequentialAnimation {

               id: powerandpowerqualityAnim2
               running: false

               ColorAnimation {
                   target: orangeRectanglePowerquality
                   property: "color"
                   from: "#3d3d3d"
                   to: "#ff9300"
                   duration: 2000 // 2 saniye
               }
               ColorAnimation {
                   property: "color"
                   from: "#3d3d3d"
                   to: "#ff9300"
                   duration: 2000 // 2 saniye
               }
               onStopped: {
                   powerandpowerqualityAnim.start()
               }
        }
        Rectangle {
            id: orangeRectanglePowerquality
            x: 307
            y: 0
            width: 7
            height: 728
            color: "#ff9300"

        }
    }

    Item {
        id: __materialLibrary__
    }




}


