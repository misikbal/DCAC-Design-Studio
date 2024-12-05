
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
    antialiasing: true

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




    MouseArea{
        x: 79
        y: 662
        width: 834
        height:64
        onClicked: {
            if(forUnbalanceHold===true){
                forUnbalanceHold=false
                holdNonClicked.source="images/HoldClicked.svg"
                unbalancesRotation1.stop()
                unbalancesRotation2.stop()
                animGraphsVoltagePos.pause()
                animGraphsVoltageNeg.pause()
                animGraphsVoltageZero.pause()
                animGraphsCurrentPos.pause()
                animGraphsCurrentNeg.pause()
                animGraphsCurrentZero.pause()

                holdButtonClickedAnim.start()





            }
            else{
                forUnbalanceHold=true
                holdNonClicked.source="images/HoldNonClicked.svg"
                unbalancesRotation1.start()
                unbalancesRotation2.start()
                animGraphsVoltagePos.resume()
                animGraphsVoltageNeg.resume()
                animGraphsVoltageZero.resume()
                animGraphsCurrentPos.resume()
                animGraphsCurrentNeg.resume()
                animGraphsCurrentZero.resume()
                holdButtonNonClickedAnim.start()


            }

        }

    }

    Image {
        id: holdNonClicked
        x: 49
        y: 662
        width: 834
        height: 64
        source: "images/HoldNonClicked.svg"
        fillMode: Image.Stretch
    }

    Image {
        id: holdClicked
        x: 49
        y: 756
        width: 834
        source: "images/HoldClicked.svg"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: holdButtonText
        x: 49
        y: 662
        width: 834
        height: 64
        color: "#ffffff"
        text: qsTr("HOLD")
        font.letterSpacing: -2
        font.pixelSize: 22
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "SemiBold"
        font.family: "Akshar"
    }

    ParallelAnimation{
        id:holdButtonClickedAnim
        NumberAnimation{

            target: holdNonClicked
            property: "source"
            duration: 300
            to: images/HoldClicked.svg
        }

    }


    ParallelAnimation{
        id:holdButtonNonClickedAnim
        NumberAnimation{

            target: holdNonClicked
            property: "source"
            duration: 300
            to: images/HoldNonClicked.svg
        }

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
                y: 39
                width: 337
                height: 54
                color: "#fdfeff"



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
                    clip: true
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
                    clip: true
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
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -519
                            from: -174
                        }

                        PropertyAnimation {
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -517
                            from: -172
                        }

                        PropertyAnimation {
                            property: "x"
                            loops: -1
                            duration: timeOfUnbalanceSequences
                            to: -515
                            from: -170
                        }
                    }
                    clip: true
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
    }
















    Rectangle {
        id: rectangle5
        x: 7
        y: 7
        width: 920
        height: 640
        visible: true
        color: "#ffffff"
        border.color: "#e1e5ea"

        Rectangle {
            id: rectangle7
            x: 17
            y: 367
            width: 435
            height: 267
            visible: true
            color: "#f7f8fa"
            border.color: "#b0adb1b4"

            Rectangle {
                id: rectangle8
                x: 9
                y: 39
                width: 403
                height: 54
                color: "#fdfeff"

                Rectangle {
                    id: rectangle14
                    x: 12
                    y: 0
                    width: 54
                    height: 54
                    color: "#acbcce"
                    radius: 27
                }

                Image {
                    id: arrow7
                    x: 39
                    y: 15
                    source: "images/Arrow 1.svg"
                    scale: 0.6
                    rotation: 0
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow8
                    x: 40
                    y: 15
                    source: "images/Arrow 2.svg"
                    scale: 0.6
                    rotation: 120
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow9
                    x: 39
                    y: 15
                    source: "images/Arrow 3.svg"
                    scale: 0.6
                    rotation: 240
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: posSequenceValue
                    x: 311
                    y: 16
                    color: textsColors
                    text: "311"
                    font.pixelSize: 20
                }
                Text {
                    y: 16
                    color: textsColors
                    text: "V"
                    anchors.left: posSequenceValue.right
                    font.pixelSize: 20
                    anchors.leftMargin: 5
                }

            }

            Rectangle {
                id: rectangle9
                x: 9
                y: 123
                width: 403
                height: 54
                color: "#fdfeff"

                Rectangle {
                    id: rectangle15
                    x: 12
                    y: 0
                    width: 54
                    height: 54
                    color: "#acbcce"
                    radius: 27
                }

                Image {
                    id: arrow1
                    x: 39
                    y: 15
                    source: "images/Arrow 1.svg"
                    transformOrigin: Item.Left
                    scale: 0.6
                    rotation: 0
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow2
                    x: 39
                    y: 15
                    source: "images/Arrow 2.svg"
                    rotation: 240
                    transformOrigin: Item.Left
                    scale: 0.6
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: arrow3
                    x: 39
                    y: 15
                    source: "images/Arrow 3.svg"
                    rotation: 120
                    transformOrigin: Item.Left
                    scale: 0.6
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: negSequenceValue
                    x: 311
                    y: 16
                    color: textsColors
                    text: "220.21"
                    font.pixelSize: 20
                }

                Text {
                    y: 16
                    color: textsColors
                    text: "V"
                    anchors.left: negSequenceValue.right
                    font.pixelSize: 20
                    anchors.leftMargin: 5
                }

            }

            Rectangle {
                id: rectangle10
                x: 9
                y: 205
                width: 403
                height: 54
                color: "#fdfeff"

                Image {
                    id: group9792
                    x: 12
                    y: 9
                    width: 55
                    height: 10
                    source: "images/Group 9791.svg"
                    antialiasing: true
                    rotation: 0
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                    scale: 1
                }

                Image {
                    id: group9790
                    x: 12
                    y: 24
                    width: 55
                    source: "images/Group 9789.svg"
                    antialiasing: true
                    rotation: 0
                    transformOrigin: Item.Left
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    id: group97902
                    x: 12
                    y: 39
                    width: 55
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

                Text {
                    id: zeroSequenceValue
                    x: 311
                    y: 16
                    color: textsColors
                    text: "0.15"
                    font.pixelSize: 20
                }

                Text {
                    y: 16
                    color: textsColors
                    text: "V"
                    anchors.left: zeroSequenceValue.right
                    font.pixelSize: 20
                    anchors.leftMargin: 5
                }
            }

            Rectangle {
                id: rectanglerPF
                x: 92
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
                    sourceSize.height: posSequenceValue.text/6
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
                    sourceSize.height: posSequenceValue.text/6
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
                    sourceSize.height: posSequenceValue.text/6
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
                x: 92
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
                    sourceSize.height: negSequenceValue.text/6
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
                    sourceSize.height: negSequenceValue.text/6
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
                    sourceSize.height: negSequenceValue.text/6
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
                x: 92
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
                    id:graphsPhaseAZero11
                    x: -172
                    y: 39
                    width: 950
                    height: 5
                    visible: false
                    source: "images/GraphsPhaseA.svg"
                    sourceSize.height: 5
                    antialiasing: true
                    fillMode: Image.Pad
                    sourceSize.width: 950
                }

                Image {
                    id:graphsPhaseBZero11
                    x: -172
                    y: 21
                    width: 950
                    height: 12
                    visible: false
                    source: "images/GraphsPhaseB.svg"
                    antialiasing: true
                    sourceSize.height: zeroSequenceValue/6
                    fillMode: Image.TileHorizontally
                    sourceSize.width: 900
                }

                Image {
                    id:graphsPhaseCZero11
                    x: -170
                    y: 21
                    width: 950
                    height: 12
                    visible: false
                    source: "images/GraphsPhaseC.svg"
                    antialiasing: true
                    sourceSize.height: zeroSequenceValue/6
                    fillMode: Image.TileHorizontally
                    sourceSize.width: 900
                }

                Rectangle {
                    id: graphsPhaseCZero
                    x: -20
                    y: 30
                    width: 950
                    height: 2
                    color: "#217efd"
                }
                Rectangle {
                    id: graphsPhaseBZero
                    x: -20
                    y: 28
                    width: 950
                    height: 2
                    color: "#fcae18"
                }
                Rectangle {
                    id: graphsPhaseAZero
                    x: -27
                    y: 26
                    width: 950
                    height: 2
                    color: "#ff5555"
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
            x: 148
            y: 55
            width: 265
            height: 248
            fillColor: "#008b2626"
            strokeWidth: -1
            Image {
                id: ellipse203
                x: -30
                y: -42
                width: 320
                source: "images/Ellipse 203.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
                rotation: 0
            }

            Rectangle {
                id: rectangle18
                x: 130
                y: 117
                width: (voltageFundphaseB.text/2.1).toFixed(2)
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
                width: (voltageFundphaseC.text/2.1).toFixed(2)
                height: 2
                color: "#3d70f8"
                border.width: 0
                antialiasing: true
                transformOrigin: Item.Left
                rotation: angleVoltagePhaseC.text
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
            }

            Rectangle {
                id: rectangle20
                x: 130
                y: 117
                width: (voltageFundphaseA.text/2.1).toFixed(2)
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

            Image {
                id: unbalanceCircle1
                x: 100
                y: 46
                width: 230
                source: "images/unbalanceCircle1.svg"
                rotation: 300
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: unbalanceCircle2
                x: 15
                y: 51
                height: 265
                source: "images/unbalanceCircle2.svg"
                rotation: -60
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: unbalanceCircle3
                x: -32
                y: -30
                width: 230
                source: "images/unbalanceCircle3.svg"
                rotation: 300
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: circleSM
                x: 74
                y: 62
                width: 225/2
                source: "images/circleSM.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: circleBIG
                x: 26
                y: 14
                width: 418/2
                source: "images/circleBIG.svg"
                fillMode: Image.PreserveAspectFit
            }

        }

        Text {
            id: voltagePhasor6
            x: 11
            y: 0
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

        Text {
            id: voltagePhasor7
            x: 24
            y: 325
            width: 200
            height: 47
            color: "#284863"
            text: qsTr("VOLTAGE  SEQUENCE")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Rectangle {
            id: rectangle16
            x: 471
            y: 367
            width: 435
            height: 267
            visible: true
            color: "#f7f8fa"
            border.color: "#b0adb1b4"
            Rectangle {
                x: 9
                y: 39
                width: 403
                height: 54
                color: "#fdfeff"
                Rectangle {
                    x: 12
                    y: 0
                    width: 54
                    height: 54
                    color: "#acbcce"
                    radius: 27
                }

                Image {
                    x: 39
                    y: 15
                    source: "images/Arrow 1.svg"
                    rotation: 0
                    transformOrigin: Item.Left
                    scale: 0.6
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 40
                    y: 15
                    source: "images/Arrow 2.svg"
                    rotation: 120
                    transformOrigin: Item.Left
                    scale: 0.6
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 39
                    y: 15
                    source: "images/Arrow 3.svg"
                    rotation: 240
                    transformOrigin: Item.Left
                    scale: 0.6
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id:posSequenceValue1
                    x: 311
                    y: 16
                    color: textsColors
                    text: "8.97"
                    font.pixelSize: 20
                }

                Text {
                    y: 16
                    color: textsColors
                    text: "A"
                    anchors.left: posSequenceValue1.right
                    font.pixelSize: 20
                    anchors.leftMargin: 5
                }
            }

            Rectangle {
                x: 9
                y: 123
                width: 403
                height: 54
                color: "#fdfeff"
                Rectangle {
                    x: 12
                    y: 0
                    width: 54
                    height: 54
                    color: "#acbcce"
                    radius: 27
                }

                Image {
                    x: 39
                    y: 15
                    source: "images/Arrow 1.svg"
                    rotation: 0
                    transformOrigin: Item.Left
                    scale: 0.6
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 39
                    y: 15
                    source: "images/Arrow 2.svg"
                    rotation: 240
                    transformOrigin: Item.Left
                    scale: 0.6
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 39
                    y: 15
                    source: "images/Arrow 3.svg"
                    rotation: 120
                    transformOrigin: Item.Left
                    scale: 0.6
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id:negSequenceValue1
                    x: 311
                    y: 16
                    color: textsColors
                    text: "2.24"
                    font.pixelSize: 20
                }

                Text {
                    y: 16
                    color: textsColors
                    text: "A"
                    anchors.left: negSequenceValue1.right
                    font.pixelSize: 20
                    anchors.leftMargin: 5
                }
            }

            Rectangle {
                x: 9
                y: 205
                width: 403
                height: 54
                color: "#fdfeff"
                Image {
                    x: 12
                    y: 9
                    width: 55
                    height: 10
                    source: "images/Group 9791.svg"
                    rotation: 0
                    transformOrigin: Item.Left
                    scale: 1
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 12
                    y: 24
                    width: 55
                    source: "images/Group 9789.svg"
                    rotation: 0
                    transformOrigin: Item.Left
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Image {
                    x: 12
                    y: 39
                    width: 55
                    height: 6
                    source: "images/Group 9790.svg"
                    rotation: 0
                    transformOrigin: Item.Left
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    x: 0
                    y: -194
                    color: textsColors
                    text: qsTr("Positive Sequence")
                    font.pixelSize: 20
                }

                Text {
                    x: 0
                    y: -111
                    color: textsColors
                    text: qsTr("Negative Sequence")
                    font.pixelSize: 20
                }

                Text {
                    x: 0
                    y: -27
                    color: textsColors
                    text: qsTr("Zero Sequence")
                    font.pixelSize: 20
                }

                Text {
                    id: zeroSequenceValue1
                    x: 311
                    y: 16
                    color: textsColors
                    text: "0.11"
                    font.pixelSize: 20
                }

                Text {
                    y: 16
                    color: textsColors
                    text: "A"
                    anchors.left: zeroSequenceValue1.right
                    font.pixelSize: 20
                    anchors.leftMargin: 5
                }
            }

            Rectangle {
                x: 92
                y: 39
                width: 218
                height: 54
                color: "#ffffff"
                radius: 0
                border.color: "#dde1e6"
                border.width: 1
                layer.enabled: true
                ParallelAnimation {
                    PropertyAnimation {
                        target: graphsPhaseA
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        loops: -1
                        to: -574
                        from: -233
                    }

                    PropertyAnimation {
                        target: graphsPhaseB
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        loops: -1
                        to: -544
                        from: -203
                    }

                    PropertyAnimation {
                        target: graphsPhaseC
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        loops: -1
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
                    sourceSize.height: posSequenceValue1.text/0.19
                    antialiasing: true
                    sourceSize.width: 900
                    fillMode: Image.Pad
                }

                Image {
                    id:animGraphsCurrentB
                    x: -203
                    y: 0
                    width: 950
                    height: 54
                    source: "images/GraphsPhaseB.svg"
                    sourceSize.height: posSequenceValue1.text/0.19
                    antialiasing: true
                    sourceSize.width: 900
                    fillMode: Image.Pad
                }

                Image {
                    id:animGraphsCurrentC
                    x: -174
                    y: 0
                    width: 950
                    height: 54
                    source: "images/GraphsPhaseC.svg"
                    sourceSize.height: posSequenceValue1.text/0.19
                    antialiasing: true
                    sourceSize.width: 900
                    fillMode: Image.Pad
                }
                clip: true
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
                x: 92
                y: 123
                width: 218
                height: 54
                color: "#ffffff"
                radius: 0
                border.color: "#dde1e6"
                border.width: 1
                layer.enabled: true
                ParallelAnimation {
                    PropertyAnimation {
                        target: graphsPhaseANeg
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        loops: -1
                        to: -574
                        from: -233
                    }

                    PropertyAnimation {
                        target: graphsPhaseBNeg
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        loops: -1
                        to: -544
                        from: -203
                    }

                    PropertyAnimation {
                        target: graphsPhaseCNeg
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        loops: -1
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
                    sourceSize.height: negSequenceValue1.text/0.19
                    antialiasing: true
                    sourceSize.width: 900
                    fillMode: Image.Pad
                }

                Image {
                    id:animGraphsCurrentNegB
                    x: -203
                    y: 0
                    width: 950
                    height: 54
                    source: "images/GraphsPhaseB.svg"
                    sourceSize.height: negSequenceValue1.text/0.19
                    antialiasing: true
                    sourceSize.width: 900
                    fillMode: Image.Pad
                }

                Image {
                    id:animGraphsCurrentNegC
                    x: -174
                    y: 0
                    width: 950
                    height: 54
                    source: "images/GraphsPhaseC.svg"
                    sourceSize.height: negSequenceValue1.text/0.19
                    antialiasing: true
                    sourceSize.width: 900
                    fillMode: Image.Pad
                }
                clip: true
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
                x: 92
                y: 205
                width: 218
                height: 54
                color: "#ffffff"
                radius: 0
                border.color: "#dde1e6"
                border.width: 1
                layer.enabled: true
                ParallelAnimation {
                    PropertyAnimation {
                        target: graphsPhaseAZero
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        loops: -1
                        to: -519
                        from: -174
                    }

                    PropertyAnimation {
                        target: graphsPhaseBZero
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        loops: -1
                        to: -517
                        from: -172
                    }

                    PropertyAnimation {
                        target: graphsPhaseCZero
                        property: "x"
                        duration: timeOfUnbalanceSequences
                        loops: -1
                        to: -515
                        from: -170
                    }
                }

                Image {
                    x: -172
                    y: 39
                    width: 950
                    height: 5
                    visible: false
                    source: "images/GraphsPhaseA.svg"
                    sourceSize.height: 5
                    antialiasing: true
                    sourceSize.width: 950
                    fillMode: Image.Pad
                }

                Image {
                    x: -172
                    y: 21
                    width: 950
                    height: 12
                    visible: false
                    source: "images/GraphsPhaseB.svg"
                    sourceSize.height: zeroSequenceValue/6
                    antialiasing: true
                    sourceSize.width: 900
                    fillMode: Image.TileHorizontally
                }

                Image {
                    x: -170
                    y: 21
                    width: 950
                    height: 12
                    visible: false
                    source: "images/GraphsPhaseC.svg"
                    sourceSize.height: zeroSequenceValue/6
                    antialiasing: true
                    sourceSize.width: 900
                    fillMode: Image.TileHorizontally
                }

                Rectangle {
                    x: -20
                    y: 30
                    width: 950
                    height: 2
                    color: "#217efd"
                }

                Rectangle {
                    x: -20
                    y: 28
                    width: 950
                    height: 2
                    color: "#fcae18"
                }

                Rectangle {
                    x: -27
                    y: 26
                    width: 950
                    height: 2
                    color: "#ff5555"
                }
                clip: true
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
            id: rectangle21
            x: 602
            y: 55
            width: 265
            height: 248
            Image {
                id:ellipse2032
                x: -30
                y: -42
                width: 320
                source: "images/Ellipse 203.svg"
                rotation: 0
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Rectangle {
                id:rectangle182
                x: 130
                y: 117
                width: (currentFundphaseB.text*14.7).toFixed(2)
                height: 2
                color: "#fab225"
                border.width: 0
                TriangleItem {
                    x: rectangle182.width
                    y: -2
                    width: 6
                    height: 6
                    radius: 0
                    strokeColor: "#00ffffff"
                    fillColor: "#fab225"
                    rotation: 90
                    strokeWidth: -1
                    arcRadius: 1
                    antialiasing: true
                }
                rotation: angleCurrentPhaseB.text
                transformOrigin: Item.Left
                antialiasing: true
            }

            Rectangle {
                id:rectangle192
                x: 130
                y: 117
                width: (currentFundphaseC.text*14.7).toFixed(2)
                height: 2
                color: "#3d70f8"
                border.width: 0
                TriangleItem {
                    x: rectangle192.width
                    y: -2
                    width: 6
                    height: 6
                    radius: 0
                    strokeColor: "#00ffffff"
                    fillColor: "#3d70f8"
                    rotation: 90
                    strokeWidth: -1
                    arcRadius: 1
                    antialiasing: true
                }
                rotation: angleCurrentPhaseC.text
                transformOrigin: Item.Left
                antialiasing: true
            }

            Rectangle {
                id:rectangle202
                x: 130
                y: 117
                width: (currentFundphaseA.text*14.7).toFixed(2)
                height: 2
                color: "#ff5555"
                border.width: 0
                TriangleItem {
                    x: rectangle202.width
                    y: -2
                    width: 6
                    height: 6
                    radius: 0
                    strokeColor: "#00ffffff"
                    fillColor: "#ff5555"
                    rotation: 90
                    strokeWidth: -1
                    arcRadius: 1
                    antialiasing: true
                }
                rotation: angleCurrentPhaseA.text
                transformOrigin: Item.Left
                antialiasing: true
            }

            Image {
                x: 100
                y: 46
                width: 230
                source: "images/unbalanceCircle1.svg"
                rotation: 300
                fillMode: Image.PreserveAspectFit
            }

            Image {
                x: 15
                y: 51
                height: 265
                source: "images/unbalanceCircle2.svg"
                rotation: -60
                fillMode: Image.PreserveAspectFit
            }

            Image {
                x: -32
                y: -30
                width: 230
                source: "images/unbalanceCircle3.svg"
                rotation: 300
                fillMode: Image.PreserveAspectFit
            }

            Image {
                x: 74
                y: 62
                width: 225/2
                source: "images/circleSM.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                x: 26
                y: 14
                width: 418/2
                source: "images/circleBIG.svg"
                fillMode: Image.PreserveAspectFit
            }
            fillColor: "#008b2626"
            strokeWidth: -1
        }

        Text {
            id: voltagePhasor10
            x: 465
            y: 0
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

        Text {
            id: voltagePhasor11
            x: 478
            y: 325
            width: 200
            height: 47
            color: "#284863"
            text: qsTr("CURRENT  SEQUENCE")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
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

    Rectangle {
        id: rectangle22
        x: 935
        y: 0
        width: 342
        height: 728
        color: "#ffffff"
        border.color: "#e1e5ea"
        border.width: 1

        GroupItem {
            x: 83
            y: 4
            CustomHeaderForPhaseA {
                x: 20
                y: 0
                width: 67
                height: 31
                clip: true
            }

            CustomHeaderForPhaseB {
                x: 101
                y: 0
                width: 67
                height: 31
                clip: true
            }

            CustomHeaderForPhaseC {
                x: 182
                y: 0
                width: 67
                height: 31
                clip: true
            }

            Text {
                x: 19
                y: -1
                width: 63
                height: 32
                color: "#ffffff"
                text: qsTr("Phase A")
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                x: 100
                y: -1
                width: 63
                height: 32
                color: "#ffffff"
                text: qsTr("Phase B")
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                x: 181
                y: -1
                width: 63
                height: 32
                color: "#ffffff"
                text: qsTr("Phase C")
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
        }

        Rectangle {
            x: 140
            y: 388
            width: 255/2
            height: 99/2
            color: "#f7f8fa"
        }

        Rectangle {
            x: 0
            y: 36
            width: 78
            height: 364
            color: "#eff2f6"
        }

        Text {
            x: 6
            y: 6
            width: 200/2
            height: 35
            color: "#284863"
            text: qsTr("Phasor")
            font.letterSpacing: -2
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            lineHeight: 2.5
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            x: 6
            y: 343
            width: 200/2
            height: 35
            color: "#284863"
            text: qsTr("Type")
            font.letterSpacing: -2
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            lineHeight: 2.5
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            x: 10
            y: 42
            width: 75
            height: 350

            color: "#284863"
            text: qsTr("U\nU\nU\nI\nI\nI\nI-U")
            font.letterSpacing: -2
            font.pixelSize: 18
            verticalAlignment: Text.AlignTop
            lineHeight: 2
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }


        Text {
            id: text1
            x: 24
            y: 50
            width: 75
            height: 350

            color: "#284863"
            text: qsTr("RMS\nFund.\nPhase \nRMS\nFund.\nPhase \n   Phase")
            font.letterSpacing: -2
            font.pixelSize: 16
            verticalAlignment: Text.AlignTop
            lineHeight: 2.3
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }



        Rectangle {
            x: 0
            y: 388
            width: 270/2
            height: 99/2
            color: "#617284"

            Text {
                x: 13
                y: 7
                width: 200/2
                height: 35
                color: "#ffffff"
                text: qsTr("Unbalance")
                font.letterSpacing: -2
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                lineHeight: 2.5
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
        }




        Rectangle {
            x: 273
            y: 388
            width: 68
            height: 99/2
            color: "#f7f8fa"
        }

        Text {
            x: 151
            y: 395
            width: 200/2
            height: 35
            color: "#284863"
            text: qsTr("Per (%)")
            font.letterSpacing: -2
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            lineHeight: 2.5
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            x: 284
            y: 395
            width: 200/2
            height: 35
            color: "#284863"
            text: qsTr("Risks")
            font.letterSpacing: -2
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            lineHeight: 2.5
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id:angleCurrentPhaseBAngle
            anchors.left: angleCurrentPhaseB.right
            anchors.top: angleCurrentPhaseB.top
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.topMargin: 0
            anchors.leftMargin: 5
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:angleCurrentPhaseCAngle
            anchors.left: angleCurrentPhaseC.right
            anchors.top: angleCurrentPhaseC.top
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.leftMargin: 5
            anchors.topMargin: 0
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            x: 17
            y: 444
            width: 75
            height: 120

            color: "#284863"
            text: qsTr("U\nI")
            font.letterSpacing: -2
            font.pixelSize: 18
            verticalAlignment: Text.AlignTop
            lineHeight: 2
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            x: 31
            y: 452
            width: 75
            height: 120
            color: "#284863"
            text: qsTr("Unbalance\nUnbalance")
            font.letterSpacing: -2
            font.pixelSize: 16
            verticalAlignment: Text.AlignTop
            lineHeight: 2.35
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"


            Image {
                id: group97301
                x: 264
                y: -5
                width: 50/2
                source: "images/Group 9730.svg"
                fillMode: Image.PreserveAspectFit
            }

        }

        Image {
            id: group97291
            x: 295
            y: 491
            width: 50/2
            source: "images/Group 9729.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: group97302
            x: 4
            y: 646
            width: 50/2
            source: "images/Group 9730.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: voltageFundphaseA
            x: 108
            y: 90
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("311")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: voltageFundphaseB
            x: 189
            y: 90
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
            id: voltageFundphaseC
            x: 270
            y: 90
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
            id: currentFundphaseB
            x: 190
            y: 228
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("3.44")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: currentFundphaseA
            x: 109
            y: 228
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("4.71")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: currentFundphaseC
            x: 271
            y: 228
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("10")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleVoltagePhaseA
            x: 107
            y: 138
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
            id: angleVoltagePhaseAAngle
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            anchors.left: angleVoltagePhaseA.right
            anchors.top: angleVoltagePhaseA.top
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.topMargin: 0
            anchors.leftMargin: 5
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleVoltagePhaseB
            x: 188
            y: 138
            height: 40/2
            color: "#284863"
            text: qsTr("120.11")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleVoltagePhaseBAngle
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            anchors.left: angleVoltagePhaseB.right
            anchors.top: angleVoltagePhaseB.top
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.topMargin: 0
            anchors.leftMargin: 5
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:angleCurrentPhaseB
            x: 190
            y: 273
            height: 40/2
            color: "#284863"
            text: qsTr("120.24")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id:angleCurrentPhaseC
            x: 270
            y: 273
            height: 40/2
            color: "#284863"
            text: qsTr("230.12")
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
            anchors.left: angleCurrentPhaseA.right
            anchors.top: angleCurrentPhaseA.top
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.leftMargin: 5
            anchors.topMargin: 0
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleVoltagePhaseC
            x: 270
            y: 138
            height: 40/2
            color: "#284863"
            text: qsTr("240.34")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleCurrentPhaseA
            x: 107
            y: 273
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
            id: angleVoltagePhaseCAngle
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            anchors.left: angleVoltagePhaseC.right
            anchors.top: angleVoltagePhaseC.top
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            anchors.topMargin: 0
            anchors.leftMargin: 5
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Image {
            id: capacitive
            x: 112
            y: 350
            width: 61/2
            source: "images/capacitive.png"
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            id: rectangle23
            x: 19
            y: 292
            width: 300
            height: 1
            color: "#284863"
        }

        Image {
            id: capacitive1
            x: 197
            y: 351
            width: 61/2
            source: "images/capacitive.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: capacitive2
            x: 282
            y: 351
            width: 61/2
            source: "images/capacitive.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: voltageRMSphaseA
            x: 109
            y: 46
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("311")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: voltageRMSphaseB
            x: 190
            y: 46
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
            id: voltageRMSphaseC
            x: 271
            y: 46
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
            id: currentRMSphaseA
            x: 107
            y: 182
            width: 175/2
            height: 40/2
            color: "#284863"
            text: qsTr("311")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: currentRMSphaseB
            x: 188
            y: 182
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
            id: currentRMSphaseC
            x: 269
            y: 182
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
            id: angleCurrentPhaseC1
            x: 270
            y: 314
            height: 40/2
            color: "#284863"
            text: qsTr("230.12")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleCurrentPhaseCAngle1
            x: -2
            y: -2
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            anchors.left: angleCurrentPhaseC.right
            anchors.top: angleCurrentPhaseC1.top
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
            anchors.leftMargin: 7
            anchors.topMargin: 0
        }

        Text {
            id: angleCurrentPhaseAAngle1
            x: -2
            y: -2
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            anchors.left: angleCurrentPhaseA.right
            anchors.top: angleCurrentPhaseA1.top
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
            anchors.leftMargin: 7
            anchors.topMargin: 0
        }

        Text {
            id: angleCurrentPhaseA1
            x: 107
            y: 314
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
            id: angleCurrentPhaseB1
            x: 190
            y: 314
            height: 40/2
            color: "#284863"
            text: qsTr("120.24")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: angleCurrentPhaseBAngle1
            x: 0
            y: 41
            width: 20
            height: 40/2
            color: "#284863"
            text: qsTr("°")
            anchors.left: angleCurrentPhaseB.right
            anchors.top: angleCurrentPhaseB1.top
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
            anchors.leftMargin: 6
            anchors.topMargin: 0
        }

        Text {
            id: percentageVoltage
            x: 151
            y: 451
            height: 40/2
            color: "#284863"
            text: qsTr("% 4.19")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Image {
            id: group97293
            x: 5
            y: 586
            width: 50/2
            source: "images/Group 9729.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: percentageVoltage1
            x: 152
            y: 495
            height: 40/2
            color: "#284863"
            text: qsTr("% 2.55")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignVCenter
            lineHeight: 3.9
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }


        Text {
            id: percentageVoltage2
            x: 10
            y: 582
            width: 324
            height: 72
            color: "#284863"
            text: qsTr("          When the average voltage is at 215,47 Volt, and the voltage unbalance is at 4.19%, the motor heats up by 32.5%.")
            font.letterSpacing: -2
            font.pixelSize: 15
            verticalAlignment: Text.AlignVCenter
            lineHeight: 1
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Rectangle {
            x: 0
            y: 534
            width: 680/2
            height: 99/2
            color: "#617284"
            Text {
                x: 13
                y: 7
                width: 200/2
                height: 35
                color: "#ffffff"
                text: qsTr("Analyses")
                font.letterSpacing: -2
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                lineHeight: 2.5
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
        }

        Text {
            id: percentageVoltage3
            x: 7
            y: 646
            width: 327
            height: 82
            color: "#284863"
            text: qsTr("          Therefore, voltage umbalance is an undesirable condition, and if there is an imbalance in voltage, the motor can heat up significantly, potentially leading to damage.")
            font.letterSpacing: -2
            font.pixelSize: 15
            verticalAlignment: Text.AlignVCenter
            lineHeight: 1
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }
    }



}



