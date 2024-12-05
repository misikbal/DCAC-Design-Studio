import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
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


    function calculateStats(series) {
        if (!series || series.count === 0) return { min: 0, max: 0, avg: 0 };

        var min = series.at(0).y;
        var max = series.at(0).y;
        var total = 0;

        for (var i = 0; i < series.count; i++) {
            var yValue = series.at(i).y;
            if (yValue < min) min = yValue;
            if (yValue > max) max = yValue;
            total += yValue;
        }

        var avg = total / series.count;
        return { min: min, max: max, avg: avg };
    }
    Timer {
          interval: 1000 // 1 saniye
          running: true
          repeat: true
          onTriggered: {
              var stats = calculateStats(lineSeries);
              min1.text = stats.min.toFixed(2) + ' V';
              max1.text = stats.max.toFixed(2) + ' V';
              avg1.text = stats.avg.toFixed(2) + ' V';
          }
      }

//      Text {
//          id: minText
//          x: 10
//          width: 222
//          y: 10
//          font.pixelSize: 16
//          z: 1
//      }

//      Text {
//          id: maxText
//          x: 10
//          y: 40
//          font.pixelSize: 16
//      }

//      Text {
//          id: avgText
//          x: 10
//          y: 70
//          font.pixelSize: 16
//      }



    Component.onCompleted: {
        harmonicCirclesAnimations.start()
        var stats = calculateStats(lineSeries);
           console.log("Min:", stats.min, "Max:", stats.max, "Average:", stats.avg);

    }



    Rectangle {
        id: maxPointIndicator
        width: 10
        height: 10
        color: "red"
        visible: false // Başlangıçta görünmez yap
        radius: 5
    }










    Image {
        id: menu
        x: 0
        y: 0
        width: 696/2
        source: "images/Menu.svg"
        fillMode: Image.PreserveAspectFit
        RectangleItem {
            id: rectangle2
            x: 0
            y: 306
            width: 347
            height: 1
            fillColor: "#e8e8e8"
            strokeWidth: -1
        }

        Image {
            id: bgForHeader
            x: 4
            y: 8
            width: 338
            height: 117
            source: "images/BGHeader.svg"
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
                    to: "#FFFFFF"
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
                    to: "#FFFFFF"
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
                    to: "#FFFFFF"
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
                    to: "#FFFFFF"
                }
            }









            ParallelAnimation{
                id: clickedAGraph1
                PropertyAnimation {
                    target: chosingGraph1
                    property: "x"
                    duration: 200
                    to: a.x
                }
                PropertyAnimation {
                    target: chosingGraph1
                    property: "width"
                    duration: 200
                    to: a.width
                }
            }

            ParallelAnimation{
                id: clickedBGraph1
                PropertyAnimation {
                    target: chosingGraph1
                    property: "x"
                    duration: 200
                    to: b.x
                }
                PropertyAnimation {
                    target: chosingGraph1
                    property: "width"
                    duration: 200
                    to: b.width
                }
            }

            ParallelAnimation{
                id: clickedCGraph1

                PropertyAnimation {
                    target: chosingGraph1
                    property: "x"
                    duration: 200
                    to: c.x
                }

                PropertyAnimation {
                    target: chosingGraph1
                    property: "width"
                    duration: 200
                    to: c.width
                }
            }

            ParallelAnimation{
                id: clickedNGraph1
                PropertyAnimation {
                    target: chosingGraph1
                    property: "x"
                    duration: 200
                    to: n.x
                }

                PropertyAnimation {
                    target: chosingGraph1
                    property: "width"
                    duration: 200
                    to: n.width
                }
            }

            Rectangle {
                id:chosingHeaderGraph1
                x: 1
                y: 1
                width: 79
                height: 53
                color: "#217efd"
            }









            Text {
                id: a
                x: 0
                y: 68
                width: 80
                height: 35
                color: "#ff5555"
                text: qsTr("A")
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Bold"
                font.family: "Akshar"


                MouseArea {
                    id: mouseAreaGraphA
                    x: 0
                    y: 0
                    width: 80
                    height: 48
                    onClicked: {
                        clickedAGraph1.start()
                        lineSeries.color="#FF5555"
                    }
                }

                MouseArea {
                    id: mouseAreaGraphA1
                    x: 1
                    y: -67
                    width: 79
                    height: 53
                    onClicked: {
                        currentHeader.color="#284863"
                        activepowerHeader.color="#284863"
                        reactivepowerHeader.color="#284863"
                        clickedVoltageGraph1.start()
                    }

                }

                MouseArea {
                    id: mouseAreaGraphA2
                    x: 80
                    y: -67
                    width: 80
                    height: 53
                    onClicked: {
                        voltageHeader.color="#284863"
                        activepowerHeader.color="#284863"
                        reactivepowerHeader.color="#284863"
                        clickedCurrentGraph1.start()
                    }
                }

                MouseArea {
                    id: mouseAreaGraphA3
                    x: 160
                    y: -67
                    width: 80
                    height: 53
                    onClicked: {
                        voltageHeader.color="#284863"
                        currentHeader.color="#284863"
                        reactivepowerHeader.color="#284863"
                        clickedActivePowerGraph1.start()
                    }
                }

                MouseArea {
                    id: mouseAreaGraphA4
                    x: 240
                    y: -67
                    width: 97
                    height: 53
                    onClicked: {
                        voltageHeader.color="#284863"
                        currentHeader.color="#284863"
                        activepowerHeader.color="#284863"
                        clickedReactivePowerGraph1.start()
                    }
                }
            }


            Text {
                id: b
                x: 80
                y: 68
                width: 80
                height: 35
                color: "#FCAE18"
                text: qsTr("B")
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Bold"
                font.family: "Akshar"
                MouseArea {
                    id: mouseAreaGraphB
                    x: 0
                    y: 0
                    width: 80
                    height: 48
                    onClicked: {
                        clickedBGraph1.start()
                        lineSeries.color="#FCAE18"
                    }
                }
            }


            Text {
                id: c
                x: 160
                y: 68
                width: 80
                height: 35
                color: "#217EFD"
                text: qsTr("C")
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Bold"
                font.family: "Akshar"
                MouseArea {
                    id: mouseAreaGraphC
                    x: 0
                    y: 0
                    width: 80
                    height: 48
                    onClicked: {
                        clickedCGraph1.start()
                        lineSeries.color="#217EFD"
                    }
                }
            }


            Text {
                id: n
                x: 240
                y: 68
                width: 97
                height: 35
                color: "#4EC040"
                text: qsTr("N")
                font.pixelSize: 24
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.styleName: "Bold"
                font.family: "Akshar"
                MouseArea {
                    id: mouseAreaGraphN
                    x: 0
                    y: 0
                    width: 97
                    height: 48
                    onClicked: {
                        clickedNGraph1.start()
                        lineSeries.color="#4EC040"
                    }
                }
            }


            Text {
                id: voltageHeader
                x: 1
                y: 4
                width: 79
                height: 50
                color: "#ffffff"
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
                color: "#284863"
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
                color: "#284863"
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
                color: "#284863"
                text: qsTr("Reactive P.")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }


            Rectangle {
                id: chosingGraph1
                x: 160
                y: 107
                width: 80
                height: 10
                color: "#217efd"
            }


        }

        CustomChosingForFilter{
            x:0
            y:145
            width: 344
            height: 50
            clip: true
            onClickedSignal: {
                maxVoltage.color="#FFFFFF"
                        max1.color="#284863"

            }
            onNonclickedSignal: {
                maxVoltage.color="#284863"
                max1.color="#98A9BA"
                maxVoltage.color="#284863"
                       max1.color="#98A9BA"

                       // Opsiyonel: Maksimum değeri belirten kırmızı noktayı gizleyin
                       maxPointSeries.clear();

            }

            Text {
                id: max1
                x: 167
                y: 0
                width: 177
                height: 49
                color: "#98a9ba"
                text: qsTr("244,85 V")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                clip: false
            }

            Text {
                id: maxVoltage
                x: 0
                y: 2
                width: 121
                height: 47
                color: "#284863"
                text: qsTr("Max")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
        }

        CustomChosingForFilter {
            x: 0
            y: 195
            width: 344
            height: 50
            clip: true
            onClickedSignal: {
                avgVoltage.color="#FFFFFF"
                avg1.color="#284863"
            }
            onNonclickedSignal: {
                avgVoltage.color="#284863"
                avg1.color="#98A9BA"
            }

            Text {
                id: avgVoltage
                x: 0
                y: 1
                width: 121
                height: 47
                color: "#284863"
                text: qsTr("Avg")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                id:avg1
                x: 167
                y: 0
                width: 177
                height: 50
                color: "#98A9BA"
                text: qsTr("221,12 V")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
        }

        CustomChosingForFilterOn {
            x: 0
            y: 245
            width: 344
            height: 50
            clip: true

            onClickedSignal: {
                minVoltage.color="#FFFFFF"
                min1.color="#284863"
            }
            onNonclickedSignal: {
                minVoltage.color="#284863"
                min1.color="#98A9BA"
            }

            Text {
                id:min1
                x: 167
                y: 0
                width: 177
                height: 50
                color: "#284863"
                text: qsTr("200,42 V")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                clip: false
            }

            Text {
                id: minVoltage
                x: 0
                y: 2
                width: 121
                height: 47
                color: "#ffffff"
                text: qsTr("Min")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
        }






        Rectangle {
            id: graphs2
            x: 0
            y: 310
            width: 347
            height: 418

            Image {
                id: bgForHeader2
                x: 4
                y: 8
                width: 338
                height: 117
                source: "images/BGHeader.svg"
                fillMode: Image.Stretch
                ParallelAnimation {
                    id: clickedVoltageGraph12
                    PropertyAnimation {
                        target: chosingHeaderGraph12
                        property: "x"
                        duration: 200
                        to: voltageHeader2.x
                    }

                    PropertyAnimation {
                        target: chosingHeaderGraph12
                        property: "width"
                        duration: 200
                        to: voltageHeader2.width
                    }

                    PropertyAnimation {
                        target: voltageHeader2
                        property: "color"
                        duration: 200
                        to: "#ffffff"
                    }
                }

                ParallelAnimation {
                    id: clickedCurrentGraph12
                    PropertyAnimation {
                        target: chosingHeaderGraph12
                        property: "x"
                        duration: 200
                        to: currentHeader2.x
                    }

                    PropertyAnimation {
                        target: chosingHeaderGraph12
                        property: "width"
                        duration: 200
                        to: currentHeader2.width
                    }

                    PropertyAnimation {
                        target: currentHeader2
                        property: "color"
                        duration: 200
                        to: "#ffffff"
                    }
                }

                ParallelAnimation {
                    id: clickedActivePowerGraph12
                    PropertyAnimation {
                        target: chosingHeaderGraph12
                        property: "x"
                        duration: 200
                        to: activepowerHeader2.x
                    }

                    PropertyAnimation {
                        target: chosingHeaderGraph12
                        property: "width"
                        duration: 200
                        to: activepowerHeader2.width
                    }

                    PropertyAnimation {
                        target: activepowerHeader2
                        property: "color"
                        duration: 200
                        to: "#ffffff"
                    }
                }

                ParallelAnimation {
                    id: clickedReactivePowerGraph12
                    PropertyAnimation {
                        target: chosingHeaderGraph12
                        property: "x"
                        duration: 200
                        to: reactivepowerHeader2.x
                    }

                    PropertyAnimation {
                        target: chosingHeaderGraph12
                        property: "width"
                        duration: 200
                        to: reactivepowerHeader2.width
                    }

                    PropertyAnimation {
                        target: reactivepowerHeader2
                        property: "color"
                        duration: 200
                        to: "#ffffff"
                    }
                }

                ParallelAnimation {
                    id: clickedAGraph12
                    PropertyAnimation {
                        target: chosingGraph12
                        property: "x"
                        duration: 200
                        to: a2.x
                    }

                    PropertyAnimation {
                        target: chosingGraph12
                        property: "width"
                        duration: 200
                        to: a2.width
                    }
                }

                ParallelAnimation {
                    id: clickedBGraph12
                    PropertyAnimation {
                        target: chosingGraph12
                        property: "x"
                        duration: 200
                        to: b2.x
                    }

                    PropertyAnimation {
                        target: chosingGraph12
                        property: "width"
                        duration: 200
                        to: b2.width
                    }
                }

                ParallelAnimation {
                    id: clickedCGraph12
                    PropertyAnimation {
                        target: chosingGraph12
                        property: "x"
                        duration: 200
                        to: c2.x
                    }

                    PropertyAnimation {
                        target: chosingGraph12
                        property: "width"
                        duration: 200
                        to: c2.width
                    }
                }

                ParallelAnimation {
                    id: clickedNGraph12
                    PropertyAnimation {
                        target: chosingGraph12
                        property: "x"
                        duration: 200
                        to: n2.x
                    }

                    PropertyAnimation {
                        target: chosingGraph12
                        property: "width"
                        duration: 200
                        to: n2.width
                    }
                }

                Rectangle {
                    id: chosingHeaderGraph12
                    x: 1
                    y: 1
                    width: 79
                    height: 53
                    color: "#217efd"
                }

                Text {
                    id: a2
                    x: 0
                    y: 68
                    width: 80
                    height: 35
                    color: "#ff5555"
                    text: qsTr("A")
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Akshar"
                    MouseArea {
                        id: mouseAreaGraph2A
                        x: 0
                        y: 0
                        width: 80
                        height: 48
                        onClicked: {
                            clickedAGraph12.start()
                        }
                    }

                    MouseArea {
                        id: mouseAreaGraphA12
                        x: 1
                        y: -67
                        width: 79
                        height: 53
                        onClicked: {
                            currentHeader2.color="#284863"
                            activepowerHeader2.color="#284863"
                            reactivepowerHeader2.color="#284863"
                            clickedVoltageGraph12.start()
                        }
                    }

                    MouseArea {
                        id: mouseAreaGraph2A2
                        x: 80
                        y: -67
                        width: 80
                        height: 53
                        onClicked: {
                            voltageHeader2.color="#284863"
                            activepowerHeader2.color="#284863"
                            reactivepowerHeader2.color="#284863"
                            clickedCurrentGraph12.start()
                        }
                    }

                    MouseArea {
                        id: mouseAreaGraph2A3
                        x: 160
                        y: -67
                        width: 80
                        height: 53
                        onClicked: {
                            voltageHeader2.color="#284863"
                            currentHeader2.color="#284863"
                            reactivepowerHeader2.color="#284863"
                            clickedActivePowerGraph12.start()
                        }
                    }

                    MouseArea {
                        id: mouseAreaGraph2A4
                        x: 240
                        y: -67
                        width: 97
                        height: 53
                        onClicked: {
                            voltageHeader2.color="#284863"
                            currentHeader2.color="#284863"
                            activepowerHeader2.color="#284863"
                            clickedReactivePowerGraph12.start()
                        }
                    }
                    font.styleName: "Bold"
                }

                Text {
                    id: b2
                    x: 80
                    y: 68
                    width: 80
                    height: 35
                    color: "#fcae18"
                    text: qsTr("B")
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Akshar"
                    MouseArea {
                        id: mouseAreaGraphB2
                        x: 0
                        y: 0
                        width: 80
                        height: 48
                        onClicked: {
                            clickedBGraph12.start()
                        }
                    }
                    font.styleName: "Bold"
                }

                Text {
                    id: c2
                    x: 160
                    y: 68
                    width: 80
                    height: 35
                    color: "#217efd"
                    text: qsTr("C")
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Akshar"
                    MouseArea {
                        id: mouseAreaGraphC2
                        x: 0
                        y: 0
                        width: 80
                        height: 48
                        onClicked: {
                            clickedCGraph12.start()
                        }
                    }
                    font.styleName: "Bold"
                }

                Text {
                    id: n2
                    x: 240
                    y: 68
                    width: 97
                    height: 35
                    color: "#4ec040"
                    text: qsTr("N")
                    font.pixelSize: 24
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.family: "Akshar"
                    MouseArea {
                        id: mouseAreaGraphN2
                        x: 0
                        y: 0
                        width: 97
                        height: 48
                        onClicked: {
                            clickedNGraph12.start()
                        }
                    }
                    font.styleName: "Bold"
                }

                Text {
                    id: voltageHeader2
                    x: 1
                    y: 4
                    width: 79
                    height: 50
                    color: "#ffffff"
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
                    id: currentHeader2
                    x: 80
                    y: 4
                    width: 80
                    height: 50
                    color: "#284863"
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
                    id: activepowerHeader2
                    x: 160
                    y: 4
                    width: 80
                    height: 50
                    color: "#284863"
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
                    id: reactivepowerHeader2
                    x: 240
                    y: 4
                    width: 97
                    height: 50
                    color: "#284863"
                    text: qsTr("Reactive P.")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

                Rectangle {
                    id: chosingGraph12
                    x: 0
                    y: 107
                    width: 80
                    height: 10
                    color: "#217efd"
                }
            }

            CustomChosingForFilter {
                x: 0
                y: 145
                width: 344
                height: 50
                clip: true
                Text {
                    id: max2
                    x: 167
                    y: 0
                    width: 177
                    height: 49
                    color: "#98a9ba"
                    text: qsTr("244,85 V")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                    clip: false
                }

                Text {
                    id: maxVoltage2
                    x: 0
                    y: 2
                    width: 121
                    height: 47
                    color: "#284863"
                    text: qsTr("Max")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
                onClickedSignal: {
                    maxVoltage2.color="#FFFFFF"
                    max2.color="#284863"
                }
                onNonclickedSignal: {
                    maxVoltage2.color="#284863"
                    max2.color="#98A9BA"

                }
            }

            CustomChosingForFilter {
                x: 0
                y: 195
                width: 344
                height: 50
                clip: true
                Text {
                    id: avgVoltage2
                    x: 0
                    y: 1
                    width: 121
                    height: 47
                    color: "#284863"
                    text: qsTr("Avg")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

                Text {
                    id: avg2
                    x: 167
                    y: 0
                    width: 177
                    height: 50
                    color: "#98a9ba"
                    text: qsTr("221,12 V")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                    clip: false
                }
                onClickedSignal: {
                    avgVoltage2.color="#FFFFFF"
                    avg2.color="#284863"
                }
                onNonclickedSignal: {
                    avgVoltage2.color="#284863"
                    avg2.color="#98A9BA"
                }
            }

            CustomChosingForFilterOn {
                x: 0
                y: 245
                width: 344
                height: 50
                clip: true
                Text {
                    id: min2
                    x: 167
                    y: 0
                    width: 177
                    height: 50
                    color: "#284863"
                    text: qsTr("200,42 V")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                    clip: false
                }

                Text {
                    id: minVoltage2
                    x: 0
                    y: 2
                    width: 121
                    height: 47
                    color: "#ffffff"
                    text: qsTr("Min")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
                onClickedSignal: {
                    minVoltage2.color="#FFFFFF"
                    min2.color="#284863"
                }
                onNonclickedSignal: {
                    minVoltage2.color="#284863"
                    min2.color="#98A9BA"
                }
            }
        }





        Image {
            id: bgForHeader3
            x: 4
            y: 620
            width: 338
            height: 100
            source: "images/BGHeader.svg"
            fillMode: Image.Stretch
            Text {
                id: loggerText
                x: 10
                y: 0
                width: 121
                height: 44
                color: "#284863"
                text: qsTr("Logger")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Bold"
            }

            CustomButtonHeaderBlackBG{
                x: 267
                y: 44
                width: 57
                height:46
                clip: true


            }


            Image {
                id: okUp1
                x: 289
                y: 62
                width: 28/2
                source: "images/OkUp.svg"
                rotation: 0
                fillMode: Image.PreserveAspectFit
            }


            Rectangle {
                id: rectangle1
                x: 10
                y: 44
                width: 257
                height: 46
                border.color: "#d9d9d9"
                border.width: 1
                color: "#ffffff"

                Rectangle{
                    id:backgroundList
                    x:0
                    y:-589
                    width: 257
                    height:589
                    visible: false

                }

                Text {
                    id: chosenText
                    color: "#284863"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 18
                    anchors.leftMargin: 20


                }


                MouseArea {
                    anchors.fill: parent
                    anchors.rightMargin: -60
                    anchors.leftMargin: -5
                    anchors.bottomMargin: -5
                    anchors.topMargin: -5
                    onClicked: {

                        if(okUp1.rotation===180)
                        {
                            okUp1.rotation=0
                            backgroundList.visible=false
                            listView.visible=false
                            elementText.visible=false
                        }
                        else
                        {
                            okUp1.rotation=180
                            backgroundList.visible=true
                            listView.visible=true
                            elementText.visible=false
                        }
                    }
                }


                ListView {
                    id: listView
                    x: 0
                    width: parent.width
                    spacing: 5
                    visible: false
                    anchors.top: backgroundList.top
                    anchors.bottom: backgroundList.bottom
                    anchors.topMargin: 40
                    anchors.bottomMargin: 50

                    model: ListModel {
                        ListElement { name: "Measurement 1" }
                        ListElement { name: "Measurement 2" }
                        ListElement { name: "Measurement 3" }
                        ListElement { name: "Measurement 5" }
                        ListElement { name: "Measurement 6" }
                        ListElement { name: "Measurement 7" }
                        ListElement { name: "Measurement 8" }
                        ListElement { name: "Measurement 9" }
                        ListElement { name: "Measurement 11" }
                        ListElement { name: "Measurement 16" }
                        ListElement { name: "Measurement 18" }
                        ListElement { name: "Measurement 19" }
                        ListElement { name: "Measurement 21" }
                        ListElement { name: "Measurement 26" }
                        ListElement { name: "Measurement 28" }
                        ListElement { name: "Measurement 57" }
                    }

                    delegate: Item {
                        width: listView.width
                        height: 50

                        Rectangle {
                            width: parent.width
                            height: 50

                            color: "#EFF2F6"

                            Text {
                                anchors.centerIn: parent
                                text: model.name
                            }

                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    nameOfLoggerText1.text = model.name
                                    chosenText.text = model.name
                                }
                            }
                        }
                    }
                }

                Text {
                    id: elementText
                    x: 20
                    y: -3
                    width: 237
                    height: 50
                    color: "#d4d4d4"
                    text: qsTr("Measurement 1")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

            }


        }

    }




























    Image {
        id: menu1
        x: 913
        y: 0
        width: 734/2
        source: "images/Menu-1.svg"
        fillMode: Image.PreserveAspectFit

        RectangleItem {
            id: rectangle3
            x: 1
            y: 306
            width: 366
            height: 1
            fillColor: "#e8e8e8"
            strokeWidth: -1
        }

        Text {
            id: nameOfLogger1
            x: 18
            y: 4
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Name of Logger")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: duration1
            x: 18
            y: 54
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Duration")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: startTime1
            x: 18
            y: 104
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Start Time")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: endTime1
            x: 18
            y: 154
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("End Time")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: cursorX1
            x: 18
            y: 204
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Cursor x")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: cursorY1
            x: 18
            y: 254
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Cursor y")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: nameOfLogger2
            x: 18
            y: 312
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Name of Logger")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: duration2
            x: 18
            y: 362
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Duration")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: startTime2
            x: 18
            y: 412
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Start Time")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: endTime2
            x: 18
            y: 462
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("End Time")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: cursorX2
            x: 18
            y: 512
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Cursor x")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: cursorY2
            x: 18
            y: 562
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Cursor y")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: nameOfLoggerText1
            x: 190
            y: 4
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Element 1")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: durationText1
            x: 190
            y: 54
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("4:00")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: startTimeText1
            x: 190
            y: 104
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("0:00")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: endTimeText1
            x: 190
            y: 154
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("4:00")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: cursorXText1
            x: 190
            y: 204
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Please click on a point on the chart")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: cursorYText1
            x: 190
            y: 254
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Name of Logger")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: nameOfLoggerText2
            x: 190
            y: 312
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Name of Logger")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: durationText2
            x: 190
            y: 362
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Name of Logger")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: startTimeText2
            x: 190
            y: 412
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Name of Logger")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: endTimeText2
            x: 190
            y: 462
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Name of Logger")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: cursorXText2
            x: 190
            y: 512
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Name of Logger")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: cursorYText2
            x: 190
            y: 562
            width: 162
            height: 50
            color: "#284863"
            text: qsTr("Name of Logger")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }
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
        id: visibleItemsModel4
    }

    RectangleItem {
        id: rectangle4
        x: 368
        y: 306
        width: 524
        height: 1
        fillColor: "#e8e8e8"
        strokeWidth: -1
    }

    Rectangle {
        id: rectangle5
        x: 358
        y: 10
        width: 545
        height: 286
        color: "#ffffff"
        ChartView {
               id: chartView
               anchors.fill: parent
               legend.visible: false
//               title: "Örnek Grafik"
               antialiasing: true
               CategoryAxis {
                           id: xAxis
                           min: 0
                           max: 4
                           labelsPosition: CategoryAxis.AxisLabelsPositionOnValue

                           CategoryRange { endValue: 1; label: "1:00" }
                           CategoryRange { endValue: 2; label: "2:00" }
                           CategoryRange { endValue: 3; label: "3:00" }
                           CategoryRange { endValue: 4; label: "4:00" }
                       }

                       ValueAxis {
                           id: yAxis
                           min: 200
                           max: 250
                       }


               LineSeries {
                   id: lineSeries
                   name: "Örnek Seri"
                   width: 2.5
                   color: "#217efd"
                   axisX: xAxis
                   axisY: yAxis
                   XYPoint { x: 0; y: 222.15}
                   XYPoint { x: 1; y: 220.33}
                   XYPoint { x: 2; y: 224.35}
                   XYPoint { x: 3; y: 215.00}
                   XYPoint { x: 4; y: 225}


               }


               ScatterSeries {
                   id: maxPointSeries
                   color: "red"
                   markerSize: 10
                   axisX: xAxis
                   axisY: yAxis
               }


               MouseArea {
                   anchors.fill: parent
                   acceptedButtons: Qt.AllButtons // Bu satırı ekleyin; hem sol hem de sağ tuşla işlem yapabilmek için
                   onClicked: handleMouseAction()
                   onPositionChanged: handleMouseAction() // Bu satır yeni eklendi

                   function handleMouseAction() { // İşlevi ayrı bir fonksiyona taşıdık
                       var leftBoundary = chartView.plotArea.left;
                       var rightBoundary = chartView.plotArea.right;
                       var topBoundary = chartView.plotArea.top;
                       var bottomBoundary = chartView.plotArea.bottom;

                       if (mouseX >= leftBoundary && mouseX <= rightBoundary && mouseY >= topBoundary && mouseY <= bottomBoundary) {
                           var pointValue = chartView.mapToValue(Qt.point(mouseX, mouseY), lineSeries);
                           var pointPosition = chartView.mapToPosition(pointValue, lineSeries);
                           cursorItem.x = pointPosition.x;
                           cursorItem.y = pointPosition.y;
                           cursorXText1.text =  pointValue.x.toFixed(2).replace(".", ":")
                           cursorYText1.text=pointValue.y.toFixed(2) + " V"
                           cursorText.x = mouseX - cursorText.width / 2+9;
                           cursorText.y = mouseY - cursorText.height / 2;
                           mainCursor1.x= mouseX;
                           cursorText.text = "X: " + pointValue.x.toFixed(2).replace(".", ":") + " Y: " + pointValue.y.toFixed(2);
                           cursorText.visible = true;
                           mainCursor1.visible=true;
                       }
                   }
               }



               Rectangle {
                   id: cursorItem
                   width: 10
                   height: 10
                   color: "red"
                   visible: false
                   anchors.centerIn: parent
               }

               Text {
                   id: cursorText
//                   anchors.top: cursorItem.bottom
//                   anchors.horizontalCenter: cursorItem.horizontalCenter
                   visible: false
               }

               Rectangle{
                   id: mainCursor1
                   width: 2
                   height: chartView.height
                   color: "red"
                   anchors.top: parent.top
                   anchors.bottom: parent.bottom
                   anchors.bottomMargin: 55
                   anchors.topMargin: 40
                   visible: false
               }
        }

    }

    Image {
        id: rightMenuForLoggerData
        x: 1303
        y: -15
        width: 735/2
        source: "images/rightMenuForLoggerData.svg"
        fillMode: Image.PreserveAspectFit

    }



    // Function to handle item visibility changes
    function setItemVisibility4(index, visibility) {
        myModel4.setProperty(index, "visible", visibility);
        refreshVisibleItemsModel4();
    }











}




