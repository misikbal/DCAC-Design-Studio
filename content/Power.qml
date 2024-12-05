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
        powerPageAnimations.start()
        phasesRotationAnim.start()
//        imagePF1Animation.start()
//        imagePF2Animation2.start()
//        unbalancesRotationBig.start()
//        groupDotRotation.start()
//        currentRotationBig.start()
//        currentRotationSmall.start()
//        flickerRotationBig.start()
//        flickerRotationSmall.start()
//        frequencyRotationBig.start()
//        frequencyRotationSmall.start()
//        unbalanceRotationBig.start()
//        unbalanceRotationSmall.start()
//        powerRotationBig.start()
//        powerRotationSmall.start()
//        voltageRotationBig.start()
//        voltageRotationSmall.start()
        rotatePQ.start()
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
        x: 1123
        y: -1
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
                powerSlided.start()

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
            id: rectanglePOWER
            x: -1123
            y: 0
            width: 1293
            height: 728
            visible: true
            color: "#f7f8fa"

            MouseArea {
            id: mouseAreaForSlideMenu122
            x: 682
            y: 668
            width: 163
            height: 60

            onClicked: {
                powerQualitySlided.start()

            }
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
                    property: "rotation"
                    duration: 5000
                    loops:-1
                    from:360
                    to:0
                }
                NumberAnimation{
                    property: "rotation"
                    duration: 5000
                    loops:-1
                    from:0
                    to:360
                }
            }

            Image {
                id: menu4
                x: 0
                y: 0
                width: 348
                source: "images/Menu.svg"
                fillMode: Image.PreserveAspectFit

                Rectangle {
                    id: rectangle28
                    x: 0
                    y: 363
                    width: 348
                    height: 361
                    color: "#ffffff"
                    //                    border.color: "#dce8ef"
                    Image {
                        id: image1
                        x: 5
                        y: 3
                        width: 335
                        height: 350
                        source: "images/Rectangle 105.svg"
                        fillMode: Image.Tile
                    }

                    Text {
                        id: reaktivePowerDefinition
                        x: 28
                        y: 132
                        width: 20
                        height: 13
                        color: "#284863"
                        text: qsTr("Q")
                        font.letterSpacing: -2
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        lineHeight: 2
                        wrapMode: Text.Wrap
                        font.styleName: "SemiBold"
                        font.family: "Akshar"
                    }
                    Text {
                        id: activePowerDefinition
                        x: 78
                        y: 132
                        width: 20
                        height: 13
                        color: "#284863"
                        text: qsTr("P")
                        font.letterSpacing: -2
                        font.pixelSize: 14
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        lineHeight: 2
                        wrapMode: Text.Wrap
                        font.styleName: "SemiBold"
                        font.family: "Akshar"
                    }
                    Rectangle {
                        id: rectangle32
                        x: 8
                        y: 135
                        width: 10
                        height: 6
                        color: "#3d70f8"
                        radius: 8
                    }
                    Rectangle {
                        id: rectangle33
                        x: 58
                        y: 135
                        width: 10
                        height: 6
                        color: "#4ec040"
                        radius: 8
                    }

                    ArcItem {
                        id: arc
                        x: 105
                        y: 16
                        width: 250/2
                        height: 250/2
                        antialiasing: true
                        end: 360
                        strokeColor: "#4ec040"
                        strokeWidth: 25
                        fillColor: "#00000000"
                    }

                    ArcItem {
                        id: arc1
                        x: 105
                        y: 16
                        width: 250/2
                        height: 250/2
                        antialiasing: true
                        begin: 360-((parseFloat(reaktivePowervoltageValueText.text)*360)/(parseFloat(reaktivePowervoltageValueText.text)+parseFloat(activePowervoltageValueText.text)))

                        end: 360
                        strokeColor: "#3d70f8"
                        strokeWidth: 40
                        fillColor: "#00000000"
                    }


                    Image {
                        id: ellipse214
                        x: 246
                        y: 66
                        width: 150/2
                        source: "images/Ellipse 214.svg"
                        antialiasing: true
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: ellipse1971
                        x: 252
                        y: 72
                        width: 125/2
                        source: "images/Ellipse 197.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: oval1
                        x: 19
                        y: 21
                        width: 125/2
                        source: "images/Oval-1.svg"
                        fillMode: Image.PreserveAspectFit
                    }


                    Image {
                        id: ellipse2145
                        x: 13
                        y: 15
                        width: 150/2
                        source: "images/Ellipse 214.svg"
                        layer.enabled: true
                        layer.effect: ColorOverlayEffect {
                            id: colorOverlay
                            color: "#3d70f8"
                        }
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: ovalWithShadow
                        x: 127
                        y: 38
                        width: 162/2
                        source: "images/OvalWithShadow.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: apparentPowervoltageValueText
                        x: 107
                        y: 42
                        width: 242/2
                        height: 138/2
                        color: "#284863"
                        text: "222.22"
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: apparentPowerHeaderText
                        x: 107
                        y: 50
                        width: 242/2
                        height: 200/2
                        color: "#284863"
                        text: qsTr("S \nVA")
                        font.letterSpacing: -2
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        lineHeight: 2
                        wrapMode: Text.Wrap
                        font.styleName: "SemiBold"
                        font.family: "Akshar"
                    }




                    Text {
                        id: reaktivePowervoltageValueText
                        x: -11
                        y: 16
                        width: 242/2
                        height: 138/2
                        color: "#FFFFFF"
                        text: "222.22"
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }
                    Text {
                        id: reaktivePowerHeaderText
                        x: -12
                        y: 24
                        width: 242/2
                        height: 200/2
                        color: "#FFFFFF"
                        text: qsTr("Q\nVAR")
                        font.letterSpacing: -2
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        lineHeight: 2
                        wrapMode: Text.Wrap
                        font.styleName: "SemiBold"
                        font.family: "Akshar"
                    }

                    Text {
                        id: activePowerHeaderText
                        x: 222
                        y: 76
                        width: 242/2
                        height: 200/2
                        color: "#FFFFFF"
                        text: qsTr("P \nW")
                        font.letterSpacing: -2
                        font.pixelSize: 15
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignTop
                        lineHeight: 2
                        wrapMode: Text.Wrap
                        font.styleName: "SemiBold"
                        font.family: "Akshar"
                    }

                    Text {
                        id: activePowervoltageValueText
                        x: 223
                        y: 68
                        width: 242/2
                        height: 138/2
                        color: "#FFFFFF"
                        text:"222.22"
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }
                }

                Text {
                    id: thdVoltageHeader1
                    x: 12
                    y: 568
                    width: 60
                    height: 480/2
                    color: "#284863"
                    text: qsTr("P \nQ\nS")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    verticalAlignment: Text.AlignTop
                    lineHeight: 2
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Bold"
                    font.family: "Akshar"
                }

                Text {
                    id: harmonicsValues1
                    x: 28
                    y: 580
                    width: 60
                    height: 480/2
                    color: "#284863"
                    text: qsTr("Watt \nVAR \nVA")
                    font.letterSpacing: -2
                    font.pixelSize: 15
                    verticalAlignment: Text.AlignTop
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: pPhase
                    x: 65
                    y: 573
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                CustomHeaderForPhaseN {
                    x: 268
                    y: 532
                    width: 133/2
                    height: 62/2
                    clip: true
                }

                CustomHeaderForPhaseC {
                    x: 200
                    y: 532
                    width: 133/2
                    height: 62/2
                    clip: true
                }


                CustomHeaderForPhaseB {
                    x: 132
                    y: 532
                    width: 133/2
                    height: 62/2
                    clip: true
                }


                CustomHeaderForPhaseA {
                    x: 64
                    y: 532
                    width: 133/2
                    height: 62/2
                    clip: true
                }

                Image {
                    id: image
                    x: 5
                    y: 11
                    width: 335
                    height: 340
                    source: "images/Rectangle 105.svg"
                    fillMode: Image.Tile
                }

                Text {
                    id: phaseBHarmonicHeader1
                    x: 138
                    y: 524
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
                    id: phaseCHarmonicHeader1
                    x: 206
                    y: 524
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
                    id: phaseAHarmonicHeader1
                    x: 70
                    y: 524
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
                    id: phaseNHarmonicHeader1
                    x: 274
                    y: 524
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
                    id: qPhase
                    x: 65
                    y: 618
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: sPhase
                    x: 65
                    y: 663
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: pPhase1
                    x: 132
                    y: 573
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: qPhase1
                    x: 132
                    y: 618
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: sPhase1
                    x: 132
                    y: 663
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: pPhase2
                    x: 200
                    y: 573
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: qPhase2
                    x: 200
                    y: 618
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: sPhase2
                    x: 200
                    y: 663
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: pPhase3
                    x: 268
                    y: 573
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: qPhase3
                    x: 268
                    y: 618
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: sPhase3
                    x: 268
                    y: 663
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: thdVoltageHeader2
                    x: 12
                    y: 213
                    width: 60
                    height: 140
                    color: "#284863"
                    text: qsTr("V \nI\nF")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    verticalAlignment: Text.AlignTop
                    lineHeight: 2
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Bold"
                    font.family: "Akshar"
                }

                Text {
                    id: harmonicsValues2
                    x: 23
                    y: 227
                    width: 60
                    height: 150
                    color: "#284863"
                    text: qsTr("V \nA\nHz")
                    font.letterSpacing: -2
                    font.pixelSize: 15
                    verticalAlignment: Text.AlignTop
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: pPhase4
                    x: 65
                    y: 217
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                CustomHeaderForPhaseN {
                    x: 268
                    y: 176
                    width: 133/2
                    height: 62/2
                    clip: true
                }

                CustomHeaderForPhaseC {
                    x: 200
                    y: 176
                    width: 133/2
                    height: 62/2
                    clip: true
                }

                CustomHeaderForPhaseB {
                    x: 132
                    y: 176
                    width: 133/2
                    height: 62/2
                    clip: true
                }

                CustomHeaderForPhaseA {
                    x: 64
                    y: 176
                    width: 133/2
                    height: 62/2
                    clip: true
                }

                Text {
                    id: phaseBHarmonicHeader2
                    x: 138
                    y: 168
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
                    id: phaseCHarmonicHeader2
                    x: 206
                    y: 168
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
                    id: phaseAHarmonicHeader2
                    x: 70
                    y: 168
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
                    id: phaseNHarmonicHeader2
                    x: 274
                    y: 168
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
                    id: qPhase4
                    x: 65
                    y: 262
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: sPhase4
                    x: 65
                    y: 307
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: pPhase5
                    x: 132
                    y: 217
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: qPhase5
                    x: 132
                    y: 262
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: sPhase5
                    x: 132
                    y: 307
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: pPhase6
                    x: 200
                    y: 217
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: qPhase6
                    x: 200
                    y: 262
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: sPhase6
                    x: 200
                    y: 307
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: pPhase7
                    x: 268
                    y: 217
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: qPhase7
                    x: 268
                    y: 262
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: sPhase7
                    x: 268
                    y: 307
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("25,47")
                    font.letterSpacing: -2
                    font.pixelSize: 40/2
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    clip: true
                    z: 1
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                ParallelAnimation{
                    id:powerPageAnimations
                    NumberAnimation {
                        target: ellipse204
                        loops: -1
                        property: "rotation"
                        duration: 2000
                        from:360
                        to: 0
                    }
                    NumberAnimation {
                        target: ellipse205
                        loops: -1
                        property: "rotation"
                        duration: 2000
                        from:360
                        to: 0
                    }
                    NumberAnimation {
                        target: vectoredited1
                        loops: -1
                        property: "rotation"
                        duration: 2000
                        from:360
                        to: 0
                    }
                    NumberAnimation {
                        target:  vectoredited2
                        loops: -1
                        property: "rotation"
                        duration: 2000
                        from:360
                        to: 0
                    }
                    NumberAnimation {
                        target:  vectoredited3
                        loops: -1
                        property: "rotation"
                        duration: 2000
                        from:360
                        to: 0
                    }
                    NumberAnimation {
                        target:  vectoredited4
                        loops: -1
                        property: "rotation"
                        duration: 2000
                        from:360
                        to: 0
                    }
                    NumberAnimation {
                        target: vectoredited11
                        loops: -1
                        property: "rotation"
                        duration: 2000
                        from:0
                        to: 360
                    }
                    NumberAnimation {
                        target:  vectoredited22
                        loops: -1
                        property: "rotation"
                        duration: 2000
                        from:0
                        to: 360
                    }
                    NumberAnimation {
                        target:  vectoredited33
                        loops: -1
                        property: "rotation"
                        duration: 2000
                        from:0
                        to: 360
                    }
                    NumberAnimation {
                        target:  vectoredited44
                        loops: -1
                        property: "rotation"
                        duration: 2000
                        from:0
                        to: 360
                    }
                }

                Image {
                    id: ellipse204
                    x: 27
                    y: 44
                    width: 126
                    source: "images/Ellipse 203.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Image {
                    id: group9792
                    x: 90
                    y: 104
                    width: 61
                    source: "images/Group 9791.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                    transformOrigin: Item.Left
                }

                Image {
                    id: group9790
                    x: 90
                    y: 104
                    width: 61
                    source: "images/Group 9789.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 120
                    transformOrigin: Item.Left
                }

                Image {
                    id: group97902
                    x: 90
                    y: 104
                    width: 61
                    height: 6
                    source: "images/Group 9790.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 240
                    transformOrigin: Item.Left
                }

                Image {
                    id: ellipse205
                    x: 188
                    y: 43
                    width: 126
                    source: "images/Ellipse 203.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }
                Image {
                    id: group9793
                    x: 251
                    y: 103
                    width: 35
                    source: "images/Group 9791.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                    transformOrigin: Item.Left
                }
                Image {
                    id: group9794
                    x: 251
                    y: 103
                    width: 35
                    source: "images/Group 9789.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 120
                    transformOrigin: Item.Left
                }
                Image {
                    id: group97903
                    x: 251
                    y: 103
                    width: 35
                    height: 6
                    source: "images/Group 9790.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 240
                    transformOrigin: Item.Left
                }
                Text {
                    id: harmonicsValues3
                    x: 11
                    y: 21
                    width: 60
                    height: 30
                    color: "#284863"
                    text: qsTr("Voltage")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    verticalAlignment: Text.AlignTop
                    lineHeight: 2.1
                    wrapMode: Text.Wrap
                    clip: true
                    font.styleName: "Light"
                    z: 1
                    font.family: "Akshar"
                }

                Text {
                    id: harmonicsValues4
                    x: 172
                    y: 21
                    width: 60
                    height: 30
                    color: "#284863"
                    text: qsTr("Current")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    verticalAlignment: Text.AlignTop
                    lineHeight: 2.1
                    wrapMode: Text.Wrap
                    clip: true
                    font.styleName: "Light"
                    z: 1
                    font.family: "Akshar"
                }
            }

            Rectangle {
                id: rectangle27
                x: 840
                y: 0
                width: 471
                height: 728
                color: "#00ffffff"
                antialiasing: true
                transform: Scale {
                    xScale: -1
                }

                Image {
                    x: 0
                    y: 163
                    height: 641/2
                    source: "images/Vector-6.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 0
                    y: 176
                    height: 587/2
                    source: "images/Vector-5.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 0
                    y: 136
                    height: 751/2
                    source: "images/Vector-7.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 2
                    y: 458
                    width: 308/2
                    source: "images/Vector-1.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 0
                    y: 108
                    width: 308/2
                    source: "images/Vector-3.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 135
                    y: 325
                    width: 162/2
                    source: "images/Vector-2.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 135
                    y: 431
                    width: 97/2
                    source: "images/Vector 285.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 135
                    y: 170
                    width: 162/2
                    source: "images/Vector.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 92
                    y: 533
                    width: 63/2
                    visible: false
                    source: "images/Group 9728.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 195
                    y: 458
                    width: 155/2
                    visible: false
                    source: "images/Group 9727.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 215
                    y: 383
                    width: 74
                    source: "images/Group 9726.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 218
                    y: 279
                    width: 74
                    height: 20
                    source: "images/Group 9725.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 188
                    y: 170
                    width: 117/2
                    source: "images/Group 9724.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 83
                    y: 76
                    width: 93/2
                    source: "images/Group 9722.svg"
                    fillMode: Image.PreserveAspectFit
                }

                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }

                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }


                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }


                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }


                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }

                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 0.47
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: 225
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleOpenedClosed
                        to: -50
                    }
                }


                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed
                        to: 0.2
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed
                        to: 275
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed
                        to: -290
                    }
                    onStopped: {
                        closeCurrent.start()
                    }
                }


                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 0.2
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 408
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: -221
                    }
                    onStopped: {
                        closeCurrent.start()
                    }
                }


                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 0.2
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 465
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: -89
                    }
                    onStopped: {
                        closeCurrent.start()
                    }
                }


                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 0.2
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 459
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 52
                    }
                    onStopped: {
                        closeCurrent.start()
                    }
                }


                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 0.2
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 393
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 185
                    }
                    onStopped: {
                        closeCurrent.start()
                    }
                }


                ParallelAnimation {
                    NumberAnimation {
                        property: "scale"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 0.2
                    }

                    NumberAnimation {
                        property: "x"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 255
                    }

                    NumberAnimation {
                        property: "y"
                        duration: animationsForcurrentClickedCircleClosed+100
                        to: 251
                    }
                    onStopped: {
                        closeCurrent.start()
                    }
                }

                Rectangle {
                    id: rectangle8
                    x: 83
                    y: 696
                    width: 14
                    height: 14
                    color: "#284863"
                    radius: 10
                }

                Rectangle {
                    id: rectangle9
                    x: 34
                    y: 702
                    width: 50
                    height: 2
                    color: "#284863"
                }

                Rectangle {
                    id: rectangle10
                    x: 20
                    y: 696
                    width: 14
                    height: 14
                    color: "#b7c5d3"
                    radius: 10
                }

                Image {
                    x: 187
                    y: 276
                    width: 57/2
                    source: "images/Vector 284.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                Rectangle {
                    id: rectangle4
                    x: 0
                    y: 0
                    width: 428
                    height: 728
                    opacity: 0
                    color: "#f7f8fa"
                }

                Image {
                    id:eqNegative
                    x: 318
                    y: 389
                    width: 174/2
                    source: "images/Ellipse 200.svg"
                    fillMode: Image.PreserveAspectFit

                    Text {
                        x: 112
                        y: 8
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("E")
                        font.letterSpacing: -2
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Bold"
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }

                    Text {
                        id:eqnvalue
                        x: 105
                        y: 36
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
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }

                    Text {
                        x: 95
                        y: 11
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("Q-")
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Bold"
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }

                    Image {
                        id:vectoredited44
                        x: -10
                        y: -10
                        width: 214/2
                        source: "images/Vector-18.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id:vectoredited4
                        x: -18
                        y: -18
                        width: 245/2
                        source: "images/Vector-1edited.svg"
                        fillMode: Image.PreserveAspectFit
                        rotation: 0
                    }

                    Text {
                        id: eqnvalue1
                        x: 105
                        y: 59
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("VARh")
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }
                }

                Image {
                    id:eqPositive
                    x: 317
                    y: 248
                    width: 174/2
                    source: "images/Ellipse 199.svg"
                    fillMode: Image.PreserveAspectFit

                    Text {
                        x: 113
                        y: 8
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("E")
                        font.letterSpacing: -2
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Bold"
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }

                    Text {
                        id:eqpvalue
                        x: 105
                        y: 36
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
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }

                    Text {
                        x: 93
                        y: 11
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("Q+")
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Bold"
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }

                    Image {
                        id:vectoredited33
                        x: -10
                        y: -10
                        width: 214/2
                        source: "images/Vector-12.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id:vectoredited3
                        x: -18
                        y: -18
                        width: 245/2
                        source: "images/Vector-3edited.svg"
                        fillMode: Image.PreserveAspectFit
                        rotation: 0
                    }

                    Text {
                        id: eqpvalue1
                        x: 105
                        y: 59
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("VARh")
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }
                }

                Image {
                    id:epNegative
                    x: 277
                    y: 116
                    width: 174/2
                    source: "images/Ellipse 198.svg"
                    fillMode: Image.PreserveAspectFit

                    Text {
                        x: 112
                        y: 8
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("E")
                        font.letterSpacing: -2
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Bold"
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }

                    Text {
                        id:epnvalue
                        x: 105
                        y: 36
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
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }

                    Text {
                        x: 96
                        y: 11
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("P-")
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Bold"
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }

                    Image {
                        id:vectoredited22
                        x: -10
                        y: -10
                        width: 214/2
                        source: "images/Vector-20.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id:vectoredited2
                        x: -18
                        y: -18
                        width: 245/2
                        source: "images/Vector-5edited.svg"
                        fillMode: Image.PreserveAspectFit
                        rotation: 0
                    }

                    Text {
                        id: epnvalue1
                        x: 105
                        y: 59
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("Wh")
                        font.letterSpacing: -2
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }
                }

                Image {
                    id:epPositive
                    x: 162
                    y: 30
                    width: 174/2
                    source: "images/Ellipse 197.svg"
                    scale: 1
                    fillMode: Image.PreserveAspectFit

                    Text {
                        id:eppvalue
                        x: 105
                        y: 36
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
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                    }

                    Text {
                        x: 93
                        y: 11
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("P+")
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Bold"
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }

                    Text {
                        x: 113
                        y: 8
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("E")
                        font.letterSpacing: -2
                        font.pixelSize: 24
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Bold"
                        font.family: "Akshar"
                        transform: Scale {
                            xScale: -1
                        }
                    }

                    Image {
                        id:vectoredited1
                        x: -18
                        y: -18
                        width: 245/2
                        source: "images/Vectoredited.svg"
                        fillMode: Image.PreserveAspectFit
                        rotation: 0
                    }

                    Image {
                        id:vectoredited11
                        x: -10
                        y: -10
                        width: 214/2
                        source: "images/Vector-10.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    SequentialAnimation {
                        id: eppositiveClickedAnim

                        NumberAnimation{
                            target: rectangle4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle+110
                            from: 0
                            to: 1
                        }
                        ParallelAnimation {
                            NumberAnimation {
                                target: line11
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle
                                to: 1
                                from: 0
                            }

                            NumberAnimation {
                                target: circle11
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle
                                to: 1
                                from: 0
                            }
                        }

                        ParallelAnimation {
                            NumberAnimation {
                                target: line12
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle-5
                                to: 1
                                from: 0
                            }

                            NumberAnimation {
                                target: circle12
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle-5
                                to: 1
                                from: 0
                            }
                        }
                        ParallelAnimation {
                            NumberAnimation {
                                target: line13
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle-15
                                to: 1
                                from: 0
                            }

                            NumberAnimation {
                                target: circle13
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle-15
                                to: 1
                                from: 0
                            }
                        }
                        ParallelAnimation {
                            NumberAnimation {
                                target: line14
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle-25
                                to: 1
                                from: 0
                            }

                            NumberAnimation {
                                target: circle44
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle-25
                                to: 1
                                from: 0
                            }
                        }
                    }

                    SequentialAnimation {
                        id: eppositiveClickedAnim2
                        ParallelAnimation {
                            NumberAnimation {
                                target: line11
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle+50
                                to: 0
                                from: 1
                            }

                            NumberAnimation {
                                target: circle11
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle+50
                                to: 0
                                from: 1
                            }
                        }

                        ParallelAnimation {
                            NumberAnimation {
                                target: line12
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle+50
                                to: 0
                                from: 1
                            }

                            NumberAnimation {
                                target: circle12
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle+50
                                to: 0
                                from: 1
                            }
                        }
                        ParallelAnimation {
                            NumberAnimation {
                                target: line13
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle+50
                                to: 0
                                from: 1
                            }

                            NumberAnimation {
                                target: circle13
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle+50
                                to: 0
                                from: 1
                            }
                        }
                        ParallelAnimation {
                            NumberAnimation {
                                target: line14
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle+50
                                to: 0
                                from: 1
                            }

                            NumberAnimation {
                                target: circle44
                                property: "opacity"
                                duration: animationsForCurrentClickedSmallCircle+20
                                to: 0
                                from: 1
                            }
                        }
                        NumberAnimation{
                            target: rectangle4
                            property: "opacity"
                            duration: animationsForCurrentClickedSmallCircle-39
                            from: 1
                            to: 0
                        }
                    }
                    ParallelAnimation {
                        id: phasesRotationAnim

                        NumberAnimation {
                            target: circlePhaseA
                            property: "rotation"
                            loops: -1
                            duration: animationsForcurrentClickedCircle
                            to: 360
                            from: 0
                        }

                        NumberAnimation {
                            target: circlePhaseB
                            property: "rotation"
                            loops: -1
                            duration: animationsForcurrentClickedCircle
                            to: 360
                            from: 0
                        }
                        NumberAnimation {
                            target:circlePhaseC
                            property: "rotation"
                            loops: -1
                            duration: animationsForcurrentClickedCircle
                            to: 360
                            from: 0
                        }
                        NumberAnimation {
                            target:circlePhaseN
                            property: "rotation"
                            loops: -1
                            duration: animationsForcurrentClickedCircle
                            to: 360
                            from: 0
                        }
                    }
                    ParallelAnimation {
                        id:epPositiveAnim
                        NumberAnimation {
                            id:epScale
                            target: epPositive
                            property: "scale"
                            duration: animationsForcurrentClickedCircleOpenedClosed
                            to: 1.8
                        }

                        NumberAnimation {
                            id:epX
                            target: epPositive
                            property: "x"
                            duration: animationsForcurrentClickedCircleOpenedClosed
                            to: 70
                        }

                        NumberAnimation {
                            id:epY
                            target: epPositive
                            property: "y"
                            duration: animationsForcurrentClickedCircleOpenedClosed
                            to: 270
                        }

                        NumberAnimation{
                            id:ep1
                            target: epPositive
                            property: "opacity"
                            duration: animationsForcurrentClickedCircleOpenedClosed
                            from: 1
                            to: 0
                        }
                        NumberAnimation{
                            id:ep2
                            target: epNegative
                            property: "opacity"
                            duration: animationsForcurrentClickedCircleOpenedClosed
                            from: 1
                            to: 0
                        }
                        NumberAnimation{
                            id:ep3
                            target: eqPositive
                            property: "opacity"
                            duration: animationsForcurrentClickedCircleOpenedClosed
                            from: 1
                            to: 0
                        }

                        NumberAnimation{
                            target: systemRiskyText1
                            property: "opacity"
                            duration:animationsForCurrentClickedSmallCircle
                            from: 1
                            to: 0
                        }
                        NumberAnimation{
                            target: systemRiskyText2
                            property: "opacity"
                            duration:animationsForCurrentClickedSmallCircle
                            from: 1
                            to: 0
                        }
                    }

                    ParallelAnimation {
                        id:epPositiveAnim2
                        NumberAnimation {
                            id:epScale2
                            target: epPositive
                            property: "scale"
                            duration: animationsForcurrentClickedCircleOpenedClosed
                            to: 1
                        }

                        NumberAnimation {
                            id:epX2
                            target: epPositive
                            property: "x"
                            duration: animationsForcurrentClickedCircleOpenedClosed
                            to: 162
                        }

                        NumberAnimation {
                            id:epY2
                            target: epPositive
                            property: "y"
                            duration: animationsForcurrentClickedCircleOpenedClosed
                            to: 30
                        }
                        NumberAnimation{
                            id:ep12
                            target: epNegative
                            property: "opacity"
                            duration: animationsForcurrentClickedCircleOpenedClosed+200
                            from: 0
                            to: 1
                        }
                        NumberAnimation{
                            id:ep13
                            target: epNegative
                            property: "opacity"
                            duration: animationsForcurrentClickedCircleOpenedClosed+200
                            from: 0
                            to: 1
                        }
                        NumberAnimation{
                            id:ep14
                            target: epNegative
                            property: "opacity"
                            duration:animationsForcurrentClickedCircleOpenedClosed+200
                            from: 0
                            to: 1
                        }

                        NumberAnimation{
                            target: systemRiskyText1
                            property: "opacity"
                            duration:animationsForcurrentClickedCircleOpenedClosed+250
                            from: 0
                            to: 1
                        }
                        NumberAnimation{
                            target: systemRiskyText2
                            property: "opacity"
                            duration:animationsForcurrentClickedCircleOpenedClosed+250
                            from: 0
                            to: 1
                        }
                    }
                    MouseArea {
                        id: mouseArea
                        x: -62
                        y: -30
                        width: 166
                        height: 138
                        onClicked: {
                            epX.target= epPositive
                            epY.target=epPositive
                            epScale.target=epPositive

                            ep1.target=epNegative
                            ep2.target=eqPositive
                            ep3.target=eqNegative

                            epPositiveAnim.start()
                            vectoredited1.source="images/VectorCur2.svg"
                            eppositiveClickedAnim.start()
                            mouseArea11.y=0
                        }
                    }

                    MouseArea {
                        id: mouseArea2
                        x: 99
                        y: 58
                        width: 166
                        height: 138
                        onClicked: {
                            epX.target= epNegative
                            epY.target=epNegative
                            epScale.target=epNegative

                            ep1.target=epPositive
                            ep2.target=eqPositive
                            ep3.target=eqNegative

                            epPositiveAnim.start()
                            vectoredited2.source="images/VectorCur2.svg"

                            eppositiveClickedAnim.start()
                            mouseArea12.y=0

                        }
                    }

                    MouseArea {
                        id: mouseArea3
                        x: 99
                        y: 196
                        width: 166
                        height: 138
                        onClicked: {
                            epX.target= eqPositive
                            epY.target=eqPositive
                            epScale.target=eqPositive

                            ep1.target=epPositive
                            ep2.target=epNegative
                            ep3.target=eqNegative

                            epPositiveAnim.start()
                            vectoredited3.source="images/VectorCur2.svg"

                            eppositiveClickedAnim.start()
                            mouseArea13.y=0

                        }
                    }

                    MouseArea {
                        id: mouseArea4
                        x: 99
                        y: 334
                        width: 166
                        height: 138
                        onClicked: {
                            epX.target= eqNegative
                            epY.target=eqNegative
                            epScale.target=eqNegative

                            ep1.target=epPositive
                            ep2.target=epNegative
                            ep3.target=eqPositive

                            epPositiveAnim.start()
                            vectoredited4.source="images/VectorCur2.svg"

                            eppositiveClickedAnim.start()
                            mouseArea14.y=0
                        }
                    }

                    Text {
                        id: eppvalue1
                        x: 105
                        y: 59
                        width: 120
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("Wh")
                        font.letterSpacing: -2
                        font.pixelSize: 20
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        transform: [
                            Scale {
                                xScale: -1
                            }]
                        font.family: "Akshar"
                    }
                }

                Rectangle {
                    id: circle44
                    x: 289
                    y: 63
                    width: 120
                    height: 120
                    opacity: 0
                    color: "#00ffffff"
                    transform: [
                        Scale {
                            xScale: -1
                        }]
                    Image {
                        x: 9
                        y: 16
                        width: 174/2
                        source: "images/InCurrentEllipse2.svg"
                        antialiasing: true
                        fillMode: Image.PreserveAspectFit
                    }
                    Image {
                        id: circlePhaseN
                        x: 0
                        y: 8
                        width: 212/2
                        opacity: 1
                        source: "images/InCurrentVector4.svg"
                        antialiasing: true
                        fillMode: Image.PreserveAspectFit
                    }
                    Text {
                        id: text5164
                        x: 23
                        y: 57
                        width: 60
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("2452.22 \n kWh")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }
                    Text {
                        id: circle4text4
                        x: 18
                        y: 23
                        width: 70
                        height: 30
                        color: "#ffffff"
                        text: qsTr("N")
                        font.letterSpacing: -2
                        font.pixelSize: 19
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Bold"
                        font.family: "Akshar"
                    }
                }

                Rectangle {
                    id: circle11
                    x: 289
                    y: 468
                    width: 136
                    height: 120
                    opacity: 0
                    color: "#00ffffff"
                    transform: [
                        Scale {
                            xScale: -1
                        }]
                    Image {
                        x: 6
                        y: 7
                        width: 174/2
                        source: "images/InCurrentEllipse3.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:circlePhaseA
                        x: -3
                        y: -1
                        width: 212/2
                        source: "images/InCurrentVector2.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Text {
                        id: text5165
                        x: 20
                        y: 48
                        width: 60
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("2452.22 \n kWh")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: circle4text5
                        x: 15
                        y: 14
                        width: 70
                        height: 30
                        color: "#ffffff"
                        text: qsTr("A")
                        font.letterSpacing: -2
                        font.pixelSize: 19
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Bold"
                        font.family: "Akshar"
                    }
                    antialiasing: true
                }


                Rectangle {
                    id: circle12
                    x: 374
                    y: 350
                    width: 120
                    height: 120
                    opacity: 0
                    color: "#00ffffff"
                    layer.enabled: true
                    transform: Scale {
                        xScale: -1
                    }

                    Image {
                        x: 9
                        y: 8
                        width: 174/2
                        source: "images/InCurrentEllipse1.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Image {
                        id:circlePhaseB
                        x: 0
                        y: 0
                        width: 212/2
                        source: "images/InCurrentVector6.svg"
                        fillMode: Image.PreserveAspectFit
                        antialiasing: true
                    }

                    Text {
                        id: text5166
                        x: 23
                        y: 48
                        width: 60
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("2452.22 \n kWh")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: circle4text6
                        x: 18
                        y: 14
                        width: 70
                        height: 30
                        color: "#ffffff"
                        text: qsTr("B")
                        font.letterSpacing: -2
                        font.pixelSize: 19
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Bold"
                        font.family: "Akshar"
                    }
                }


                Image {
                    id: line12
                    x: 224
                    y: 350
                    width: 40
                    opacity: 0
                    source: "images/LineCur1.svg"
                    rotation: -8.39
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }

                Image {
                    id: line14
                    x: 200
                    y: 176
                    width: 6
                    height: 39
                    opacity: 0
                    source: "images/LineCur2.svg"
                    rotation: 154.263
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                    transform: [
                        Scale {
                            xScale: -1
                        }]
                }

                Image {
                    id: line11
                    x: 199
                    y: 421
                    width: 30
                    opacity: 0
                    source: "images/LineCur3.svg"
                    rotation: 65.23
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                    transform: [
                        Scale {
                            xScale: -1
                        }]
                }

                Rectangle {
                    id: line13
                    x: 226
                    y: 266
                    width: 42
                    height: 1
                    opacity: 0
                    color: "#217efd"
                    rotation: -17.54
                }

                Rectangle {
                    id: circle13
                    x: 393
                    y: 188
                    width: 120
                    height: 120
                    opacity: 0
                    color: "#00ffffff"
                    antialiasing: true



                    Image {
                        id: circlePhaseC
                        x: 9
                        y: 7
                        width: 213/2
                        source: "images/BlueVector.svg"
                        antialiasing: true
                        fillMode: Image.PreserveAspectFit
                    }


                    Image {
                        id: blueEllipse
                        x: 18
                        y: 16
                        width: 175/2
                        source: "images/BlueEllipse.svg"
                        antialiasing: true
                        fillMode: Image.PreserveAspectFit


                    }
                    transform: [
                        Scale {
                            xScale: -1
                        }]
                    layer.enabled: true
                    Text {
                        x: 27
                        y: 23
                        width: 70
                        height: 30
                        color: "#ffffff"
                        text: qsTr("C")
                        font.letterSpacing: -2
                        font.pixelSize: 19
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        antialiasing: true
                        font.styleName: "Bold"
                        font.family: "Akshar"
                    }
                    Text {
                        x: 32
                        y: 57
                        width: 60
                        height: 50/2
                        color: "#ffffff"
                        text: qsTr("2452.22 \n kWh")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        antialiasing: true
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }
                }
            }

            Text {
                id: systemRiskyText1
                x: 688
                y: 176
                width: 141
                height: 225
                color: "#ffffff"
                text: qsTr("Es \n \nVAh")
                anchors.right: parent.right
                font.letterSpacing: -2
                font.pixelSize: 35
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                anchors.rightMargin: 464
                antialiasing: true
                font.family: "Akshar"

                Text {
                    id: esvalue
                    x: 85
                    y: 88
                    color: "#ffffff"
                    font.letterSpacing: -2
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    anchors.rightMargin: 1
                    font.pixelSize: 35
                    text: qsTr("none")
                    anchors.right: parent.right
                    antialiasing: true
                    font.family: "Akshar"
                }
            }

            Text {
                id: systemRiskyText2
                x: 711
                y: 348
                width: 118
                height: 83
                color: "#ffffff"
                text: qsTr("Total time \n 10h:10m:3s")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                antialiasing: true
                font.family: "Akshar"
            }

            Rectangle {
                id: rectangle37
                x: 1140
                y: 0
                width: 153
                height: 728
                visible: true
                color: "#ffffff"
            }
            MouseArea {
                id: mouseArea11
                x: 345
                y: -728
                width: 435
                height: 728
                onClicked: {
                    epX2.target= epPositive
                    epX2.to=162
                    epY2.target=epPositive
                    epY2.to=30
                    epScale2.target=epPositive

                    ep12.target=epNegative
                    ep13.target=eqPositive
                    ep14.target=eqNegative

                    epPositiveAnim2.start()
                    vectoredited1.source="images/Vectoredited.svg"
                    systemRiskyText1.visible=true
                    systemRiskyText2.visible=true
                    eppositiveClickedAnim2.start()
                    mouseArea11.y=-728
                }
            }

            MouseArea {
                id: mouseArea12
                x: 345
                y: -728
                width: 435
                height: 728
                onClicked: {
                    epX2.target= epNegative
                    epX2.to=277
                    epY2.target=epNegative
                    epY2.to=116
                    epScale2.target=epNegative

                    ep12.target=epPositive
                    ep13.target=eqPositive
                    ep14.target=eqNegative

                    epPositiveAnim2.start()
                    vectoredited2.source="images/Vectoredited.svg"
                    systemRiskyText1.visible=true
                    systemRiskyText2.visible=true
                    eppositiveClickedAnim2.start()
                    mouseArea12.y=-728
                }
            }

            MouseArea {
                id: mouseArea13
                x: 345
                y: -728
                width: 435
                height: 728
                onClicked: {
                    epX2.target= eqPositive
                    epX2.to=317
                    epY2.target=eqPositive
                    epY2.to=248
                    epScale2.target=eqPositive
                    ep12.target=epPositive
                    ep13.target=epNegative
                    ep14.target=eqNegative

                    epPositiveAnim2.start()
                    vectoredited3.source="images/Vectoredited.svg"
                    systemRiskyText1.visible=true
                    systemRiskyText2.visible=true
                    eppositiveClickedAnim2.start()
                    mouseArea13.y=-728
                }
            }

            MouseArea {
                id: mouseArea14
                x: 345
                y: -728
                width: 435
                height: 728
                onClicked: {
                    epX2.target= eqNegative
                    epX2.to=318
                    epY2.target=eqNegative
                    epY2.to=389
                    epScale2.target=eqNegative

                    ep12.target=epPositive
                    ep13.target=epNegative
                    ep14.target=eqPositive

                    epPositiveAnim2.start()
                    vectoredited3.source="images/Vectoredited.svg"
                    eppositiveClickedAnim2.start()
                    mouseArea14.y=-728

                }
            }

            Rectangle {
                id: rectangle1
                x: 840
                y: 0
                width: 300
                height: 728
                color: "#ffffff"
                Image {
                    id: rectangle105
                    x: 6
                    y: 420
                    width: 350
                    height: 300
                    source: "images/Rectangle 105.svg"
                    fillMode: Image.Stretch
                }

                GroupItem {
                    x: 25
                    y: 644
                    Text {
                        id: pfA
                        x: 21
                        y: 0
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

                    Text {
                        id: pfC
                        x: 21
                        y: 34
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
                        id: pfB
                        x: 125
                        y: 0
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
                        id: pfN
                        x: 125
                        y: 34
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

                    Text {
                        id: pfSum
                        x: 215
                        y: 17
                        width: 90
                        height: 50/2
                        color: "#284863"
                        text: qsTr("0.98")
                        font.letterSpacing: -2
                        font.pixelSize: 21
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Rectangle {
                        id: rectangle22
                        x: 0
                        y: 37
                        width: 11
                        height: 19
                        color: "#217efd"
                        radius: 5.5
                    }

                    Rectangle {
                        id: rectangle23
                        x: 102
                        y: 2
                        width: 11
                        height: 19
                        color: "#fc9318"
                        radius: 5.5
                    }

                    Rectangle {
                        id: rectangle24
                        x: 102
                        y: 36
                        width: 11
                        height: 19
                        color: "#4ec040"
                        radius: 5.5
                    }

                    Rectangle {
                        id: rectangle21
                        x: 0
                        y: 2
                        width: 11
                        height: 19
                        color: "#ea0000"
                        radius: 5.5
                    }
                }

                Rectangle {
                    id: rectanglerPF
                    x: 88
                    y: 463
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
                        y: 47
                        width: 2600
                        height: 180
                        visible: true
                        source: "images/graph22.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: imagePF1
                        x: -1700
                        y: 45
                        width: 2600
                        height: 180
                        visible: true
                        source: "images/graph11.png"
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

                Rectangle {
                    id: rectangle2
                    x: 230
                    y: 651
                    width: 1
                    height: 45
                    color: "#284863"
                }

                Text {
                    id: unbalanceHeaderText1
                    x: 20
                    y: 420
                    width: 222
                    height: 138/2
                    color: "#284863"
                    text: qsTr("PF")
                    font.letterSpacing: -2
                    font.pixelSize: 26
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Image {
                    id: rectangle106
                    x: 6
                    y: 6
                    width: 350
                    height: 200
                    source: "images/Rectangle 105.svg"
                    fillMode: Image.Stretch
                }

                Image {
                    id: rectangle107
                    x: 6
                    y: 213
                    width: 350
                    height: 200
                    source: "images/Rectangle 105.svg"
                    fillMode: Image.Stretch
                }

                Text {
                    id: voltageTHDHeaderText
                    x: 20
                    y: 0
                    width: 222
                    height: 50

                    color: "#284863"
                    text: qsTr("Voltage THD")
                    font.letterSpacing: -2
                    font.pixelSize: 26
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Slider {
                    id: customSlider
                    x: 8
                    y: 60
                    width: 230
                    height: 30
                    layer.enabled: true
                    layer.effect: DropShadowEffect {
                        id: dropShadow
                        color: "#51000000"
                        spread: 0.2
                    }
                    background: Rectangle {
                        x: customSlider.leftPadding
                        y: customSlider.topPadding + customSlider.availableHeight / 2 - height / 2
                        width: customSlider.availableWidth
                        height: 30
                        color: "#ffffff"
                        radius: 2
                        implicitHeight: 20
                        Rectangle {
                            width: customSlider.visualPosition * parent.width
                            height: parent.height
                            color: "#617284"
                            radius: 2
                        }
                        implicitWidth: 200
                    }
                    enabled: false
                    rotation: 0
                    value: 8.22
                    handle: Rectangle {
                        color: "#00ffffff"
                    }

                    Rectangle {
                        id: rectangle3
                        x: 114
                        y: 3
                        width: 3
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        id: rectangle11
                        x: 33
                        y: 3
                        width: 1
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        id: rectangle15
                        x: 60
                        y: 3
                        width: 2
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        id: rectangle29
                        x: 88
                        y: 3
                        width: 1
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        id: rectangle30
                        x: 142
                        y: 3
                        width: 1
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        id: rectangle31
                        x: 169
                        y: 3
                        width: 2
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        id: rectangle34
                        x: 197
                        y: 3
                        width: 1
                        height: 25
                        color: "#ff5555"
                    }
                    to: 200
                }

                Text {
                    id: thdValue
                    x:  customSlider.visualPosition * (customSlider.availableWidth - width) + customSlider.leftPadding
                    y: 38
                    height: 25
                    color: "#284863"
                    text: customSlider.value
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id: thdValue1
                    x:  customSlider1.visualPosition * (customSlider1.availableWidth - width) + customSlider1.leftPadding
                    y: 94
                    height: 25
                    color: "#284863"
                    text: customSlider1.value
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }
                Text {
                    id: thdValue2
                    x:  customSlider2.visualPosition * (customSlider2.availableWidth - width) + customSlider2.leftPadding
                    y: 150
                    height: 25
                    color: "#284863"
                    text: customSlider2.value
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id: thdValue3
                    x:  customSlider3.visualPosition * (customSlider3.availableWidth - width) + customSlider3.leftPadding
                    y: 244
                    height: 25
                    color: "#284863"
                    text: customSlider3.value
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }
                Text {
                    id: thdValue4
                    x:  customSlider4.visualPosition * (customSlider4.availableWidth - width) + customSlider4.leftPadding
                    y: 300
                    height: 25
                    color: "#284863"
                    text: customSlider4.value
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }
                Text {
                    id: thdValue5
                    x:  customSlider5.visualPosition * (customSlider5.availableWidth - width) + customSlider5.leftPadding
                    y: 356
                    height: 25
                    color: "#284863"
                    text: customSlider5.value
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }
                Text {
                    id: thdHeaderA
                    x: 240
                    y: 50
                    width: 60
                    height: 50
                    color: "#284863"
                    text: qsTr("THD A")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Slider {
                    id: customSlider1
                    x: 8
                    y: 116
                    width: 230
                    height: 30
                    background: Rectangle {
                        x: customSlider1.leftPadding
                        y: customSlider1.topPadding + customSlider1.availableHeight / 2 - height / 2
                        width: customSlider1.availableWidth
                        height: 30
                        color: "#ffffff"
                        radius: 2
                        implicitHeight: 20
                        Rectangle {
                            width: customSlider1.visualPosition * parent.width
                            height: parent.height
                            color: "#617284"
                            radius: 2
                        }
                        implicitWidth: 200
                    }
                    layer.enabled: true
                    enabled: false
                    Rectangle {
                        x: 114
                        y: 3
                        width: 3
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 33
                        y: 3
                        width: 1
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 60
                        y: 3
                        width: 2
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 88
                        y: 3
                        width: 1
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 142
                        y: 3
                        width: 1
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 169
                        y: 3
                        width: 2
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 197
                        y: 3
                        width: 1
                        height: 25
                        color: "#fcae18"
                    }
                    rotation: 0
                    value: 20.12
                    layer.effect: DropShadowEffect {
                        color: "#51000000"
                        spread: 0.2
                    }
                    handle: Rectangle {
                        color: "#00ffffff"
                    }
                    to: 200
                }

                Text {
                    id: thdHeaderA1
                    x: 239
                    y: 106
                    width: 60
                    height: 50
                    color: "#284863"
                    text: qsTr("THD B")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Slider {
                    id: customSlider2
                    x: 8
                    y: 172
                    width: 230
                    height: 30
                    background: Rectangle {
                        x: customSlider2.leftPadding
                        y: customSlider2.topPadding + customSlider2.availableHeight / 2 - height / 2
                        width: customSlider2.availableWidth
                        height: 30
                        color: "#ffffff"
                        radius: 2
                        implicitHeight: 20
                        Rectangle {
                            width: customSlider2.visualPosition * parent.width
                            height: parent.height
                            color: "#617284"
                            radius: 2
                        }
                        implicitWidth: 200
                    }
                    layer.enabled: true
                    enabled: false
                    Rectangle {
                        x: 114
                        y: 3
                        width: 3
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 33
                        y: 3
                        width: 1
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 60
                        y: 3
                        width: 2
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 88
                        y: 3
                        width: 1
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 142
                        y: 3
                        width: 1
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 169
                        y: 3
                        width: 2
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 197
                        y: 3
                        width: 1
                        height: 25
                        color: "#217efd"
                    }
                    rotation: 0
                    value: 15.18
                    layer.effect: DropShadowEffect {
                        color: "#51000000"
                        spread: 0.2
                    }
                    handle: Rectangle {
                        color: "#00ffffff"
                    }
                    to: 200
                }

                Text {
                    id: thdHeaderA2
                    x: 239
                    y: 163
                    width: 60
                    height: 50
                    color: "#284863"
                    text: qsTr("THD C")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Slider {
                    id: customSlider3
                    x: 8
                    y: 266
                    width: 230
                    height: 30
                    background: Rectangle {
                        x: customSlider3.leftPadding
                        y: customSlider3.topPadding + customSlider3.availableHeight / 2 - height / 2
                        width: customSlider3.availableWidth
                        height: 30
                        color: "#ffffff"
                        radius: 2
                        implicitHeight: 20
                        Rectangle {
                            width: customSlider3.visualPosition * parent.width
                            height: parent.height
                            color: "#617284"
                            radius: 2
                        }
                        implicitWidth: 200
                    }
                    layer.enabled: true
                    enabled: false
                    Rectangle {
                        x: 114
                        y: 3
                        width: 3
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        x: 33
                        y: 3
                        width: 1
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        x: 60
                        y: 3
                        width: 2
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        x: 88
                        y: 3
                        width: 1
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        x: 142
                        y: 3
                        width: 1
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        x: 169
                        y: 3
                        width: 2
                        height: 25
                        color: "#ff5555"
                    }

                    Rectangle {
                        x: 197
                        y: 3
                        width: 1
                        height: 25
                        color: "#ff5555"
                    }
                    rotation: 0
                    value: 142.18
                    layer.effect: DropShadowEffect {
                        color: "#51000000"
                        spread: 0.2
                    }
                    handle: Rectangle {
                        color: "#00ffffff"
                    }
                    to: 200
                }

                Slider {
                    id: customSlider4
                    x: 8
                    y: 322
                    width: 230
                    height: 30
                    background: Rectangle {
                        x: customSlider4.leftPadding
                        y: customSlider4.topPadding + customSlider4.availableHeight / 2 - height / 2
                        width: customSlider4.availableWidth
                        height: 30
                        color: "#ffffff"
                        radius: 2
                        implicitHeight: 20
                        Rectangle {
                            width: customSlider4.visualPosition * parent.width
                            height: parent.height
                            color: "#617284"
                            radius: 2
                        }
                        implicitWidth: 200
                    }
                    layer.enabled: true
                    enabled: false
                    Rectangle {
                        x: 114
                        y: 3
                        width: 3
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 33
                        y: 3
                        width: 1
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 60
                        y: 3
                        width: 2
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 88
                        y: 3
                        width: 1
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 142
                        y: 3
                        width: 1
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 169
                        y: 3
                        width: 2
                        height: 25
                        color: "#fcae18"
                    }

                    Rectangle {
                        x: 197
                        y: 3
                        width: 1
                        height: 25
                        color: "#fcae18"
                    }
                    rotation: 0
                    value: 169.18
                    layer.effect: DropShadowEffect {
                        color: "#51000000"
                        spread: 0.2
                    }
                    handle: Rectangle {
                        color: "#00ffffff"
                    }
                    to: 200
                }

                Slider {
                    id: customSlider5
                    x: 8
                    y: 378
                    width: 230
                    height: 30
                    background: Rectangle {
                        x: customSlider5.leftPadding
                        y: customSlider5.topPadding + customSlider5.availableHeight / 2 - height / 2
                        width: customSlider5.availableWidth
                        height: 30
                        color: "#ffffff"
                        radius: 2
                        implicitHeight: 20
                        Rectangle {
                            width: customSlider5.visualPosition * parent.width
                            height: parent.height
                            color: "#617284"
                            radius: 2
                        }
                        implicitWidth: 200
                    }
                    layer.enabled: true
                    enabled: false
                    Rectangle {
                        x: 114
                        y: 3
                        width: 3
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 33
                        y: 3
                        width: 1
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 60
                        y: 3
                        width: 2
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 88
                        y: 3
                        width: 1
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 142
                        y: 3
                        width: 1
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 169
                        y: 3
                        width: 2
                        height: 25
                        color: "#217efd"
                    }

                    Rectangle {
                        x: 197
                        y: 3
                        width: 1
                        height: 25
                        color: "#217efd"
                    }
                    rotation: 0
                    value: 112.22
                    layer.effect: DropShadowEffect {
                        color: "#51000000"
                        spread: 0.2
                    }
                    handle: Rectangle {
                        color: "#00ffffff"
                    }
                    to: 200
                }

                Text {
                    id: voltageTHDHeaderText1
                    x: 20
                    y: 206
                    width: 222
                    height: 50
                    color: "#284863"
                    text: qsTr("Current TDD")
                    font.letterSpacing: -2
                    font.pixelSize: 26
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id: thdHeaderA3
                    x: 239
                    y: 256
                    width: 60
                    height: 50
                    color: "#284863"
                    text: qsTr("TDD A")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id: thdHeaderA4
                    x: 239
                    y: 312
                    width: 60
                    height: 50
                    color: "#284863"
                    text: qsTr("TDD B")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id: thdHeaderA5
                    x: 239
                    y: 369
                    width: 60
                    height: 50
                    color: "#284863"
                    text: qsTr("TDD C")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }





            }



            Image {
                x: 1144
                y: 262
                width: 72/2
                source: "images/CloseMenu.svg"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay2
                    color: "#ff9300"
                }
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: powermenu
                x: 1139
                y: 0
                width: 282/2
                source: "images/powermenu.svg"
                fillMode: Image.PreserveAspectFit




                Row {
                x: 11
                y: 316
                width: 122
                height: 30
                spacing: 0

                Rectangle {
                    id:redValue
                width: (122*10)/(100)
                height: parent.height
                color: "#ff5555"

                }

                Rectangle {
                    id:orangeValue
                width: (122*40)/(100)
                height: parent.height
                color: "#fcae18"

                }

                Rectangle {
                    id:greenValue
                width: ((122)-(redValue.width+orangeValue.width))
                height: parent.height
                color: "#4EC040"
                }
                }
                Text {
                    id: uUnbalanceValue
                    x:  -2
                    y: 153
                    width: 145
                    height: 25
                    color: "#284863"
                    text: "% "+customSlider6.value
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }
                Slider {
                    id: customSlider6
                    x: 5
                    y: 122
                    width: 133
                    height: 30
                    background: Rectangle {
                        x: customSlider6.leftPadding
                        y: customSlider6.topPadding + customSlider6.availableHeight / 2 - height / 2
                        width: customSlider6.availableWidth
                        height: 30
                        color: "#ffffff"
                        radius: 2
                        implicitHeight: 20
                        Rectangle {
                            width: customSlider6.visualPosition * parent.width
                            height: parent.height
                            color: "#617284"
                            radius: 2
                        }
                        implicitWidth: 200
                    }
                    enabled: false
                    rotation: 0
                    value: 12.21
                    handle: Rectangle {
                        color: "#00ffffff"
                    }
                    to: 100
                }

                Text {
                    id: cUnbalanceValue
                    x: -2
                    y: 250
                    width: 145
                    height: 25
                    color: "#284863"
                    text: "% "+customSlider7.value
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Slider {
                    id: customSlider7
                    x: 5
                    y: 219
                    width: 133
                    height: 30
                    background: Rectangle {
                        x: customSlider7.leftPadding
                        y: customSlider7.topPadding + customSlider7.availableHeight / 2 - height / 2
                        width: customSlider7.availableWidth
                        height: 30
                        color: "#ffffff"
                        radius: 2
                        implicitHeight: 20
                        Rectangle {
                            width: customSlider7.visualPosition * parent.width
                            height: parent.height
                            color: "#617284"
                            radius: 2
                        }
                        implicitWidth: 200
                    }
                    enabled: false
                    rotation: 0
                    value: 42.21
                    handle: Rectangle {
                        color: "#00ffffff"
                    }
                    to: 100
                }

                Text {
                    id: systemStatusValue
                    x: -4
                    y: 348
                    width: 145
                    height: 25
                    color: "#284863"
                    text: "4242"
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: pf3
                    x: 0
                    y: 415
                    width: 130
                    height: 25
                    color: "#284863"
                    text:"EN50160"
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: dip
                    x: 0
                    y: 466
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "24"
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: sweel
                    x: 0
                    y: 514
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "24"
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: inrush

                    x: 0
                    y: 562
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "24"
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: totalevent
                    x: 0
                    y: 598
                    width: 130
                    height: 25
                    color: "#284863"
                    text: "200"
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                Text {
                    id: totalevent1
                    x: 14
                    y: 660
                    width: 127
                    height: 25
                    color: "#284863"
                    text: "14m:10s:3ms"
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
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
                   target: orangeRectanglePower
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
                   target: orangeRectanglePower
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
            id: orangeRectanglePower
            x: 15
            y: 0
            width: 7
            height: 728
            color: "#ff9300"
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


