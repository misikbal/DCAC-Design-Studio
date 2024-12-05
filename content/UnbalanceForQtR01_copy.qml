import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
//import QtQuick.Layouts 1.11
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
    color: "#F7F8FA"
    border.color: "#ffffff"

    property string textsColors: String("#284863")
    property string bgColors: String("#F7F8FA")
    property bool forUnbalanceHold:true
    property int timeOfUnbalanceSequences: 12000

    Component.onCompleted:{

        unbalancesRotation2.start()
        unbalancesRotation1.start()


        animGraphsVoltagePos.start()
        animGraphsVoltageNeg.start()
        animGraphsVoltageZero.start()
        animGraphsCurrentPos.start()
        animGraphsCurrentNeg.start()
        animGraphsCurrentZero.start()

    }








    Rectangle {
        id: rectangle6
        x: 695
        y: -354
        width: 649
        height: 287
        visible: true
        color: "#ffffff"
        border.color: "#e1e5ea"
        Rectangle {
            x: 281
            y: 8
            width: 354
            height: 267
            visible: true
            color: "#f7f8fa"
            border.color: "#b0adb1b4"

            Rectangle {
                x: 9
                y: 123
                width: 337
                height: 54
                color: "#fdfeff"

                Image {
                    id: arrow4
                    x: 59
                    y: 15
                    source: "images/Arrow 1.svg"
                    scale: 0.6
                    rotation: 30
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow5
                    x: 59
                    y: 15
                    source: "images/Arrow 2.svg"
                    scale: 0.6
                    rotation: 270
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow6
                    x: 59
                    y: 15
                    source: "images/Arrow 3.svg"
                    scale: 0.6
                    rotation: 150
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }
            }


            Rectangle {
                x: 9
                y: 205
                width: 337
                height: 54
                color: "#fdfeff"
            }
            Rectangle {
                x: 9
                y: 39
                width: 337
                height: 54
                color: "#fdfeff"



                Image {
                    id: arrow10
                    x: 59
                    y: 17
                    source: "images/Arrow 1.svg"
                    scale: 0.6
                    rotation: 30
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow11
                    x: 60
                    y: 17
                    source: "images/Arrow 2.svg"
                    scale: 0.6
                    rotation: 150
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow12
                    x: 59
                    y: 17
                    source: "images/Arrow 3.svg"
                    scale: 0.6
                    rotation: 270
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Rectangle {
                    id: rectanglerPF3
                    x: 119
                    y: 0
                    width: 218
                    height: 54
                    color: "#ffffff"
                    radius: 0
                    border.color: "#dde1e6"
                    border.width: 1
                    ParallelAnimation {
                        id:animGraphsCurrentPos
                        PropertyAnimation {
                            target: animGraphsCurrentA
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -574
                            from: -233
                        }

                        PropertyAnimation {
                            target: animGraphsCurrentB
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -544
                            from: -203
                        }

                        PropertyAnimation {
                            target: animGraphsCurrentC
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -515
                            from: -174
                        }
                    }

                    Image {
                        id:animGraphsCurrentA
                        x: -233
                        y: 0
                        width: 950
                        height: 54
                        source: "images/GraphsPhaseA.svg"
                        antialiasing: true
                        sourceSize.height: 52
                        fillMode: Image.Pad
                        sourceSize.width: 900
                    }

                    Image {
                        id:animGraphsCurrentB
                        x: -203
                        y: 0
                        width: 950
                        height: 54
                        source: "images/GraphsPhaseB.svg"
                        antialiasing: true
                        sourceSize.height: 52
                        fillMode: Image.Pad
                        sourceSize.width: 900
                    }

                    Image {
                        id:animGraphsCurrentC
                        x: -174
                        y: 0
                        width: 950
                        height: 54
                        source: "images/GraphsPhaseC.svg"
                        antialiasing: true
                        sourceSize.height: 52
                        fillMode: Image.Pad
                        sourceSize.width: 900
                    }
                    clip: true
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: Item {
                            width: rectanglerPF3.width
                            height: rectanglerPF3.height
                            Rectangle {
                                width: rectanglerPF3.adapt ? rectanglerPF3.width : Math.min(rectanglerPF3.width, rectanglerPF3.height)+250
                                height: rectanglerPF3.adapt ? rectanglerPF3.height : width+250
                                radius: 0
                                anchors.centerIn: parent
                            }
                        }
                    }
                }


                Rectangle {
                    id: rectanglerPF4
                    x: 119
                    y: 84
                    width: 218
                    height: 54
                    color: "#ffffff"
                    radius: 0
                    border.color: "#dde1e6"
                    border.width: 1
                    ParallelAnimation {
                        id:animGraphsCurrentNeg
                        PropertyAnimation {
                            target: animGraphsCurrentNegA
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -574
                            from: -233
                        }

                        PropertyAnimation {
                            target: animGraphsCurrentNegB
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -544
                            from: -203
                        }

                        PropertyAnimation {
                            target: animGraphsCurrentNegC
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -515
                            from: -174
                        }
                    }

                    Image {
                        id:animGraphsCurrentNegA
                        x: -233
                        y: 0
                        width: 950
                        height: 54
                        source: "images/GraphsPhaseA.svg"
                        antialiasing: true
                        sourceSize.height: 52
                        fillMode: Image.Pad
                        sourceSize.width: 900
                    }

                    Image {
                        id:animGraphsCurrentNegB
                        x: -203
                        y: 0
                        width: 950
                        height: 54
                        source: "images/GraphsPhaseB.svg"
                        antialiasing: true
                        sourceSize.height: 52
                        fillMode: Image.Pad
                        sourceSize.width: 900
                    }

                    Image {
                        id:animGraphsCurrentNegC
                        x: -174
                        y: 0
                        width: 950
                        height: 54
                        source: "images/GraphsPhaseC.svg"
                        antialiasing: true
                        sourceSize.height: 52
                        fillMode: Image.Pad
                        sourceSize.width: 900
                    }
                    clip: true
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: Item {
                            width: rectanglerPF4.width
                            height: rectanglerPF4.height
                            Rectangle {
                                width: rectanglerPF4.adapt ? rectanglerPF4.width : Math.min(rectanglerPF4.width, rectanglerPF4.height)+250
                                height: rectanglerPF4.adapt ? rectanglerPF4.height : width+250
                                radius: 0
                                anchors.centerIn: parent
                            }
                        }
                    }
                }

                Rectangle {
                    id: rectanglerPF5
                    x: 119
                    y: 167
                    width: 218
                    height: 54
                    color: "#ffffff"
                    radius: 0
                    border.color: "#dde1e6"
                    border.width: 1
                    ParallelAnimation {
                        id:animGraphsCurrentZero
                        PropertyAnimation {
                            target: animGraphsCurrentZeroA
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -519
                            from: -174
                        }

                        PropertyAnimation {
                            target: animGraphsCurrentZeroB
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -517
                            from: -172
                        }

                        PropertyAnimation {
                            target: animGraphsCurrentZeroC
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -515
                            from: -170
                        }
                    }

                    Image {
                        id:animGraphsCurrentZeroA
                        x: -174
                        y: 21
                        width: 950
                        height: 12
                        source: "images/GraphsPhaseA.svg"
                        antialiasing: true
                        sourceSize.height: 52
                        fillMode: Image.TileHorizontally
                        sourceSize.width: 900
                    }

                    Image {
                        id:animGraphsCurrentZeroB
                        x: -172
                        y: 21
                        width: 950
                        height: 12
                        source: "images/GraphsPhaseB.svg"
                        antialiasing: true
                        sourceSize.height: 52
                        fillMode: Image.TileHorizontally
                        sourceSize.width: 900
                    }

                    Image {
                        id:animGraphsCurrentZeroC
                        x: -170
                        y: 21
                        width: 950
                        height: 12
                        source: "images/GraphsPhaseC.svg"
                        antialiasing: true
                        sourceSize.height: 52
                        fillMode: Image.TileHorizontally
                        sourceSize.width: 900
                    }
                    clip: true
                    layer.enabled: true
                    layer.effect: OpacityMask {
                        maskSource: Item {
                            width: rectanglerPF5.width
                            height: rectanglerPF5.height
                            Rectangle {
                                width: rectanglerPF5.adapt ? rectanglerPF5.width : Math.min(rectanglerPF5.width, rectanglerPF5.height)+250
                                height: rectanglerPF5.adapt ? rectanglerPF5.height : width+250
                                radius: 0
                                anchors.centerIn: parent
                            }
                        }
                    }
                }
            }
        }

        Image {
            id: group9793
            x: 317
            y: 222
            width: 135/2
            source: "images/Group 9791.svg"
            scale: 1
            rotation: 0
            transformOrigin: Item.Left
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: group9794
            x: 317
            y: 237
            width: 135/2
            source: "images/Group 9789.svg"
            rotation: 0
            transformOrigin: Item.Left
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: group97903
            x: 317
            y: 252
            width: 135/2
            height: 6
            source: "images/Group 9790.svg"
            rotation: 0
            transformOrigin: Item.Left
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: posSequenceHeader1
            x: 290
            y: 20
            color: textsColors
            text: qsTr("Positive Sequence")
            font.pixelSize: 20
        }

        Text {
            id: negSequenceHeader1
            x: 290
            y: 103
            color: textsColors
            text: qsTr("Negative Sequence")
            font.pixelSize: 20
        }

        Text {
            id: zeroSequenceHeader1
            x: 290
            y: 187
            color: textsColors
            text: qsTr("Zero Sequence")
            font.pixelSize: 20
        }

        Text {
            id: voltagePhasor7
            x: 11
            y: 13
            width: 200
            height: 47
            color: "#284863"
            text: qsTr("CURRENT  PHASOR")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Image {
            id:ellipse2032
            x: 34
            y: 54
            width: 413/2
            source: "images/Ellipse 203.svg"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }

        RectangleItem {
            id: rectangle4
            x: 8
            y: 39
            width: 265
            height: 248

            PieItem {
                x: 60
                y: 48
                width: 280/2
                height: 280/2
                antialiasing: true
                begin: 300
                gradient: RadialGradient {
                    focalX: 68.5
                    centerX: 68.5
                    focalRadius: 0
                    centerRadius: 68.5
                    GradientStop {
                        position: 0
                        color: "#217efd"
                    }

                    GradientStop {
                        position: 1
                        color: "#00217efd"
                    }
                    focalY: 68.5
                    centerY: 68.5
                }
                end: 420
                strokeColor: "#00ff0000"
            }

            PieItem {
                x: 60
                y: 48
                width: 280/2
                height: 280/2
                antialiasing: true
                begin: 180
                gradient: RadialGradient {
                    focalX: 68.5
                    centerX: 68.5
                    focalRadius: 0
                    centerRadius: 68.5
                    GradientStop {
                        position: 0
                        color: "#fcae18"
                    }

                    GradientStop {
                        position: 1
                        color: "#00217efd"
                    }
                    focalY: 68.5
                    centerY: 68.5
                }
                end: 300
                strokeColor: "#00ff0000"
            }

            PieItem {
                x: 60
                y: 48
                width: 280/2
                height: 280/2
                antialiasing: true
                begin: 60
                gradient: RadialGradient {
                    focalX: 68.5
                    centerX: 68.5
                    focalRadius: 0
                    centerRadius: 68.5
                    GradientStop {
                        position: 0
                        color: "#ff5654"
                    }

                    GradientStop {
                        position: 1
                        color: "#00217efd"
                    }
                    focalY: 68.5
                    centerY: 68.5
                }
                end: 180
                strokeColor: "#00ff0000"
            }

            Rectangle {
                x: 45
                y: 34
                width: 168
                height: 168
                color: "#00ffffff"
                radius: 84
                border.color: "#85617284"
                border.width: 1
                antialiasing: true
            }

            Rectangle {
                id:rectangle28
                x: 130
                y: 117
                width:(currentValuephaseB.text/3.6).toFixed(2)
                height: 2
                color: "#fab225"
                border.width: 0
                antialiasing: true
                TriangleItem {
                    x: rectangle28.width
                    y: -2
                    width: 6
                    height: 6
                    radius: 0
                    antialiasing: true
                    arcRadius: 1
                    strokeWidth: -1
                    strokeColor: "#00ffffff"
                    rotation: 90
                    fillColor: "#fab225"
                }
                transformOrigin: Item.Left
                rotation: angleCurrentPhaseB.text
            }

            Rectangle {
                id:rectangle29
                x: 130
                y: 117
                width: (currentValuephaseC.text/3.6).toFixed(2)
                height: 2
                color: "#3d70f8"
                border.width: 0
                antialiasing: true
                TriangleItem {
                    x: rectangle29.width
                    y: -2
                    width: 6
                    height: 6
                    radius: 0
                    antialiasing: true
                    arcRadius: 1
                    strokeWidth: -1
                    strokeColor: "#00ffffff"
                    rotation: 90
                    fillColor: "#3d70f8"
                }
                transformOrigin: Item.Left
                rotation: angleCurrentPhaseC.text
            }

            Rectangle {
                id:rectangle30
                x: 130
                y: 117
                width: (currentValuephaseA.text/3.6).toFixed(2)
                height: 2
                color: "#ff5555"
                border.width: 0
                antialiasing: true
                TriangleItem {
                    x: rectangle30.width
                    y: -2
                    width: 6
                    height: 6
                    radius: 0
                    antialiasing: true
                    arcRadius: 1
                    strokeWidth: -1
                    strokeColor: "#00ffffff"
                    rotation: 90
                    fillColor: "#ff5555"
                }
                transformOrigin: Item.Left
                rotation:  angleCurrentPhaseA.text
            }
            strokeWidth: -1
            fillColor: "#008b2626"
        }
    }

    Rectangle {
        id: rectangle12
        x: 357
        y: 630
        width: 1298/2
        height: 98/2
        color: "#f7f8fa"
        border.color: "#979797"
        CustomBGForGraphPhaseText {
            x: 32
            y: 5
            CustomHeaderForPhaseA {
                x: 0
                y: 1
                width: 107/2
                height: 75/2
                clip: true
            }

            Text {
                x: 0
                y: 0
                width: 54
                height: 38
                color: "#ffffff"
                text: qsTr("A")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
        }

        CustomBGForGraphPhaseText {
            x: 182
            y: 5
            CustomHeaderForPhaseB {
                x: 0
                y: 1
                width: 107/2
                height: 75/2
                clip: true
            }

            Text {
                x: 0
                y: 0
                width: 54
                height: 38
                color: "#ffffff"
                text: qsTr("B")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
        }

        Text {
            id:voltageValuephaseB
            x: 248
            y: 15
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("220.05")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:voltageValuephaseA
            x: 96
            y: 15
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("222.22")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        CustomBGForGraphPhaseText {
            x: 334
            y: 5
            CustomHeaderForPhaseC {
                x: 0
                y: 1
                width: 107/2
                height: 75/2
                clip: true
            }

            Text {
                x: 0
                y: 0
                width: 54
                height: 38
                color: "#ffffff"
                text: qsTr("C")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
        }

        Text {
            id:voltageValuephaseC
            x: 400
            y: 15
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("220.22")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }
    }





    Rectangle {
        id: rectangle13
        x: 357
        y: 679
        width: 1298/2
        height: 98/2
        visible: true
        color: "#f7f8fa"
        border.color: "#979797"
        CustomBGForGraphPhaseText {
            x: 32
            y: 5
            CustomHeaderForPhaseA {
                x: 0
                y: 1
                width: 107/2
                height: 75/2
                clip: true
            }

            Text {
                x: 0
                y: 0
                width: 54
                height: 38
                color: "#ffffff"
                text: qsTr("A")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
        }

        CustomBGForGraphPhaseText {
            x: 182
            y: 5
            CustomHeaderForPhaseB {
                x: 0
                y: 1
                width: 107/2
                height: 75/2
                clip: true
            }

            Text {
                x: 0
                y: 0
                width: 54
                height: 38
                color: "#ffffff"
                text: qsTr("B")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
        }

        Text {
            id:currentValuephaseB
            x: 248
            y: 15
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("220.22")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:currentValuephaseA
            x: 96
            y: 15
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("220.22")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        CustomBGForGraphPhaseText {
            x: 334
            y: 5
            CustomHeaderForPhaseC {
                x: 0
                y: 1
                width: 107/2
                height: 75/2
                clip: true
            }

            Text {
                x: 0
                y: 0
                width: 54
                height: 38
                color: "#ffffff"
                text: qsTr("C")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
        }

        Text {
            id:currentValuephaseC
            x: 400
            y: 15
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("220.22")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }
    }




    Rectangle {
        id: rectangle3
        x: -398
        y: 0
        width: 348
        height: 728
        visible: true
        color: "#ffffff"
        border.color: "#e1e5ea"

        Rectangle {
            id: rectangle1
            x: 55
            y: 124
            width: 279
            height: 146
            color: "#f7f8fa"
            border.color: "#b0adb1b4"

        }

        Text {
            id: rmsAB
            x: 73
            y: 135
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            id: rmsBC
            x: 73
            y: 185
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            id: rmsCA
            x: 73
            y: 235
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            id: fundAB
            x: 141
            y: 135
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            id: fundBC
            x: 141
            y: 185
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            id: fundCA
            x: 141
            y: 235
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            id: angleAB
            x: 207
            y: 135
            color: textsColors
            text:(angleVoltagePhaseB.text-angleVoltagePhaseA.text).toFixed(2)
            font.pixelSize: 18
        }

        Text {
            id:angleVoltagePhaseABAngle
            x: 262
            anchors.left: angleAB.right
            y: 136
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.leftMargin: 0
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleBC
            x: 207
            y: 185
            color: textsColors
            text:(angleVoltagePhaseC.text-angleVoltagePhaseB.text).toFixed(2)
            font.pixelSize: 18
        }

        Text {
            id:angleVoltagePhaseBCAngle
            x: 262
            anchors.left: angleBC.right
            y: 186
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.leftMargin: 0
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleCA
            x: 207
            y: 235
            color: textsColors
            text: ((360 - Number(angleVoltagePhaseC.text)) + Number(angleVoltagePhaseA.text)).toFixed(2)
            font.pixelSize: 18
        }

        Text {
            id:angleVoltagePhaseCAAngle
            x: 262
            anchors.left: angleCA.right
            y: 236
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.leftMargin: 0
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Image {
            id: group9729
            x: 283
            y: 235
            width: 48/2
            source: "images/Group 9729.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: group9730
            x: 283
            y: 185
            width: 48/2
            source: "images/Group 9730.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: group9744
            x: 283
            y: 135
            width: 48/2
            source: "images/Group 9744.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: voltagePhasor
            x: 12
            y: 15
            width: 200
            height: 47
            color: "#284863"
            text: qsTr("VOLTAGE PHASOR")
            font.letterSpacing: -3
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        Rectangle {
            id: rectangle11
            x: 0
            y: 306
            width: 348
            height: 1

            color: "#b8b8b8"
        }

        Text {
            id: voltagePhasor1
            x: 71
            y: 83
            width: 268
            height: 47
            color: "#284863"
            text: qsTr("RMS         Fund.      Angle       Risk")
            font.letterSpacing: -3
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: voltagePhasor2
            x: 12
            y: 135
            width: 44
            height: 148
            color: "#284863"
            text: qsTr("AB \nBC \nCA")
            font.letterSpacing: -3
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            lineHeight: 2.2
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: voltagePhasor3
            x: 71
            y: 393
            width: 268
            height: 47
            color: "#284863"
            text: qsTr("RMS        Fund.      Angle       Risk")
            font.letterSpacing: -3
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: voltagePhasor4
            x: 12
            y: 444
            width: 44
            height: 148
            color: "#284863"
            text: qsTr("AB \nBC \nCA")
            font.letterSpacing: -3
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            lineHeight: 2.2
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: voltagePhasor5
            x: 12
            y: 330
            width: 200
            height: 47
            color: "#284863"
            text: qsTr("CURRENT PHASOR")
            font.letterSpacing: -3
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Rectangle {
            id: rectangle17
            x: 56
            y: 434
            width: 279
            height: 146
            color: "#f7f8fa"
            border.color: "#b0adb1b4"
        }

        Text {
            x: 74
            y: 445
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            x: 74
            y: 495
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            x: 74
            y: 545
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            x: 142
            y: 445
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            x: 142
            y: 495
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            x: 142
            y: 545
            color: textsColors
            text: qsTr("25.47")
            font.pixelSize: 18
        }

        Text {
            id: angleCurrentCA
            x: 208
            y: 545
            color: textsColors
            text: ((360 - Number(angleVoltagePhaseC.text)) + Number(angleVoltagePhaseA.text)).toFixed(2)
            font.pixelSize: 18
        }

        Text {
            id:angleCurrentPhaseCAAngle
            x: 263
            anchors.left: angleCurrentCA.right
            y: 546
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.leftMargin: 0
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleCurrentBC
            x: 208
            y: 495
            color: textsColors
            text:(angleCurrentPhaseC.text-angleCurrentPhaseB.text).toFixed(2)
            font.pixelSize: 18
        }

        Text {
            id:angleCurrentPhaseBCAngle
            x: 263
            anchors.left: angleCurrentBC.right
            y: 496
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.leftMargin: 0
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleCurrentAB
            x: 208
            y: 445
            color: textsColors
            text:(angleCurrentPhaseB.text-angleCurrentPhaseA.text).toFixed(2)
            font.pixelSize: 18
        }

        Text {
            id:angleCurrentPhaseABAngle
            x: 263
            anchors.left: angleCurrentAB.right
            y: 446
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.leftMargin: 0
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Image {
            x: 284
            y: 545
            width: 48/2
            source: "images/Group 9729.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            x: 284
            y: 495
            width: 48/2
            source: "images/Group 9730.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            x: 284
            y: 445
            width: 48/2
            source: "images/Group 9744.svg"
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            id: rectangle121
            x: 1
            y: 630
            width: 345
            height: 98/2
            color: "#f7f8fa"
            border.color: "#979797"
        }

        CustomHeaderForPhaseA {
            x: 4
            y: 636
            width: 45
            height: 75/2
            clip: true
        }

        Text {
            x: 4
            y: 635
            width: 45
            height: 38
            color: "#ffffff"
            text: qsTr("A")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        CustomHeaderForPhaseB {
            x: 115
            y: 637
            width: 45
            height: 75/2
            clip: true
        }

        Text {
            x: 115
            y: 636
            width: 45
            height: 38
            color: "#ffffff"
            text: qsTr("B")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id:angleVoltagePhaseA
            x: 55
            y: 646
            height: 40/2
            color: "#284863"
            text: qsTr("0")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:angleVoltagePhaseAAngle
            x: 66
            anchors.left: angleVoltagePhaseA.right
            y: 646
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleVoltagePhaseB
            x: 165
            y: 646
            height: 40/2
            color: "#284863"
            text: qsTr("170")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:angleVoltagePhaseBAngle
            x: 178
            anchors.left: angleVoltagePhaseB.right
            y: 646
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        CustomHeaderForPhaseC {
            x: 225
            y: 636
            width: 45
            height: 75/2
            clip: true
        }

        Text {
            x: 225
            y: 635
            width: 45
            height: 38
            color: "#ffffff"
            text: qsTr("C")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: angleVoltagePhaseC
            x: 275
            y: 646
            height: 40/2
            color: "#284863"
            text: qsTr("270.55")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:angleVoltagePhaseCAngle
            x: 303
            anchors.left: angleVoltagePhaseC.right
            y: 646
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Rectangle {
            id: rectangle122
            x: 1
            y: 679
            width: 345
            height: 98/2
            color: "#f7f8fa"
            border.color: "#979797"
        }

        CustomHeaderForPhaseA {
            x: 4
            y: 685
            width: 45
            height: 75/2
            clip: true
        }

        Text {
            x: 4
            y: 684
            width: 45
            height: 38
            color: "#ffffff"
            text: qsTr("A")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        CustomHeaderForPhaseB {
            x: 115
            y: 686
            width: 45
            height: 75/2
            clip: true
        }

        Text {
            x: 115
            y: 685
            width: 45
            height: 38
            color: "#ffffff"
            text: qsTr("B")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id:angleCurrentPhaseA
            x: 55
            y: 695
            height: 40/2
            color: "#284863"
            text: qsTr("30.25")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:angleCurrentPhaseAAngle
            x: 78
            anchors.left: angleCurrentPhaseA.right
            y: 695
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:angleCurrentPhaseB
            x: 165
            y: 695
            height: 40/2
            color: "#284863"
            text: qsTr("150.21")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:angleCurrentPhaseBAngle
            x: 189
            anchors.left: angleCurrentPhaseB.right
            y: 695
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        CustomHeaderForPhaseC {
            x: 225
            y: 685
            width: 45
            height: 75/2
            clip: true
        }

        Text {
            x: 225
            y: 684
            width: 45
            height: 38
            color: "#ffffff"
            text: qsTr("C")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id:angleCurrentPhaseC
            x: 275
            y: 695
            height: 40/2
            color: "#284863"
            text: qsTr("270")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:angleCurrentPhaseCAngle
            x: 291
            anchors.left: angleCurrentPhaseC.right
            y: 695
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }
    }









    Rectangle {
        id: rectangle5
        x: 7
        y: 7
        width: 920
        height: 635
        visible: true
        color: "#ffffff"
        border.color: "#e1e5ea"

        Rectangle {
            id: rectangle7
            x: 24
            y: 361
            width: 354
            height: 267
            visible: true
            color: "#f7f8fa"
            border.color: "#b0adb1b4"

            Rectangle {
                id: rectangle8
                x: 9
                y: 39
                width: 337
                height: 54
                color: "#fdfeff"

                Image {
                    id: arrow7
                    x: 59
                    y: 17
                    source: "images/Arrow 1.svg"
                    scale: 0.6
                    rotation: 30
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow8
                    x: 60
                    y: 17
                    source: "images/Arrow 2.svg"
                    scale: 0.6
                    rotation: 150
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow9
                    x: 59
                    y: 17
                    source: "images/Arrow 3.svg"
                    scale: 0.6
                    rotation: 270
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: rectangle9
                x: 9
                y: 123
                width: 337
                height: 54
                color: "#fdfeff"

                Image {
                    id: arrow1
                    x: 59
                    y: 16
                    source: "images/Arrow 1.svg"
                    transformOrigin: Item.Left
                    scale: 0.6
                    rotation: 30
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow2
                    x: 59
                    y: 16
                    source: "images/Arrow 2.svg"
                    rotation: 270
                    transformOrigin: Item.Left
                    scale: 0.6
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow3
                    x: 59
                    y: 16
                    source: "images/Arrow 3.svg"
                    rotation: 150
                    transformOrigin: Item.Left
                    scale: 0.6
                    fillMode: Image.PreserveAspectFit
                }
            }

            Rectangle {
                id: rectangle10
                x: 9
                y: 205
                width: 337
                height: 54
                color: "#fdfeff"

                Image {
                    id: group9792
                    x: 25
                    y: 9
                    width: 135/2
                    source: "images/Group 9791.svg"
                    antialiasing: true
                    rotation: 0
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                    scale: 1
                }

                Image {
                    id: group9790
                    x: 25
                    y: 24
                    width: 135/2
                    source: "images/Group 9789.svg"
                    antialiasing: true
                    rotation: 0
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: group97902
                    x: 25
                    y: 39
                    width: 135/2
                    height: 6
                    source: "images/Group 9790.svg"
                    antialiasing: true
                    rotation: 0
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: posSequenceHeader
                    x: 0
                    y: -194
                    color: textsColors
                    text: qsTr("Positive Sequence")
                    font.pixelSize: 20
                }

                Text {
                    id: negSequenceHeader
                    x: 0
                    y: -111
                    color: textsColors
                    text: qsTr("Negative Sequence")
                    font.pixelSize: 20
                }

                Text {
                    id: zeroSequenceHeader
                    x: 0
                    y: -27
                    color: textsColors
                    text: qsTr("Zero Sequence")
                    font.pixelSize: 20
                }
            }

            Rectangle {
                id: rectanglerPF
                x: 128
                y: 39
                width: 218
                height: 54
                color: "#ffffff"
                radius: 0
                border.color: "#dde1e6"
                border.width: 1
                clip: true


                ParallelAnimation {
                    id: animGraphsVoltagePos
                    PropertyAnimation {

                        target: graphsPhaseA
                        loops: -1
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        from:-233
                        to: -574
                    }
                    PropertyAnimation {

                        target: graphsPhaseB
                        loops: -1
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        from:-203
                        to: -544
                    }
                    PropertyAnimation {

                        target: graphsPhaseC
                        loops: -1
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        from:-174
                        to: -515
                    }
                }

                Image {
                    id:graphsPhaseA
                    x: -233
                    y: 0
                    width: 950
                    height: 54
                    source: "images/GraphsPhaseA.svg"
                    antialiasing: true
                    sourceSize.width: 900
                    sourceSize.height: 52
                    fillMode: Image.Pad
                }

                Image {
                    id:graphsPhaseB
                    x: -203
                    y: 0
                    width: 950
                    height: 54
                    source: "images/GraphsPhaseB.svg"
                    antialiasing: true
                    sourceSize.height: 52
                    fillMode: Image.Pad
                    sourceSize.width: 900
                }

                Image {
                    id:graphsPhaseC
                    x: -174
                    y: 0
                    width: 950
                    height: 54
                    source: "images/GraphsPhaseC.svg"
                    antialiasing: true
                    sourceSize.height: 52
                    fillMode: Image.Pad
                    sourceSize.width: 900
                }
                layer.enabled: true
                layer.effect: OpacityMask {
                    maskSource: Item {
                        width: rectanglerPF.width
                        height: rectanglerPF.height
                        Rectangle {
                            width: rectanglerPF.adapt ? rectanglerPF.width : Math.min(rectanglerPF.width, rectanglerPF.height)+250
                            height: rectanglerPF.adapt ? rectanglerPF.height : width+250
                            radius: 0
                            anchors.centerIn: parent
                        }
                    }
                }
            }

            Rectangle {
                id: rectanglerPF1
                x: 128
                y: 123
                width: 218
                height: 54
                color: "#ffffff"
                radius: 0
                border.color: "#dde1e6"
                border.width: 1
                clip: true
                ParallelAnimation {
                    id:animGraphsVoltageNeg
                    PropertyAnimation {
                        target: graphsPhaseANeg
                        property: "x"
                        loops: -1
                        duration: timeOfUnbalanceSequences
                        to: -574
                        from: -233
                    }

                    PropertyAnimation {
                        target: graphsPhaseBNeg
                        property: "x"
                        loops: -1
                        duration: timeOfUnbalanceSequences
                        to: -544
                        from: -203
                    }

                    PropertyAnimation {
                        target: graphsPhaseCNeg
                        property: "x"
                        loops: -1
                        duration: timeOfUnbalanceSequences
                        to: -515
                        from: -174
                    }
                }

                Image {
                    id:graphsPhaseANeg
                    x: -233
                    y: 0
                    width: 950
                    height: 54
                    source: "images/GraphsPhaseA.svg"
                    antialiasing: true
                    sourceSize.height: 52
                    fillMode: Image.Pad
                    sourceSize.width: 900
                }

                Image {
                    id:graphsPhaseBNeg
                    x: -203
                    y: 0
                    width: 950
                    height: 54
                    source: "images/GraphsPhaseB.svg"
                    antialiasing: true
                    sourceSize.height: 52
                    fillMode: Image.Pad
                    sourceSize.width: 900
                }

                Image {
                    id:graphsPhaseCNeg
                    x: -174
                    y: 0
                    width: 950
                    height: 54
                    source: "images/GraphsPhaseC.svg"
                    antialiasing: true
                    sourceSize.height: 52
                    fillMode: Image.Pad
                    sourceSize.width: 900
                }
                layer.enabled: true
                layer.effect: OpacityMask {
                    maskSource: Item {
                        width: rectanglerPF1.width
                        height: rectanglerPF1.height
                        Rectangle {
                            width: rectanglerPF1.adapt ? rectanglerPF1.width : Math.min(rectanglerPF1.width, rectanglerPF1.height)+250
                            height: rectanglerPF1.adapt ? rectanglerPF1.height : width+250
                            radius: 0
                            anchors.centerIn: parent
                        }
                    }
                }
            }

            Rectangle {
                id: rectanglerPF2
                x: 128
                y: 205
                width: 218
                height: 54
                color: "#ffffff"
                radius: 0
                border.color: "#dde1e6"
                border.width: 1
                ParallelAnimation {
                    id:animGraphsVoltageZero
                    PropertyAnimation {
                        target: graphsPhaseAZero
                        property: "x"
                        loops: -1
                        duration: timeOfUnbalanceSequences
                        to: -519
                        from: -174
                    }

                    PropertyAnimation {
                        target: graphsPhaseBZero
                        property: "x"
                        loops: -1
                        duration: timeOfUnbalanceSequences
                        to: -517
                        from: -172
                    }

                    PropertyAnimation {
                        target: graphsPhaseCZero
                        property: "x"
                        loops: -1
                        duration: timeOfUnbalanceSequences
                        to: -515
                        from: -170
                    }
                }

                Image {
                    id:graphsPhaseAZero
                    x: -174
                    y: 21
                    width: 950
                    height: 12
                    source: "images/GraphsPhaseA.svg"
                    antialiasing: true
                    sourceSize.height: 52
                    fillMode: Image.TileHorizontally
                    sourceSize.width: 900
                }

                Image {
                    id:graphsPhaseBZero
                    x: -172
                    y: 21
                    width: 950
                    height: 12
                    source: "images/GraphsPhaseB.svg"
                    antialiasing: true
                    sourceSize.height: 52
                    fillMode: Image.TileHorizontally
                    sourceSize.width: 900
                }

                Image {
                    id:graphsPhaseCZero
                    x: -170
                    y: 21
                    width: 950
                    height: 12
                    source: "images/GraphsPhaseC.svg"
                    antialiasing: true
                    sourceSize.height: 52
                    fillMode: Image.TileHorizontally
                    sourceSize.width: 900
                }
                clip: true
                layer.enabled: true
                layer.effect: OpacityMask {
                    maskSource: Item {
                        width: rectanglerPF2.width
                        height: rectanglerPF2.height
                        Rectangle {
                            width: rectanglerPF2.adapt ? rectanglerPF2.width : Math.min(rectanglerPF2.width, rectanglerPF2.height)+250
                            height: rectanglerPF2.adapt ? rectanglerPF2.height : width+250
                            radius: 0
                            anchors.centerIn: parent
                        }
                    }
                }
            }
        }

        RectangleItem {
            id: rectangle2
            x: 8
            y: 38
            width: 265
            height: 248
            fillColor: "#008b2626"
            strokeWidth: -1
            Image {
                id: ellipse203
                x: 294
                y: -28
                width: 320
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
                antialiasing: true
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

            PieItem {
                id: pie2
                x: 60
                y: 48
                width: 280/2
                height: 280/2
                antialiasing: true
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

            PieItem {
                id: pie1
                x: 60
                y: 48
                width: 280/2
                height: 280/2
                antialiasing: true
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

            Rectangle {
                id: rectangle15
                x: 45
                y: 34
                width: 168
                height: 168
                color: "#00ffffff"
                radius: 84
                border.color: "#85617284"
                border.width: 1
                antialiasing: true
            }

            Rectangle {
                id: rectangle18
                x: 130
                y: 117
                width: (voltageValuephaseB.text/1.6).toFixed(2)
                height: 2
                color: "#fab225"
                border.width: 0
                transformOrigin: Item.Left
                TriangleItem {
                    x: rectangle18.width
                    y: -2
                    width: 6
                    height: 6
                    radius: 0
                    arcRadius: 1
                    strokeWidth: -1
                    fillColor: "#fab225"
                    antialiasing: true
                    rotation: 90
                    strokeColor: "#00ffffff"
                }
                antialiasing: true
                rotation: angleVoltagePhaseB.text
            }

            Rectangle {
                id: rectangle19
                x: 130
                y: 117
                width: (voltageValuephaseC.text/1.6).toFixed(2)
                height: 2
                color: "#3d70f8"
                border.width: 0
                antialiasing: true
                TriangleItem {
                    x: rectangle19.width
                    y: -2
                    width: 6
                    height: 6
                    radius: 0
                    antialiasing: true
                    arcRadius: 1
                    strokeWidth: -1
                    strokeColor: "#00ffffff"
                    rotation: 90
                    fillColor: "#3d70f8"
                }
                transformOrigin: Item.Left
                rotation: angleVoltagePhaseC.text
            }

            Rectangle {
                id: rectangle20
                x: 130
                y: 117
                width: (voltageValuephaseA.text/1.6).toFixed(2)
                height: 2
                color: "#ff5555"
                border.width: 0
                antialiasing: true
                rotation: angleVoltagePhaseA.text
                transformOrigin: Item.Left
                TriangleItem {
                    x: rectangle20.width
                    y: -2
                    width: 6
                    height: 6
                    radius: 0
                    antialiasing: true
                    arcRadius: 1
                    strokeWidth: -1
                    strokeColor: "#00ffffff"
                    rotation: 90
                    fillColor: "#ff5555"
                }
            }

        }

        Text {
            id: voltagePhasor6
            x: 11
            y: 7
            width: 200
            height: 47
            color: "#284863"
            text: qsTr("VOLTAGE  PHASOR")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Image {
            id: unbalanceCircle1
            x: 432
            y: 99
            width: 230
            source: "images/unbalanceCircle1.svg"
            rotation: 300
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: unbalanceCircle2
            x: 347
            y: 104
            height: 265
            source: "images/unbalanceCircle2.svg"
            rotation: -60
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: unbalanceCircle3
            x: 300
            y: 23
            width: 230
            source: "images/unbalanceCircle3.svg"
            rotation: 300
            fillMode: Image.PreserveAspectFit
        }
    }


















    PropertyAnimation {
        id: unbalancesRotation1
        target: ellipse203
        loops: -1
        property: "rotation"
        duration: 300
        from:0
        to: 360
    }

    PropertyAnimation {
        id: unbalancesRotation2
        target: ellipse2032
        loops: -1
        property: "rotation"
        duration: 300
        from:0
        to: 360
    }





















    Column {
        x: 1014
        y: 0
        width: 266
        height: 294
        spacing: 77
        Repeater {
            model: 2
            Rectangle {
                x: 0
                y: 0
                width: 266
                height: 69
                color: "#FFFFFF"
            }
        }
    }




    Column {
        x: 1014
        y: 68
        width: 266
        height: 226
        spacing: 68
        Repeater {
            model: 2
            Rectangle {
                x: 0
                y: 0
                width: 266
                height: 79
                color: "#EFF2F6"
            }
        }
    }


    Column {
        x: 1014
        y: 309
        width: 266
        height: 294
        spacing: 77
        Repeater {
            model: 2
            Rectangle {
                x: 0
                y: 0
                width: 266
                height: 69
                color: "#FFFFFF"
            }
        }
    }


    Column {
        x: 1014
        y: 377
        width: 266
        height: 226
        spacing: 68
        Repeater {
            model: 2
            Rectangle {
                x: 0
                y: 0
                width: 266
                height: 79
                color: "#eff2f6"
            }
        }
    }


    Text {
        id: voltagePhasor8
        x: 1034
        y: 15
        width: 200
        height: 47
        color: "#284863"
        text: qsTr("VOLTAGE   ")
        font.letterSpacing: -2
        font.pixelSize: 19
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Bold"
        font.family: "Akshar"
    }


    Text {
        id: voltagePhasor9
        x: 1034
        y: 324
        width: 200
        height: 47
        color: "#284863"
        text: qsTr("CURRENT")
        font.letterSpacing: -2
        font.pixelSize: 19
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Bold"
        font.family: "Akshar"
    }



    Text {
        id: posSeqHeader
        x: 1034
        y: 86
        color: textsColors
        text: qsTr("Positive Sequence")
        font.pixelSize: 20
    }


    Text {
        id: posSeq
        x: 1034
        y: 110
        color: textsColors
        text: qsTr("280.15 V")
        font.pixelSize: 20
    }


    Text {
        id: negSeqHeader
        x: 1034
        y: 158
        color: textsColors
        text: qsTr("Negative Sequence")
        font.pixelSize: 20
    }


    Text {
        id: negSeq
        x: 1034
        y: 182
        color: textsColors
        text: qsTr("280.15 V")
        font.pixelSize: 20
    }


    Text {
        id: zeroSeqHeader
        x: 1034
        y: 235
        color: textsColors
        text: qsTr("Zero Sequence")
        font.pixelSize: 20
    }


    Text {
        id: zeroSeq
        x: 1034
        y: 259
        color: textsColors
        text: qsTr("280.15 V")
        font.pixelSize: 20
    }


    Text {
        id: posSeqHeader1
        x: 1034
        y: 396
        color: textsColors
        text: qsTr("Positive Sequence")
        font.pixelSize: 20
    }


    Text {
        id: posSeq1
        x: 1034
        y: 420
        color: textsColors
        text: qsTr("280.15 V")
        font.pixelSize: 20
    }


    Text {
        id: negSeqHeader1
        x: 1034
        y: 466
        color: textsColors
        text: qsTr("Negative Sequence")
        font.pixelSize: 20
    }


    Text {
        id: negSeq1
        x: 1034
        y: 490
        color: textsColors
        text: qsTr("280.15 V")
        font.pixelSize: 20
    }


    Text {
        id: zeroSeqHeader1
        x: 1034
        y: 543
        color: textsColors
        text: qsTr("Zero Sequence")
        font.pixelSize: 20
    }


    Text {
        id: zeroSeq1
        x: 1034
        y: 567
        color: textsColors
        text: qsTr("280.15 V")
        font.pixelSize: 20
    }








    Image {
        id: hOLDButton
        x: 1086
        y: 630
        //        width: 406/2
        height: 198/2
        source: "images/HOLDButton.svg"
        fillMode: Image.PreserveAspectFit

        Text {
            id: text1
            x: 0
            y: 32
            width: 194
            height: 35
            color: "#ffffff"
            text: qsTr("HOLD")
            font.letterSpacing: -2
            font.pixelSize: 25
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.family: "Akshar"
        }
    }
































    MouseArea {
        id: mouseArea
        x: 1086
        y: 630
        width: 194
        height: 99
        onClicked: {
            if(forUnbalanceHold===true){
                unbalancesRotation1.stop()
                unbalancesRotation2.stop()
                forUnbalanceHold=false


                animGraphsVoltagePos.pause()
                animGraphsVoltageNeg.pause()
                animGraphsVoltageZero.pause()
                animGraphsCurrentPos.pause()
                animGraphsCurrentNeg.pause()
                animGraphsCurrentZero.pause()
            }
            else{
                unbalancesRotation1.start()
                unbalancesRotation2.start()
                forUnbalanceHold=true

                animGraphsVoltagePos.resume()
                animGraphsVoltageNeg.resume()
                animGraphsVoltageZero.resume()
                animGraphsCurrentPos.resume()
                animGraphsCurrentNeg.resume()
                animGraphsCurrentZero.resume()
            }

        }
    }
}



