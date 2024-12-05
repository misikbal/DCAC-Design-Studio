import QtQuick 2.15
import QtQuick.VirtualKeyboard 2.15
import QtQuick.Controls 2.15
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
        valuecheck.checkBoxOn.visible=true
        valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
        valuecheck.mouseAreaForCurrent.enabled=false
        phasecheck.checkBoxOn.visible=true
        phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
        phasecheck.mouseAreaForCurrent.enabled=false
        percentagecheck.checkBoxOn.visible=true
        percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
        percentagecheck.mouseAreaForCurrent.enabled=false
        limitscheck.checkBoxOn.visible=true
        limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
        limitscheck.mouseAreaForCurrent.enabled=false
    }



    Image {
        id: holdBG
        x: 357
        y: 654
        width: 1095/2
        source: "images/HoldBG.svg"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: othersText6
        x: 595
        y: 654
        width: 72
        height: 49
        color: "#ffffff"
        text: qsTr("HOLD")
        font.letterSpacing: 0
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "SemiBold"
        font.family: "Akshar"
    }







    SwipeView {
        id: swipeView
        width: 543
        anchors.top: parent.top
        anchors.bottom: radioBar.bottom
        anchors.bottomMargin: 0
        clip: true
        anchors.rightMargin: 290
        anchors.leftMargin: 3
        anchors.topMargin: -70
        anchors.left: parent.left
        anchors.right: parent.right
        currentIndex: 0

        //        background: Rectangle {
        //            color: "red"
        //        }
        Rectangle {
            id: rectangle10
            x: 0
            y: 0
            width: 550
            height: 299
            color: "#F7F8FA"

            Rectangle {
                id: rectangle8
                x: -2
                y: 90
                width: 907
                height: 300
                color: "#ffffff"
            }


            Flickable {
                id:flickableHarmonic
                x: 70
                y: 90
                width: 510  // ScrollView genişliği
                height: 300
                clip: true
                contentWidth: countOfBars.count*50  // ScrollView yüksekliği

                //        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOn

            }




            ChartView {
                id:chartviewHarmonics
                x: 0
                y: 90
                //                width: countOfBars.count*50  // ChartView genişliği. Bu değeri değiştirerek grafiğin genel genişliğini ayarlayabilirsiniz.
                width: 975
                height: 300
                anchors.left: parent.left
                anchors.leftMargin: -40
                legend.alignment: Qt.AlignBottom
                antialiasing: true
                legend.visible: false



                BarSeries {
                    id: mySeries
                    barWidth: 0.8

                    Component.onCompleted: {
                        for (var i = 0; i < 50; i++) {
                            countOfBars.categories[i] = i
                        }
                    }
                    axisX: BarCategoryAxis {
                        id: countOfBars
                        min:"1"
                        max: "50"
                        labelsAngle: 0
                        labelsFont.pixelSize: 11
                        categories: ["1", "2", "3", "2010", "2011", "2012", "2013"]
                    }
                    axisY: ValueAxis {
                        id: barSeriesTickCount
                        //                        labelsFont.pixelSize: 10  // Font boyutunu küçülttük
                        //                        tickCount: barSeriesTickCount.tickCount
                        labelsVisible: true
                        min: 0
                        max: 100
                    }
                    BarSet {
                        id:myFirstBarSet
                        color: "#3686fd"
                        values: [22, 88, 3, 4, 5, 6, 1]
                        onClicked: console.debug("Kerem clicked!" + index + " " + this.at(index))
                    }
                    BarSet {
                        id:mySecondBarSet
                        color: "#99b2c6"
                        values: [5, 55, 2, 4, 1, 7, 2]
                        onClicked: console.debug("Kerem2 clicked!" + index + " " + this.at(index))
                    }
                    Timer {

                        interval: 1000  // 1 saniye
                        running: true
                        repeat: true
                        onTriggered: {
                            if (myFirstBarSet.values[0] < 100) {
                                var updatedValues = myFirstBarSet.values.slice(0);
                                var updatedValues2 = mySecondBarSet.values.slice(0);// Mevcut değerleri bir değişkene kopyala
                                updatedValues[1] += 1;  // İlk değeri artır
                                updatedValues2[2] += 1;
                                myFirstBarSet.values = updatedValues;  // Değerleri geri ata
                                mySecondBarSet.values = updatedValues2;
                            } else {
                                this.running = false;  // 100 değerine ulaştığında timer'ı durdur.
                            }
                        }
                    }
                }
            }



            ChartView {
                id: yAxisChart
                x: 421
                y: 91
                width: 180  // Genişliği artırıldı
                height: flickableHarmonic.height-1
                visible: false
                anchors.left: parent.left
                anchors.leftMargin: -29

                ValueAxis {
                    id: yAxis
                    labelsFont.pixelSize: 12  // Font boyutunu küçülttük
                    min: barSeriesTickCount.min
                    max: barSeriesTickCount.max
                    tickCount: barSeriesTickCount.tickCount
                    labelsVisible: true
                }

                BarSeries {
                    axisY: yAxis
                    visible: false
                }

                backgroundColor: "transparent"
                legend.visible: false
                antialiasing: false
            }
        }



        Rectangle {
            id: rectangleForPieChart
            x: 0
            y: 0
            width: 720
            height: 720
            opacity: 1
            color: "#002ce78f"

            ChartView {
                id: chartView
                x:115
                y:0
                //                anchors.fill: parent
                width: 720
                height: 720

                antialiasing: true
                legend.visible: false
                backgroundColor: "#F7F8FA"

                PieSeries {

                    id: donutSeries
                    holeSize: 0.36  // Donut deliği boyutu

                    PieSlice {
                        label: "Slice 1";
                        value: 10.0
                        color:rectangle1.color
                    }
                    PieSlice {
                        label: "Slice 2";
                        value: 20
                        color:rectangle2.color

                    }
                    PieSlice {
                        label: "Slice 3"
                        value: 30.0
                        color:rectangle3.color
                    }
                    PieSlice {
                        label: "Slice 4"
                        value: 15.0
                        color:rectangle4.color
                    }
                    PieSlice {
                        label: "Slice 5"
                        value: 25.0
                        color:rectangle5.color
                    }
                    PieSlice {
                        label: "Slice 6"
                        value: 12.5
                        color:rectangle6.color
                    }

                    function resetExploded() {
                        for (var i = 0; i < count; i++) {
                            var slice = at(i);
                            slice.exploded = false;
                        }
                    }

                    function handleClick(slice) {
                        if (slice.exploded) {
                            slice.exploded = false;
                            rectangler.visible = false;
                        } else {
                            resetExploded();
                            slice.exploded = true;
                            rectangler.visible = true;

                        }
                    }

                    Component.onCompleted: {
                        for (var i = 0; i < count; i++) {
                            (function(index) {
                                var slice = at(index);
                                slice.explodeDistanceFactor = 0.15;
                                slice.clicked.connect(function()
                                {
                                    handleClick(slice);

                                }
                                )
                            }
                            )
                                    (i);


                        }
                    }
                }
            }


            Image {
                id: harmonicVector
                x: 380
                y: 265
                width: 379/2
                height: 379/2
                source: "images/HarmonicVector.svg"
                rotation: 360
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: harmonicTHD
                x: 437
                y: 342
                width: 150/2
                source: "images/HarmonicTHD.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: harmonicEllipse217
                x: 395
                y: 280
                width: 320/2
                source: "images/HarmonicEllipse 217.svg"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: cursorHeadersBGForVoltageText4
                x: 414
                y: 301
                width: 121
                height: 47
                color: "#284863"
                text: qsTr("Voltage")
                font.letterSpacing: -2
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                id: cursorHeadersBGForVoltageText5
                x: 414
                y: 377
                width: 121
                height: 47
                color: "#284863"
                text: qsTr("%72,6")
                font.letterSpacing: -2
                font.pixelSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Image {
                id: harmonicVector1
                x: 333
                y: 218
                width: 568/2
                height:  568/2
                source: "images/HarmonicVector-1.svg"
                rotation: -180
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: othersText
                x: 28
                y: 650
                width: 72
                height: 47
                color: "#284863"
                text: qsTr("Others")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id: rectangle1
                x: 10
                y: 658
                width: 15
                height: 30
                color: "#6249FC"
                radius: 7.5
            }

            Rectangle {
                id: rectangle2
                x: 100
                y: 658
                width: 15
                height: 30
                color: "#4ec040"
                radius: 7.5
            }

            Rectangle {
                id: rectangle3
                x: 165
                y: 658
                width: 15
                height: 30
                color: "#217efd"
                radius: 7.5
            }

            Rectangle {
                id: rectangle4
                x: 230
                y: 658
                width: 15
                height: 30
                color: "#737373"
                radius: 7.5
            }

            Rectangle {
                id: rectangle5
                x: 295
                y: 658
                width: 15
                height: 30
                color: "#ffce20"
                radius: 7.5
            }

            Rectangle {
                id: rectangle6
                x: 360
                y: 658
                width: 15
                height: 30
                color: "#515151"
                radius: 7.5
            }

            Text {
                id: othersText1
                x: 118
                y: 650
                width: 47
                height: 47
                color: "#284863"
                text: qsTr("H1")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                id: othersText2
                x: 183
                y: 650
                width: 47
                height: 47
                color: "#284863"
                text: qsTr("H2")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                id: othersText3
                x: 248
                y: 650
                width: 47
                height: 47
                color: "#284863"
                text: qsTr("H3")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                id: othersText4
                x: 313
                y: 650
                width: 47
                height: 47
                color: "#284863"
                text: qsTr("H4")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                id: othersText5
                x: 378
                y: 650
                width: 47
                height: 47
                color: "#284863"
                text: qsTr("H5")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }


        }

    }



    Image {
        id: menu
        x: -348
        y: 0
        width: 696/2
        source: "images/Menu.svg"
        fillMode: Image.PreserveAspectFit

        Image {
            id: bgForHeader
            x: 4
            y: 8
            width: 338
            height: 0
            visible: true
            source: "images/BGForHeader.svg"
            fillMode: Image.Stretch



            ParallelAnimation{
                id: clickedVoltageGraph1
                PropertyAnimation {
                    target: chosingHeaderGraph1
                    property: "x"
                    duration: 200
                    to: voltageHeader.x
                }
                PropertyAnimation {
                    target: chosingHeaderGraph1
                    property: "width"
                    duration: 200
                    to: voltageHeader.width
                }
                PropertyAnimation {
                    target: voltageHeader
                    property: "color"
                    duration: 200
                    to: "#284863"
                }

            }

            ParallelAnimation{
                id: clickedCurrentGraph1
                PropertyAnimation {
                    target: chosingHeaderGraph1
                    property: "x"
                    duration: 200
                    to: currentHeader.x
                }
                PropertyAnimation {
                    target: chosingHeaderGraph1
                    property: "width"
                    duration: 200
                    to: currentHeader.width
                }
                PropertyAnimation {
                    target: currentHeader
                    property: "color"
                    duration: 200
                    to: "#284863"
                }
            }

            ParallelAnimation{
                id: clickedActivePowerGraph1

                PropertyAnimation {
                    target: chosingHeaderGraph1
                    property: "x"
                    duration: 200
                    to: activepowerHeader.x
                }

                PropertyAnimation {
                    target: chosingHeaderGraph1
                    property: "width"
                    duration: 200
                    to: activepowerHeader.width
                }
                PropertyAnimation {
                    target: activepowerHeader
                    property: "color"
                    duration: 200
                    to: "#284863"
                }
            }

            ParallelAnimation{
                id: clickedReactivePowerGraph1
                PropertyAnimation {
                    target: chosingHeaderGraph1
                    property: "x"
                    duration: 200
                    to: reactivepowerHeader.x
                }

                PropertyAnimation {
                    target: chosingHeaderGraph1
                    property: "width"
                    duration: 200
                    to: reactivepowerHeader.width
                }
                PropertyAnimation {
                    target: reactivepowerHeader
                    property: "color"
                    duration: 200
                    to: "#284863"
                }
            }




            MouseArea {
                id: mouseAreaGraph1
                x: 1
                y: 1
                width: 79
                height: 53
                onClicked: {
                    currentHeader.color="#A7AEB6"
                    activepowerHeader.color="#A7AEB6"
                    reactivepowerHeader.color="#A7AEB6"
                    clickedVoltageGraph1.start()
                }

            }

            MouseArea {
                id: mouseAreaGraph2
                x: 80
                y: 1
                width: 80
                height: 53
                onClicked: {
                    voltageHeader.color="#A7AEB6"
                    activepowerHeader.color="#A7AEB6"
                    reactivepowerHeader.color="#A7AEB6"
                    clickedCurrentGraph1.start()
                }
            }

            MouseArea {
                id: mouseAreaGraph3
                x: 160
                y: 1
                width: 80
                height: 53
                onClicked: {
                    voltageHeader.color="#A7AEB6"
                    currentHeader.color="#A7AEB6"
                    reactivepowerHeader.color="#A7AEB6"
                    clickedActivePowerGraph1.start()
                }
            }

            MouseArea {
                id: mouseAreaGraph4
                x: 240
                y: 1
                width: 97
                height: 53
                onClicked: {
                    voltageHeader.color="#A7AEB6"
                    currentHeader.color="#A7AEB6"
                    activepowerHeader.color="#A7AEB6"
                    clickedReactivePowerGraph1.start()
                }
            }






            ParallelAnimation{
                id: clickedAGraph1
                PropertyAnimation {
                    property: "x"
                    duration: 200
                    to: a.x
                }
                PropertyAnimation {
                    property: "width"
                    duration: 200
                    to: a.width
                }
            }

            ParallelAnimation{
                id: clickedBGraph1
                PropertyAnimation {
                    property: "x"
                    duration: 200
                    to: b.x
                }
                PropertyAnimation {
                    property: "width"
                    duration: 200
                    to: b.width
                }
            }




            Rectangle {
                id: rectangle9
                x: 1
                y: 47
                width: 336
                height: 335
                color: "#ffffff"
                border.color: "#adb1b4"
            }

            Item {
                id:chosingHeaderGraph1
                height: 53

                x:voltageHeader.x
                y:-5
                width: 79
                clip: true
                Rectangle {
                    anchors.fill: parent
                    anchors.rightMargin: 0
                    anchors.topMargin:  6
                    anchors.bottomMargin: -border.width
                    border.width: 1
                    border.color:"#adb1b4"
                }
            }



            Text {
                id: voltageHeader
                x: 1
                y: 4
                width: 79
                height: 50
                color: "#284863"
                text: qsTr("Voltage")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }


            Text {
                id: currentHeader
                x: 80
                y: 4
                width: 80
                height: 50
                color: "#a7aeb6"
                text: qsTr("Current")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }


            Text {
                id: activepowerHeader
                x: 160
                y: 4
                width: 80
                height: 50
                color: "#a7aeb6"
                text: qsTr("Active P.")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }


            Text {
                id: reactivepowerHeader
                x: 240
                y: 4
                width: 97
                height: 50
                color: "#a7aeb6"
                text: qsTr("Reactive P.")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }





        }

        CustomSwitchForPhaseA{
            id:customswitchA
            x: 10
            y:254
            Text {
                id: a
                x: 0
                y: 0
                width: 80
                height: 35
                color: "#ff5555"
                text: qsTr("A")
                font.pixelSize: 20
                verticalAlignment: Text.AlignVCenter
            }
            onClickedSignal: {

                one.visible=true
                two.visible=true
                three.visible=true
                four.visible=true
                a.color="#ff5555"

                if(customswitchB.rectangle1.x===48 && customswitchC.rectangle1.x===48 && customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=-118

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    one.visible=true
                    two.visible=true
                    three.visible=true
                    four.visible=true
                }
                else if( customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 && customswitchN.rectangle1.x===24){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#FF5555"
                    customHeaderForPhaseN.rect1.color="#FF5555"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase A"
                    phaseAHarmonicHeader4.text="Phase A"
                }

                else if(customswitchB.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#FCAE18"
                    customHeaderForPhaseN.rect1.color="#FCAE18"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"
                }
                else if(customswitchC.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }
                else if(customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }
            }
            onNonclickedSignal: {
                //                one.visible=false
                a.color="#617284"


                if(customswitchA.rectangle1.x===24 && customswitchB.rectangle1.x===48 && customswitchC.rectangle1.x===24 && customswitchN.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#FCAE18"
                    customHeaderForPhaseN.rect1.color="#FCAE18"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"
                }

                else if(customswitchA.rectangle1.x===24 && customswitchB.rectangle1.x===24  && customswitchC.rectangle1.x===48 && customswitchN.rectangle1.x===24){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#217EFD"
                    customHeaderForPhaseB.rect1.color="#217EFD"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }
                else if(customswitchA.rectangle1.x===24 && customswitchB.rectangle1.x===24  && customswitchC.rectangle1.x===24 && customswitchN.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#4EC040"
                    customHeaderForPhaseB.rect1.color="#4EC040"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase N"
                    phaseAHarmonicHeader2.text="Phase N"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }


                else if(customswitchB.rectangle1.x===48 && customswitchC.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }
                else if(customswitchB.rectangle1.x===48 && customswitchN.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }
                else if(customswitchC.rectangle1.x===48 && customswitchN.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#217EFD"
                    customHeaderForPhaseB.rect1.color="#217EFD"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }
                else if(customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24  && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#617284"
                    customHeaderForPhaseB.rect1.color="#617284"
                    customHeaderForPhaseC.rect1.color="#617284"
                    customHeaderForPhaseN.rect1.color="#617284"
                    one.visible=false
                    two.visible=false
                    three.visible=false
                    four.visible=false

                    valuecheck.checkBoxOn.visible=false
                    valuecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    percentagecheck.checkBoxOn.visible=false
                    percentagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text=" "
                    text2.text=" "
                    text3.text=" "
                    text4.text=" "

                    phaseAHarmonicHeader1.text=" "
                    phaseAHarmonicHeader2.text=" "
                    phaseAHarmonicHeader3.text=" "
                    phaseAHarmonicHeader4.text=" "
                }

            }


        }

        CustomSwitchForPhaseB {
            id:customswitchB
            x: 95
            y: 254

            Text {
                id: b
                x: 0
                y: 0
                width: 80
                height: 35
                color: "#617284"
                text: qsTr("B")
                font.pixelSize: 20
                verticalAlignment: Text.AlignVCenter
            }
            onClickedSignal: {

                one.visible=true
                two.visible=true
                three.visible=true
                four.visible=true

                b.color="#FCAE18"

                if(customswitchA.rectangle1.x===48 && customswitchC.rectangle1.x===48 && customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=-118

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    one.visible=true
                    two.visible=true
                    three.visible=true
                    four.visible=true
                }
                else if(customswitchA.rectangle1.x===24  && customswitchC.rectangle1.x===24 && customswitchN.rectangle1.x===24){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#FCAE18"
                    customHeaderForPhaseN.rect1.color="#FCAE18"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"
                }

                else if(customswitchA.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#FCAE18"
                    customHeaderForPhaseN.rect1.color="#FCAE18"

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"
                }
                else if(customswitchC.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }
                else if(customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                }



            }
            onNonclickedSignal: {
                //                two.visible=false
                b.color="#617284"

                if(customswitchA.rectangle1.x===48 && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 && customswitchN.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#FF5555"
                    customHeaderForPhaseN.rect1.color="#FF5555"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase A"
                    phaseAHarmonicHeader4.text="Phase A"
                }

                else if(customswitchA.rectangle1.x===24 && customswitchB.rectangle1.x===24  && customswitchC.rectangle1.x===48 && customswitchN.rectangle1.x===24){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#217EFD"
                    customHeaderForPhaseB.rect1.color="#217EFD"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }
                else if(customswitchA.rectangle1.x===24 && customswitchB.rectangle1.x===24  && customswitchC.rectangle1.x===24 && customswitchN.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#4EC040"
                    customHeaderForPhaseB.rect1.color="#4EC040"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase N"
                    phaseAHarmonicHeader2.text="Phase N"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }



                else if(customswitchA.rectangle1.x===48 && customswitchC.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }
                else if(customswitchA.rectangle1.x===48 && customswitchN.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }
                else if(customswitchC.rectangle1.x===48 && customswitchN.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#217EFD"
                    customHeaderForPhaseB.rect1.color="#217EFD"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }
                else if(customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24  && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#617284"
                    customHeaderForPhaseB.rect1.color="#617284"
                    customHeaderForPhaseC.rect1.color="#617284"
                    customHeaderForPhaseN.rect1.color="#617284"
                    one.visible=false
                    two.visible=false
                    three.visible=false
                    four.visible=false

                    valuecheck.checkBoxOn.visible=false
                    valuecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    percentagecheck.checkBoxOn.visible=false
                    percentagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text=" "
                    text2.text=" "
                    text3.text=" "
                    text4.text=" "

                    phaseAHarmonicHeader1.text=" "
                    phaseAHarmonicHeader2.text=" "
                    phaseAHarmonicHeader3.text=" "
                    phaseAHarmonicHeader4.text=" "
                }

            }
        }

        CustomSwitchForPhaseC {
            id:customswitchC
            x: 180
            y: 254
            Text {
                id: c
                x: 0
                y: 0
                width: 80
                height: 35
                color: "#617284"
                text: qsTr("C")
                font.pixelSize: 20
                verticalAlignment: Text.AlignVCenter
            }
            onClickedSignal: {
                one.visible=true
                two.visible=true
                three.visible=true
                four.visible=true
                c.color="#217EFD"

                if(customswitchA.rectangle1.x===48 && customswitchB.rectangle1.x===48 && customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=-118

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    one.visible=true
                    two.visible=true
                    three.visible=true
                    four.visible=true


                }
                else if(customswitchA.rectangle1.x===24  && customswitchB.rectangle1.x===24 && customswitchN.rectangle1.x===24){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#217EFD"
                    customHeaderForPhaseB.rect1.color="#217EFD"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }


                else if(customswitchA.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }
                else if(customswitchB.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }
                else if(customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    customHeaderForPhaseA.rect1.color="#217EFD"
                    customHeaderForPhaseB.rect1.color="#217EFD"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }
            }
            onNonclickedSignal: {
                //                three.visible=false
                c.color="#617284"
                if(customswitchA.rectangle1.x===48 && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 && customswitchN.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#FF5555"
                    customHeaderForPhaseN.rect1.color="#FF5555"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase A"
                    phaseAHarmonicHeader4.text="Phase A"
                }

                else if(customswitchA.rectangle1.x===24 && customswitchB.rectangle1.x===48  && customswitchC.rectangle1.x===24 && customswitchN.rectangle1.x===24){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#FCAE18"
                    customHeaderForPhaseN.rect1.color="#FCAE18"


                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"
                }
                else if(customswitchA.rectangle1.x===24 && customswitchB.rectangle1.x===24  && customswitchC.rectangle1.x===24 && customswitchN.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#4EC040"
                    customHeaderForPhaseB.rect1.color="#4EC040"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase N"
                    phaseAHarmonicHeader2.text="Phase N"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }



                else if(customswitchA.rectangle1.x===48 && customswitchB.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#FCAE18"
                    customHeaderForPhaseN.rect1.color="#FCAE18"

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"
                }
                else if(customswitchA.rectangle1.x===48 && customswitchN.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }
                else if(customswitchB.rectangle1.x===48 && customswitchN.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }
                else if(customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24  && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#617284"
                    customHeaderForPhaseB.rect1.color="#617284"
                    customHeaderForPhaseC.rect1.color="#617284"
                    customHeaderForPhaseN.rect1.color="#617284"
                    one.visible=false
                    two.visible=false
                    three.visible=false
                    four.visible=false

                    valuecheck.checkBoxOn.visible=false
                    valuecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    percentagecheck.checkBoxOn.visible=false
                    percentagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text=" "
                    text2.text=" "
                    text3.text=" "
                    text4.text=" "

                    phaseAHarmonicHeader1.text=" "
                    phaseAHarmonicHeader2.text=" "
                    phaseAHarmonicHeader3.text=" "
                    phaseAHarmonicHeader4.text=" "
                }
            }
        }

        CustomSwitchForPhaseN {
            id:customswitchN
            x: 265
            y: 254

            Text {
                id: n
                x: 0
                y: 0
                width: 80
                height: 35
                color: "#617284"
                text: qsTr("N")
                font.pixelSize: 20
                verticalAlignment: Text.AlignVCenter
            }
            onClickedSignal: {
                one.visible=true
                two.visible=true
                three.visible=true
                four.visible=true
                n.color="#4EC040"

                if(customswitchA.rectangle1.x===48 && customswitchB.rectangle1.x===48 && customswitchC.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=-118
                    one.visible=true
                    two.visible=true
                    three.visible=true
                    four.visible=true

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"


                }
                else if(customswitchA.rectangle1.x===24  && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#4EC040"
                    customHeaderForPhaseB.rect1.color="#4EC040"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase N"
                    phaseAHarmonicHeader2.text="Phase N"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }

                else if(customswitchA.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }
                else if(customswitchB.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }
                else if(customswitchC.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rec

                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    customHeaderForPhaseA.rect1.color="#217EFD"
                    customHeaderForPhaseB.rect1.color="#217EFD"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"
                }
            }
            onNonclickedSignal: {
                //                four.visible=false
                n.color="#617284"

                if(customswitchA.rectangle1.x===48 && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 && customswitchN.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#FF5555"
                    customHeaderForPhaseN.rect1.color="#FF5555"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase A"
                    phaseAHarmonicHeader4.text="Phase A"
                }

                else if(customswitchA.rectangle1.x===24 && customswitchB.rectangle1.x===48  && customswitchC.rectangle1.x===24 && customswitchN.rectangle1.x===24){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#FCAE18"
                    customHeaderForPhaseN.rect1.color="#FCAE18"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"
                }
                else if(customswitchA.rectangle1.x===24 && customswitchB.rectangle1.x===24  && customswitchC.rectangle1.x===48 && customswitchN.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#217EFD"
                    customHeaderForPhaseB.rect1.color="#217EFD"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    limitscheck.checkBoxOn.visible=true
                    limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }
                else if(customswitchA.rectangle1.x===48 && customswitchB.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#FCAE18"
                    customHeaderForPhaseN.rect1.color="#FCAE18"


                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"
                }
                else if(customswitchA.rectangle1.x===48 && customswitchC.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"


                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }
                else if(customswitchB.rectangle1.x===48 && customswitchC.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"


                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"
                }
                else if(customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24  && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#617284"
                    customHeaderForPhaseB.rect1.color="#617284"
                    customHeaderForPhaseC.rect1.color="#617284"
                    customHeaderForPhaseN.rect1.color="#617284"
                    one.visible=false
                    two.visible=false
                    three.visible=false
                    four.visible=false

                    valuecheck.checkBoxOn.visible=false
                    valuecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    limitscheck.checkBoxOn.visible=false
                    limitscheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    percentagecheck.checkBoxOn.visible=false
                    percentagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text=" "
                    text2.text=" "
                    text3.text=" "
                    text4.text=" "

                    phaseAHarmonicHeader1.text=" "
                    phaseAHarmonicHeader2.text=" "
                    phaseAHarmonicHeader3.text=" "
                    phaseAHarmonicHeader4.text=" "
                }
            }
        }

        Image {
            id: bGHeader
            x: 7
            y: 55
            width: 646/2
            height: 0
            source: "images/BGHeader.svg"
            fillMode: Image.Stretch

            CustomCheckBox {
                id: customcheckbox0
                x: 9
                y: 10
                width: 130
                height: 35
                clip: true



                Text {
                    id: harmonic
                    x: 30
                    y: 7
                    width: 100
                    height: 22
                    color: "#284863"
                    text: qsTr("Harmonic")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                }
                onClickedSignal: {
                    harmonic.color="#217EFD"

//                    for (var i = 0; i <= 100; i += 2) {
//                        setItemVisibility1(i, true);
//                        //                    setItemVisibility1(i, true);
//                        //                    setItemVisibility2(i, true);
//                        //                    setItemVisibility3(i, true);
//                        //                    setItemVisibility4(i, true);

//                    }
                    if (customcheckbox2.checked) { // Eğer interharmonic tıklıysa, hem çift hem tek indekslileri ekler.
                        for (var x = 0; x < listmodell.count; x++) {
                            if (x % 2 !== 0 || x % 2 == 0) {
                                listmodellForFilter.append(listmodell.get(x));
                                setItemVisibility1(x, true);
                            }
                        }
                    } else { // Sadece çift indekslileri ekler
                        for (var s = 0; s < listmodell.count; s++) {
                            if (s % 2 == 0) {
                                listmodellForFilter.append(listmodell.get(s));
                                setItemVisibility1(s, true);
                            }
                        }
                    }


                    flickable.contentHeight=flickable.contentHeight+2500
                }
                onNonclickedSignal: {
                    harmonic.color = "#284863";


//                    for (var i = 0; i <= 100; i += 2) {
//                        setItemVisibility1(i, false);
//                        //                    setItemVisibility1(i, false);
//                        //                    setItemVisibility2(i, false);
//                        //                    setItemVisibility3(i, false);
//                        //                    setItemVisibility4(i, false);
//                    }

                    if (customcheckbox2.checked) { // Eğer interharmonic tıklıysa, sadece tek indekslileri ekler.
                        for (var x = 0; x < listmodell.count; x++) {
                            if (x % 2 !== 0) {
                                listmodellForFilter.append(listmodell.get(x));
                                setItemVisibility1(x, true);
                            }
                            else if(x % 2 == 0){
                                listmodellForFilter.remove(listmodell.get(x));
                                setItemVisibility1(x, false);
                            }
                        }
                    }
                    flickable.contentHeight = flickable.contentHeight - 2500;




                }
            }

            CustomCheckBox {
                id: customcheckbox1
                x: 9
                y: 45
                width: 130
                height: 35
                clip: true
                Text {
                    id: dc
                    x: 30
                    y: 7
                    width: 100
                    height: 22
                    color: "#284863"
                    text: qsTr("DC")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                }
                onClickedSignal: {
                    dc.color="#217EFD"
                    setItemVisibility(0, true);
                    setItemVisibility1(0, true);
                    setItemVisibility2(0, true);
                    setItemVisibility3(0, true);
                    setItemVisibility4(0, true);
                    flickable.contentHeight=flickable.contentHeight+50

                }
                onNonclickedSignal: {
                    dc.color="#284863"
                    setItemVisibility(0, false);
                    setItemVisibility1(0, false);
                    setItemVisibility2(0, false);
                    setItemVisibility3(0, false);
                    setItemVisibility4(0, false);
                    flickable.contentHeight=flickable.contentHeight-50
                }
            }

            CustomCheckBox {
                id: customcheckbox2
                x: 145
                y: 9
                width: 180
                height: 35
                clip: true
                Text {
                    id: interharmonic
                    x: 30
                    y: 7
                    width: 142
                    height: 22
                    color: "#284863"
                    text: qsTr("Inter Harmonic")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                }
                onClickedSignal: {
                    //                text1.text="120"
                    interharmonic.color="#217EFD"
//                    for (var i = 1; i <= 99; i += 2) {
//                        setItemVisibility1(i, true);

//                    }

                    if (customcheckbox0.checked) { // Cihan hocam eğer harmonic tıklıysa, hem çift hem tek indekslileri ekler.
                        for (var x = 0; x < listmodell.count; x++) {
                            if (x % 2 !== 0 || x % 2 == 0) {
                                listmodellForFilter.append(listmodell.get(x));
                                setItemVisibility1(x, true);
                            }
                        }
                    }
                    else { // Cihan hocam bu kısım sadece tek indekslileri ekler
                        for (var s = 0; s < listmodell.count; s++) {
                            if (s % 2 !== 0) {
                                listmodellForFilter.append(listmodell.get(s));
                                setItemVisibility1(s, true);
                            }
                        }
                    }
                    flickable.contentHeight=flickable.contentHeight+2500

                }
                onNonclickedSignal: {
                    interharmonic.color="#284863"
//                    for (var i = 1; i <= 99; i += 2) {
//                        setItemVisibility1(i, false);
//                    }

                    listmodellForFilter.clear();
                    if (customcheckbox0.checked) { // Eğer harmonic tıklıysa, sadece çift indekslileri ekler.
                        for (var x = 0; x < listmodell.count; x++) {
                            if (x % 2 == 0) {
                                listmodellForFilter.append(listmodell.get(x));
                                setItemVisibility1(x, false);
                            }
                        }
                    }
                    flickable.contentHeight=flickable.contentHeight-2500
                }
            }

            CustomCheckBox {
                id: customcheckbox3
                x: 145
                y: 45
                width: 180
                height: 35
                clip: true
                Text {
                    id: fundamental
                    x: 30
                    y: 7
                    width: 142
                    height: 22
                    color: "#284863"
                    text: qsTr("Fundamental")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                }
                onClickedSignal: {
                    fundamental.color="#217EFD"
                    setItemVisibility(2, true);
                    setItemVisibility1(2, true);
                    setItemVisibility2(2, true);
                    setItemVisibility3(2, true);
                    setItemVisibility4(2, true);
                    flickable.contentHeight=flickable.contentHeight+50




                }
                onNonclickedSignal: {
                    fundamental.color="#284863"
                    setItemVisibility(2, false);
                    setItemVisibility1(2, false);
                    setItemVisibility2(2, false);
                    setItemVisibility3(2, false);
                    setItemVisibility4(2, false);
                    flickable.contentHeight=flickable.contentHeight-50
                }
            }
        }

        Image {
            id: bGHeader2
            x: -348
            y: 300
            width: 646/2
            height: 172/2
            source: "images/BGHeader.svg"
            fillMode: Image.PreserveAspectFit

            Text {
                id: value
                x: 38
                y: 15
                width: 100
                height: 22
                color: "#284863"
                text: qsTr("Value")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
            }

            RadioButton {
                id: radioButtonValue
                x: 3
                y: 12
                width: 130
                height: 29
                text: qsTr(" ")
                checked: true

                onClicked: {
                    text1.text="Value"
                    text2.text="Value"
                    text3.text="Value"
                    text4.text="Value"
                }
            }

            Image {
                id: radioButtonOFFValue
                x: 11
                y: 14
                z: 1
                width: 48/2
                visible: true
                source: "images/RadioButtonOFF.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: radioButtonONValue
                x: 12
                y: 15
                z:1
                visible: radioButtonValue.checked
                width: 44/2
                source: "images/RadioButtonON.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: percentage
                x: 38
                y: 52
                width: 100
                height: 22
                color: "#284863"
                text: qsTr("Percentage")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
            }

            RadioButton {
                id: radioButtonPhase
                x: 133
                y: 12
                width: 182
                height: 29
                visible: true
                text: qsTr(" ")
                icon.color: "#ffffff"

                onClicked: {
                    text1.text="Phase"
                    text2.text="Phase"
                    text3.text="Phase"
                    text4.text="Phase"
                }
                //            onClicked: {
                //                if(radioButtonPercentage.checked===true)
                //                {
                //                    radioButtonONPercentage.visible=true
                //                }
                //                else{
                //                    radioButtonONPercentage.visible=false
                //                }
                //            }
            }

            Image {
                id: radioButtonOFFPhase
                x: 141
                y: 14
                z: 1
                width: 48/2
                visible: true
                source: "images/RadioButtonOFF.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: radioButtonONPhase
                x: 142
                y: 15
                z:1
                visible: radioButtonPhase.checked
                width: 45/2
                source: "images/RadioButtonON.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: phase
                x: 175
                y: 15
                width: 100
                height: 22
                color: "#284863"
                text: qsTr("Phase")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
            }

            RadioButton {
                id: radioButtonPercentage
                x: 3
                y: 49
                width: 130
                height: 29
                text: qsTr(" ")
                checked: false
                onClicked: {
                    text1.text="Percentage"
                    text2.text="Percentage"
                    text3.text="Percentage"
                    text4.text="Percentage"
                }
            }

            Image {
                x: 11
                y: 51
                width: 48/2
                visible: true
                source: "images/RadioButtonOFF.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
                z: 1
            }

            Image {
                x: 12
                y: 52
                width: 45/2
                visible: radioButtonPercentage.checked
                source: "images/RadioButtonON.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
                z: 1
            }

            Text {
                id: limits
                x: 175
                y: 52
                width: 100
                height: 22
                color: "#284863"
                text: qsTr("Limits")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
            }

            RadioButton {
                id: radioButtonLimits
                x: 133
                y: 49
                width: 182
                height: 29
                text: qsTr(" ")
                checked: false
                onClicked: {
                    text1.text="Limits"
                    text2.text="Limits"
                    text3.text="Limits"
                    text4.text="Limits"
                }
            }

            Image {
                x: 141
                y: 51
                width: 48/2
                visible: true
                source: "images/RadioButtonOFF.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
                z: 1
            }

            Image {
                x: 142
                y: 52
                width: 45/2
                visible: radioButtonLimits.checked
                source: "images/RadioButtonON.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
                z: 1
            }





        }

        CustomChosingForFilter{
            x:12
            y:392
            width: 323
            height: 50
            clip: true
            onClickedSignal: {
                for6PulseText.color="#FFFFFF"
                phase1.color="#284863"
            }
        }
        CustomChosingForFilter{
            x:12
            y:392
            width: 323
            height: 50
            clip: true
            onClickedSignal: {
                for6PulseText.color="#FFFFFF"
                phase1.color="#284863"

                for (var i = 10; i <= 30; i += 4) {
                    setItemVisibility(i, true);
                    setItemVisibility1(i, true);
                    setItemVisibility2(i, true);
                    setItemVisibility3(i, true);
                    setItemVisibility4(i, true);
                    flickable.contentHeight=flickable.contentHeight+50
                }

            }
            onNonclickedSignal: {
                for6PulseText.color="#284863"
                phase1.color="#98A9BA"


                for (var i = 10; i <= 30; i += 4) {
                    setItemVisibility(i, false);
                    setItemVisibility1(i, false);
                    setItemVisibility2(i, false);
                    setItemVisibility3(i, false);
                    setItemVisibility4(i, false);
                    flickable.contentHeight=flickable.contentHeight+50
                }
            }
        }

        CustomChosingForFilter {
            x: 12
            y: 442
            width: 323
            height: 50
            clip: true
            onClickedSignal: {
                for12PulseText.color="#FFFFFF"
                phase2.color="#284863"
            }
            onNonclickedSignal: {
                for12PulseText.color="#284863"
                phase2.color="#98A9BA"
            }
        }

        CustomChosingForFilterOn
        {
            x: 12
            y: 492
            width: 323
            height: 50
            clip: true

            onClickedSignal: {
                for18PulseText.color="#FFFFFF"
                phase3.color="#284863"
            }
            onNonclickedSignal: {
                for18PulseText.color="#284863"
                phase3.color="#98A9BA"
            }
        }

        CustomChosingForFilterOn {
            x: 12
            y: 542
            width: 323
            height: 50
            clip: true
            onClickedSignal: {
                for24PulseText.color="#FFFFFF"
                phase4.color="#284863"
            }
            onNonclickedSignal: {
                for24PulseText.color="#284863"
                phase4.color="#98A9BA"
            }
        }

        Flickable {
            id: flickable1
            x: 167
            y: 394
            width: 168
            height: 47
            layer.enabled: true
            contentWidth: 250
            contentX: 0
            clip: true
            flickDeceleration: 3000
            maximumFlickVelocity: 5000

            Text {
                id: phase1
                x: 0
                y: 13
                width: 160
                height: 22
                color: "#98a9ba"
                text: qsTr("5th 7th 9th 11th 13th 15th")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
        }

        Text {
            id: for6PulseText
            x: 21
            y: 394
            width: 121
            height: 47
            color: "#284863"
            text: qsTr("For 6 Pulse")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: for12PulseText
            x: 21
            y: 444
            width: 121
            height: 47
            color: "#284863"
            text: qsTr("For 12 Pulse")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: for18PulseText
            x: 21
            y: 494
            width: 121
            height: 47
            color: "#ffffff"
            text: qsTr("For 18 Pulse")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: for24PulseText
            x: 26
            y: 544
            width: 121
            height: 47
            color: "#ffffff"
            text: qsTr("For 24 Pulse")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        ParallelAnimation {
            id: harmonicCirclesAnimations
            NumberAnimation {
                target: harmonicVector1
                property: "rotation"
                duration: animationDurationForHarmoncis
                loops:-1
                from:0
                to:360
            }

            NumberAnimation {
                target: harmonicVector
                property: "rotation"
                duration: animationDurationForHarmoncis
                loops:-1
                from:360
                to:0
            }
        }





        Flickable {
            id: flickable5
            x: 15
            y: 657
            width: 322
            height: 56
            layer.enabled: true
            contentWidth: 470
            contentX: 0
            clip: true
            flickDeceleration: 3000
            maximumFlickVelocity: 5000






            Image {
                id: forFilterHarmonic
                x: 0
                y: 9
                width: 150/2
                source: "images/ForFilterHarmonic.svg"
                fillMode: Image.PreserveAspectFit
            }


            Image {
                id: forFilterHarmonic1
                x: 88
                y: 9
                width: 150/2
                source: "images/ForFilterHarmonic.svg"
                fillMode: Image.PreserveAspectFit
            }


            Image {
                id: forFilterHarmonic2
                x: 173
                y: 9
                width: 150/2
                source: "images/ForFilterHarmonic.svg"
                fillMode: Image.PreserveAspectFit
            }


            Image {
                id: forFilterHarmonic3
                x: 258
                y: 9
                width: 150/2
                source: "images/ForFilterHarmonic.svg"
                fillMode: Image.PreserveAspectFit

            }


            Image {
                id: forFilterHarmonic4
                x: 343
                y: 10
                width: 150/2
                source: "images/ForFilterHarmonic.svg"
                fillMode: Image.PreserveAspectFit
            }


            Text {
                id:filtertext
                x: 0
                y: 9
                width: 75
                height: 38
                color: "#284863"
                text: qsTr("5th")
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
            Text {
                id:filtertext4
                x: 343
                y: 10
                width: 75
                height: 38
                color: "#284863"
                text: qsTr("23th")
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
            Text {
                id:filtertext1
                x: 88
                y: 9
                width: 75
                height: 38
                color: "#284863"
                text: qsTr("11th")
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
            Text {
                id:filtertext2
                x: 173
                y: 9
                width: 75
                height: 38
                color: "#284863"
                text: qsTr("15th")
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
            Text {
                id:filtertext3
                x: 258
                y: 9
                width: 75
                height: 38
                color: "#284863"
                text: qsTr("17th")
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
        }




        Image {
            id: scrollBG
            x: 1274
            y: 260
            width: 6/2
            visible: false
            source: "images/ScrollBG.svg"
            fillMode: Image.PreserveAspectFit

        }


        Image {
            id: bGForHeader
            x: 15
            y: 600
            width: 646/2
            source: "images/BGForHeader.svg"
            fillMode: Image.PreserveAspectFit
            Text {
                id: customHarmonics
                x: 8
                y: 5
                width: 135
                height: 47
                color: "#284863"
                text: qsTr("Custom Harmonics")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Rectangle {
                id: rectangle7
                x: 152
                y: 8
                width: 105
                height: 41
                color: "#ffffff"
                radius: 20.5
                border.color: "#d9d9d9"

                TextInput {
                    id: textInput
                    x: 15
                    y: 0
                    width: 82
                    height: 41
                    color: "#284863"
                    text: qsTr("1")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                }
            }

            Text {
                id: customHarmonics1
                x: 263
                y: 5
                width: 60
                height: 47
                color: "#284863"
                text: qsTr("st")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

        }


        Flickable {
            id: flickable2
            x: 167
            y: 444
            width: 168
            height: 47
            layer.enabled: true
            flickDeceleration: 3000
            contentX: 0
            maximumFlickVelocity: 5000
            contentWidth: 250
            clip: true
            Text {
                id:phase2
                x: 0
                y: 13
                width: 160
                height: 22
                color: "#98A9BA"
                text: qsTr("5th 7th 11th 13th 17th 23th")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
        }


        Flickable {
            id: flickable3
            x: 167
            y: 494
            width: 168
            height: 47
            layer.enabled: true
            flickDeceleration: 3000
            contentX: 0
            maximumFlickVelocity: 5000
            contentWidth: 250
            clip: true
            Text {
                id:phase3
                x: 0
                y: 13
                width: 160
                height: 22
                color: "#284863"
                text: qsTr("5th 7th 11th 13th 17th 23th")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
        }



        Flickable {
            id: flickable4
            x: 167
            y: 544
            width: 168
            height: 47
            layer.enabled: true
            flickDeceleration: 3000
            contentX: 0
            maximumFlickVelocity: 5000
            contentWidth: 250
            clip: true
            Text {
                id:phase4
                x: 0
                y: 13
                width: 160
                height: 22
                color: "#284863"
                text: qsTr("5th 7th 11th 13th 17th 23th")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
        }

        Rectangle {
            id:chosingHeaderPhase
            x:5
            y: 166
            width: 95
            height: 53
            color: "#217efd"

        }

        Text {
            id: phase1Text
            x: 15
            y: 161
            width: 102
            height: 63
            color: "#ffffff"
            text: qsTr("Phase1")
            font.letterSpacing: -2
            font.pixelSize: 24
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: phase2Text
            x: 117
            y: 161
            width: 102
            height: 63
            color: "#284863"
            text: qsTr("Phase2")
            font.letterSpacing: -2
            font.pixelSize: 24
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: phase3Text
            x: 233
            y: 161
            width: 102
            height: 63
            color: "#284863"
            text: qsTr("Phase4")
            font.letterSpacing: -2
            font.pixelSize: 24
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        MouseArea {
            id: mouseAreaGraphA1
            x: 1
            y: 165
            width: 114
            height: 53
            onClicked: {
                phase1Text.color="#ffffff"
                phase2Text.color="#284863"
                phase3Text.color="#284863"
                chosingHeaderPhase.x=5
                customswitchA.clickedSignal("kerem")
                customswitchA.rectangle1.x=48
                customswitchA.rectangle.color="#FF5555"
                customswitchB.nonclickedSignal("kerem")
                customswitchB.rectangle1.x=24
                customswitchB.rectangle.color="#617284"
                customswitchC.nonclickedSignal("kerem")
                customswitchC.rectangle1.x=24
                customswitchC.rectangle.color="#617284"
                customswitchN.nonclickedSignal("kerem")
                customswitchN.rectangle1.x=24
                customswitchN.rectangle.color="#617284"
                rectangleForPhase1.x=81
                rectangleForPhase1.y=8


                valuecheck.checkBoxOn.visible=true
                valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                limitscheck.checkBoxOn.visible=true
                limitscheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                phasecheck.checkBoxOn.visible=true
                phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                percentagecheck.checkBoxOn.visible=true
                percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                text1.text="Value"
                text2.text="Percentage"
                text3.text="Phase"
                text4.text="Limits"

                //                clickedVoltageGraph1.start()
            }

        }

        MouseArea {
            id: mouseAreaGraphA2
            x: 117
            y: 165
            width: 114
            height: 53
            onClicked: {
                phase1Text.color="#284863"
                phase2Text.color="#ffffff"
                phase3Text.color="#284863"
                chosingHeaderPhase.x=108
                customswitchA.clickedSignal("kerem")
                customswitchA.rectangle1.x=48
                customswitchA.rectangle.color="#FF5555"
                customswitchB.clickedSignal("kerem")
                customswitchB.rectangle1.x=48
                customswitchB.rectangle.color="#FCAE18"
                customswitchC.nonclickedSignal("kerem")
                customswitchC.rectangle1.x=24
                customswitchC.rectangle.color="#617284"
                customswitchN.nonclickedSignal("kerem")
                customswitchN.rectangle1.x=24
                customswitchN.rectangle.color="#617284"

            }
        }

        MouseArea {
            id: mouseAreaGraphA3
            x: 232
            y: 165
            width: 114
            height: 53
            onClicked: {
                phase1Text.color="#284863"
                phase2Text.color="#284863"
                phase3Text.color="#ffffff"
                chosingHeaderPhase.x=224
                customswitchA.clickedSignal("kerem")
                customswitchA.rectangle1.x=48
                customswitchA.rectangle.color="#FF5555"
                customswitchB.clickedSignal("kerem")
                customswitchB.rectangle1.x=48
                customswitchB.rectangle.color="#FCAE18"
                customswitchC.clickedSignal("kerem")
                customswitchC.rectangle1.x=48
                customswitchC.rectangle.color="#217EFD"
                customswitchN.clickedSignal("kerem")
                customswitchN.rectangle1.x=48
                customswitchN.rectangle.color="#4EC040"


            }
        }

        Image {
            id: bGHeader1
            x: 12
            y: 300
            width: 646/2
            height: 172/2
            source: "images/BGHeader.svg"
            fillMode: Image.PreserveAspectFit
            CustomCheckBox {
                id:valuecheck
                x: 9
                y: 10
                width: 130
                height: 35
                clip: true

                Text {
                    x: 30
                    y: 7
                    width: 100
                    height: 22
                    color: "#284863"
                    text: qsTr("Value")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                }

            }

            CustomCheckBox {
                id:phasecheck
                x: 9
                y: 45
                width: 130
                height: 35
                clip: true

                Text {
                    x: 30
                    y: 7
                    width: 100
                    height: 22
                    color: "#284863"
                    text: qsTr("Phase")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                }

            }

            CustomCheckBox {
                id:percentagecheck
                x: 145
                y: 9
                width: 180
                height: 35
                clip: true

                Text {
                    x: 30
                    y: 7
                    width: 142
                    height: 22
                    color: "#284863"
                    text: qsTr("Percentage")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                }

            }

            CustomCheckBox {
                id:limitscheck
                x: 145
                y: 45
                width: 180
                height: 35
                clip: true

                Text {
                    x: 30
                    y: 7
                    width: 142
                    height: 22
                    color: "#284863"
                    text: qsTr("Limits")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                }

            }
        }


    }

    Image {
        id: openMenu
        x: 0
        y: 242
        width: 72/2
        source: "images/Group 9785.svg"
        fillMode: Image.PreserveAspectFit

        MouseArea {
            id: mouseArea
            x: -2
            y: -9
            width: 88
            height: 148
            onClicked: {
                if(menu.x===-348)
                {
                    openMenu.source="images/CloseMenu.svg"
                    openMenu.x=348
                    menu.x=0
                }
                else{
                    openMenu.source="images/Group 9785.svg"
                    openMenu.x=0
                    menu.x=-348
                }

            }
        }
    }

    Row {
        id: radioBar
        y: 613
        anchors.bottom: parent.bottom
        anchors.horizontalCenterOffset: 107
        anchors.bottomMargin: 75
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 20

        RadioButton {
            width: 128
            text: "Bar Graph"
            checked: swipeView.currentIndex === 0
            onCheckedChanged: if (checked) swipeView.currentIndex = 0
        }

        RadioButton {
            text: "Donut Chart"
            checked: swipeView.currentIndex === 1
            onCheckedChanged: if (checked) swipeView.currentIndex = 1
        }
    }









    Image {
        id: menu1
        x: 913
        y: 0
        width: 734/2
        source: "images/Menu-1.svg"
        fillMode: Image.PreserveAspectFit

        Image {
            id: harmonicListHeaderBG
            x: 0
            y: 61
            width: 156/2
            source: "images/HarmonicListHeaderBG.svg"
            fillMode: Image.PreserveAspectFit
        }

        CustomHeaderForPhaseN {
            x: 294
            y: 8
            width: 133/2
            height: 62/2
            clip: true
        }

        CustomHeaderForPhaseC {
            x: 223
            y: 8
            width: 133/2
            height: 62/2
            clip: true
        }

        CustomHeaderForPhaseB {
            x: 152
            y: 8
            width: 133/2
            height: 62/2
            clip: true
        }

        CustomHeaderForPhaseA {
            x: 81
            y: 8
            width: 133/2
            height: 62/2
            clip: true
        }

        Text {
            id: phaseBHarmonicHeader
            x: 158
            y: 0
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
            x: 229
            y: 0
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
            id: phaseAHarmonicHeader
            x: 87
            y: 0
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
            id: text1
            x: 81
            y: 39
            width: 66
            height: 23
            color: "#284863"
            text: qsTr("Value")
            font.letterSpacing: -0.5
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            styleColor: "#284863"
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: text2
            x: 152
            y: 39
            width: 67
            height: 23
            color: "#284863"
            text: qsTr("Percentage")
            font.letterSpacing: -0.5
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            styleColor: "#284863"
            font.family: "Akshar"
            font.styleName: "Light"
        }

        Text {
            id: text3
            x: 223
            y: 39
            width: 67
            height: 23
            color: "#284863"
            text: qsTr("Phase")
            font.letterSpacing: -0.5
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            styleColor: "#284863"
            font.family: "Akshar"
            font.styleName: "Light"
        }

        Text {
            id: text4
            x: 294
            y: 39
            width: 67
            height: 23
            color: "#284863"
            text: qsTr("Limits")
            font.letterSpacing: -0.5
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            styleColor: "#284863"
            font.family: "Akshar"
            font.styleName: "Light"
        }

        Text {
            id: text5
            x: 1
            y: 30
            width: 77
            height: 36
            color: "#284863"
            text: qsTr("Name of Harmonics")
            font.pixelSize: 12
            horizontalAlignment: Text.AlignHCenter
            wrapMode: Text.Wrap
            styleColor: "#284863"
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        Text {
            id: phaseNHarmonicHeader
            x: 300
            y: 0
            width: 120/2
            height: 96/2
            color: "#ffffff"
            text: qsTr("PhaseN")
            font.letterSpacing: -2
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }






        Rectangle {
            id: rectangleForPhase1
            x: 81
            y: 8
            width: 281
            height: 31
            color: "#ffffff"

            CustomHeaderForPhaseA {
                id: customHeaderForPhaseA
                x: 0
                y: 0
                width: 133/2
                height: 62/2
                clip: true

                Text {
                    id: phaseAHarmonicHeader1
                    x: 6
                    y: -9
                    width: 60
                    height: 96/2
                    color: "#ffffff"
                    text: qsTr("Phase A")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    Text {
                        x: -6
                        y: 39
                        width: 66
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 65
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 136
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 207
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: -86
                        y: 30
                        width: 77
                        height: 36
                        color: "#284863"
                        text: qsTr("Name of Harmonics")
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.Wrap
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Bold"
                    }
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }

            CustomHeaderForPhaseA {
                id: customHeaderForPhaseB
                x: 71
                y: 0
                width: 133/2
                height: 62/2
                Text {
                    id:phaseAHarmonicHeader2
                    x: 6
                    y: -9
                    width: 60
                    height: 96/2
                    color: "#ffffff"
                    text: qsTr("Phase A")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    Text {
                        x: -6
                        y: 39
                        width: 66
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 65
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 136
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 207
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: -86
                        y: 30
                        width: 77
                        height: 36
                        color: "#284863"
                        text: qsTr("Name of Harmonics")
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.Wrap
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Bold"
                    }
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
                clip: true
            }

            CustomHeaderForPhaseA {
                id: customHeaderForPhaseC
                x: 142
                y: 0
                width: 133/2
                height: 62/2
                Text {
                    id:phaseAHarmonicHeader3
                    x: 6
                    y: -9
                    width: 60
                    height: 96/2
                    color: "#ffffff"
                    text: qsTr("Phase A")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    Text {
                        x: -6
                        y: 39
                        width: 66
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 65
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 136
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 207
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: -86
                        y: 30
                        width: 77
                        height: 36
                        color: "#284863"
                        text: qsTr("Name of Harmonics")
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.Wrap
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Bold"
                    }
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
                clip: true
            }

            CustomHeaderForPhaseA {
                id: customHeaderForPhaseN
                x: 214
                y: 0
                width: 133/2
                height: 62/2
                Text {
                    id:phaseAHarmonicHeader4
                    x: 6
                    y: -9
                    width: 60
                    height: 96/2
                    color: "#ffffff"
                    text: qsTr("Phase A")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    Text {
                        x: -6
                        y: 39
                        width: 66
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 65
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 136
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: 207
                        y: 39
                        width: 67
                        height: 23
                        color: "#284863"
                        text: qsTr("Value")
                        font.letterSpacing: -0.5
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Light"
                    }

                    Text {
                        x: -86
                        y: 30
                        width: 77
                        height: 36
                        color: "#284863"
                        text: qsTr("Name of Harmonics")
                        font.pixelSize: 12
                        horizontalAlignment: Text.AlignHCenter
                        wrapMode: Text.Wrap
                        styleColor: "#284863"
                        font.family: "Akshar"
                        font.styleName: "Bold"
                    }
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
                clip: true
            }
        }


    }
    function refreshVisibleItemsModel1() {
        visibleItemsModel1.clear();
        for (var i = 0; i < harmonicnames.count; ++i) {
            if (harmonicnames.get(i).visible)
                visibleItemsModel1.append(harmonicnames.get(i));
        }
    }

    // Create a separate model to store visible items

    ListModel {
        id: visibleItemsModel1
    }

    // Function to handle item visibility changes
    function setItemVisibility1(index, visibility) {
        harmonicnames.setProperty(index, "visible", visibility);
        refreshVisibleItemsModel1();
    }











    Flickable {
        id: flickable
        x: 913
        y: 60
        width: 367
        height: 643
        contentY: 0
        clip: true
        flickDeceleration: 3000
        maximumFlickVelocity: 5000
        contentHeight: 4500





        ListModel {
            id: harmonicnames

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 101; i++) {
                    harmonicnames.append({"text": "H" + (0.5*i)})
                }
            }
        }


        ListView {
            id: harmonicnameslistview
            x: 12
            y: 20
            z:1
            width: 150
            height: 5000
            visible: false

            interactive: false
            contentY: 0
            cacheBuffer: 323
            maximumFlickVelocity: 5000
            contentHeight: 5500
            flickDeceleration: 3000
            clip: false

            spacing: 10
            model: harmonicnames

            delegate: Text {
                color: "#284863"
                text: model.text
                font.pixelSize: 18

            }
        }

        //        ListModel {
        //            id: listmodell

        //            // Başlangıçta 101 adet öğe ekleyelim.
        //            Component.onCompleted: {
        //                for (var i = 0; i < 101; i++) {
        //                    listmodell.append({"text": "1" , "visible": true })
        //                }
        //            }
        //        }


        ListModel {
            id: listmodel2

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 101; i++) {
                    listmodel2.append({"text": "2" })
                }
            }
        }

        Rectangle {
            id: rectangler
            x: 1
            y: 115
            width: 365
            height: 53
            visible: false
            color: "#dedede"
        }

        ListModel {
            id: listmodel3

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 101; i++) {
                    listmodel3.append({"text": "3" })
                }
            }
        }




        ListView {
            id:harmonicnameslist
            width: 65
            height: 5120
            visible: true
            interactive: false
            contentY: 0
            cacheBuffer: 323
            maximumFlickVelocity: 5000
            contentHeight: 5500
            flickDeceleration: 3000
            clip: false
            x:-78
            y:29

            model: visibleItemsModel1
            spacing: 10
            delegate: Item {
                height: 40
                RowLayout {
                    width: parent.width
                    Text {
                        color: "#284863"
                        text: model.text
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignHCenter
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        font.family: "Akshar"
                    }
                }
            }
        }

        ListView {
            id:onelist
            width: 65
            height: 5120
            visible: true
            interactive: false
            contentY: 0
            cacheBuffer: 323
            maximumFlickVelocity: 5000
            contentHeight: 5500
            flickDeceleration: 3000
            clip: false
            x:20
            y:29

            model: visibleItemsModel1
            spacing: 10
            delegate: Item {
                height: 40
                RowLayout {
                    width: parent.width
                    Text {
                        color: "#284863"
                        text: model.text
                        Layout.fillWidth: true
                        Layout.alignment: Qt.AlignHCenter
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        font.family: "Akshar"
                    }
                }
            }
        }

        ListModel {
            id: listmodel4

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 101; i++) {
                    listmodel4.append({"text": "4" })
                }
            }
        }










        ////////////**STARTTTT*//////////////
        ListModel {
            id: listmodell

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 101; i++) {
                    listmodell.append({"text": "1" });
                }
            }
        }

        ListModel {
            id: listmodellForFilter
        }




        ListView {
            id: one
            x: 83
            y: 30
            z:1
            width: 150
            height: 5000
            visible: true

            interactive: false
            contentY: 0
            cacheBuffer: 323
            maximumFlickVelocity: 5000
            contentHeight: 5500
            flickDeceleration: 3000
            clip: false

            spacing: 29
            model: listmodellForFilter

            delegate: Text {
                color: "#284863"
                text: model.text
                font.pixelSize: 18

            }

            Component.onCompleted: {
                for (var i = 0; i < listmodell.count; i++) {
                    listmodellForFilter.append(listmodell.get(i));
                }
            }
        }


        ////////////**END*//////////////




        //        ListView {
        //            id: one
        //            x: 81
        //            y: 20
        //            z:1
        //            width: 80
        //            height: 5000
        //            visible: true

        //            interactive: false
        //            contentY: 0
        //            cacheBuffer: 323
        //            maximumFlickVelocity: 5000
        //            contentHeight: 5500
        //            flickDeceleration: 3000
        //            clip: false

        //            model: listmodell

        //            delegate: Text {
        //                color: "#284863"
        //                text: model.text
        //                font.pixelSize: 18
        //                padding: 10
        //            }
        //        }

        ListView {
            id: two
            x: 160
            y: 30
            width: 80
            height: 5000
            visible: true
            maximumFlickVelocity: 5000
            cacheBuffer: 323
            clip: false
            interactive: false
            contentY: 0
            spacing: 29
            delegate: Text {
                color: "#284863"
                text: model.text
                font.pixelSize: 18

            }
            flickDeceleration: 3000
            contentHeight: 5500
            z: 1
            model: listmodel2
        }

        ListView {
            id: three
            x: 230
            y: 30
            width: 80
            height: 5000
            visible: true
            maximumFlickVelocity: 5000
            cacheBuffer: 323
            clip: false
            interactive: false
            contentY: 0
            spacing: 29
            delegate: Text {
                color: "#284863"
                text: model.text
                font.pixelSize: 18

            }
            flickDeceleration: 3000
            contentHeight: 5500
            z: 1
            model: listmodel3
        }

        ListView {
            id: four
            x: 305
            y: 30
            width: 80
            height: 5000
            visible: true
            maximumFlickVelocity: 5000
            cacheBuffer: 323
            clip: false
            spacing: 29
            interactive: false
            contentY: 0
            delegate: Text {
                color: "#284863"
                text: model.text
                font.pixelSize: 18

            }
            flickDeceleration: 3000
            contentHeight: 5500
            z: 1
            model: listmodel4
        }


        //            Connections {
        //                target: uartID
        //                function onUart_DataChanged() {
        //                    for (var i = 0; i < listmodell.count; i++) {
        //                        listmodell.setProperty(i, "text", uartID.getUartData(i))
        //                    }

        //                }
        //            }

    }



    Item {
        height: 100
        anchors.verticalCenterOffset: -314
        anchors.horizontalCenterOffset: -1083
        width: 100
        clip: true
        anchors.centerIn: parent
        Rectangle {
            anchors.fill: parent
            anchors.rightMargin: 0
            anchors.topMargin:  73
            anchors.bottomMargin: -border.width
            border.width: 1
            border.color:"#adb1b4"
        }
    }




}






