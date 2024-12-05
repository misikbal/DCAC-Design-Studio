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
    color: "#ffffff"
    border.color: "#ffffff"

    property bool forGraphHold:true

//    property bool spaceAreaGraph1:true
//    property bool spaceAreaGraph2:true

    Component.onCompleted: {
        voltagecheck.checkBoxOn.visible=true
        voltagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
        currentcheck.checkBoxOn.visible=true
        currentcheck.checkBoxOFF.source="images/CheckBoxONBG.svg"

        peaktopeak.forPulseOn.visible=true
        peaktopeak.forPulseOn.x=-2
        peakpositive.forPulseOn.visible=true
        peakpositive.forPulseOn.x=-2
        peaknegative.forPulseOn.visible=true
        peaknegative.forPulseOn.x=-2
        rms.forPulseOn.visible=true
        rms.forPulseOn.x=-2
        average.forPulseOn.visible=true
        average.forPulseOn.x=-2

    }
    //    function calculateStats(series) {
    //        if (!series || series.count === 0) return { min: 0, max: 0, avg: 0 };

    //        var min = series.at(0).y;
    //        var max = series.at(0).y;
    //        var total = 0;

    //        for (var i = 0; i < series.count; i++) {
    //            var yValue = series.at(i).y;
    //            if (yValue < min) min = yValue;
    //            if (yValue > max) max = yValue;
    //            total += yValue;
    //        }

    //        var avg = total / series.count;
    //        return { min: min, max: max, avg: avg };
    //    }

    //    function updateAvgLine(avgValue) {
    //        avgSeries.clear();
    //        var xStart = 0;
    //        var xEnd = 2 * 3.14159;
    //        avgSeries.append(xStart, avgValue);
    //        avgSeries.append(xEnd, avgValue);
    //    }

    //    Timer {
    //        interval: 1000 // 1 saniye
    //        running: true
    //        repeat: true
    //        onTriggered: {
    //            var stats = calculateStats(lineSeries);
    //            min1.text = stats.min.toFixed(2) + ' V';
    //            max1.text = stats.max.toFixed(2) + ' V';
    //            avg1.text = stats.avg.toFixed(2) + ' V';
    //        }
    //    }




    //    function calculateStats2(series2) {
    //        if (!series2 || series2.count === 0) return { min2: 0, max2: 0, avg2: 0 };

    //        var min2 = series2.at(0).y;
    //        var max2 = series2.at(0).y;
    //        var total2 = 0;

    //        for (var i = 0; i < series2.count; i++) {
    //            var yValue2 = series2.at(i).y;
    //            if (yValue2 < min2) min2 = yValue2;
    //            if (yValue2 > max2) max2 = yValue2;
    //            total2 += yValue2;
    //        }

    //        var avg2 = total2 / series2.count;
    //        return { min2: min2, max2: max2, avg2: avg2 };
    //    }

    //    function updateAvgLine2(avgValue2) {
    //        avgSeries2.clear();
    //        var xStart2 = 0;
    //        var xEnd2 = 2 * 3.14159;
    //        avgSeries2.append(xStart2, avgValue2);
    //        avgSeries2.append(xEnd2, avgValue2);
    //    }

    //    Timer {
    //        interval: 1000 // 1 saniye
    //        running: true
    //        repeat: true
    //        onTriggered: {
    //            var stats2 = calculateStats2(lineSeries2);
    //            min2.text = stats2.min2.toFixed(2) + ' V';
    //            max2.text = stats2.max2.toFixed(2) + ' V';
    //            avg2.text = stats2.avg2.toFixed(2) + ' V';
    //        }
    //    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        //        width: stackViewstatus.width
        width: 1280
        height: 728
        color: "#F7F8FA"





        Rectangle {
            id: rectangle2
            x: 913
            y: 0
            width: 367
            height: 728
            color: "#ffffff"












            GroupItem {
                x: 83
                y: 4

                CustomHeaderForPhaseA{
                    x:0
                    y:0
                    width: 67
                    height:31
                    clip: true
                }

                CustomHeaderForPhaseB{
                    x:71
                    y:0
                    width: 67
                    height:31
                    clip: true
                }

                CustomHeaderForPhaseC{
                    x:142
                    y:0
                    width: 67
                    height:31
                    clip: true
                }

                CustomHeaderForPhaseN{
                    x:214
                    y:0
                    width: 67
                    height:31
                    clip: true
                }

                Text {
                    id: phaseAHarmonicHeader
                    x: -1
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
                    id: phaseAHarmonicHeader133
                    x: 70
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
                    id: phaseAHarmonicHeader233
                    x: 141
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

                Text {
                    id: phaseAHarmonicHeader3333
                    x: 213
                    y: -1

                    width: 63
                    height: 32
                    color: "#ffffff"
                    text: qsTr("Phase N")
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
                id: rectangleForPhase1
                x: 391
                y: -34
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



            Rectangle {
                id: rectangle3
                x: 0
                y: 50
                width: 78
                height: 260
                color: "#eff2f6"

                Rectangle {
                    id: rectangle77
                    x: 0
                    y: 292
                    width: 78
                    height: 260
                    color: "#eff2f6"
                }
            }


            Text {
                id: subHeaderText1
                x: 6
                y: 20
                width: 200/2
                height: 35
                color: "#284863"
                text: qsTr("Graph 1")
                font.letterSpacing: -2
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                lineHeight: 2.5
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: subHeaderText2
                x: 6
                y: 310
                width: 200/2
                height: 35
                color: "#284863"
                text: qsTr("Graph 2")
                font.letterSpacing: -2
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                lineHeight: 2.5
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Bold"
            }

            Image {
                id: bGHeader11
                x: 5
                y: 649
                width: 356
                height: 77
                source: "images/BGHeader.svg"
                fillMode: Image.Stretch

                Text {
                    id: subHeaderText4
                    x: 6
                    y: 2
                    width: 70
                    height: 35
                    color: "#c0d0e1"
                    text: qsTr("Graph 1")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Bold"
                }

                Text {
                    id: subHeaderText5
                    x: 6
                    y: 37
                    width: 70
                    height: 35
                    color: "#c0d0e1"
                    text: qsTr("Graph 2")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Bold"
                }

                Text {
                    id: subHeaderText6
                    x: 83
                    y: 2
                    width: 67
                    height: 35
                    color: "#c0d0e1"
                    text: qsTr("225.47")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    id: subHeaderText7
                    x: 83
                    y: 37
                    width: 67
                    height: 35
                    color: "#c0d0e1"
                    text: qsTr("205.12")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    id: subHeaderText8
                    x: 150
                    y: 2
                    width: 67
                    height: 35
                    color: "#c0d0e1"
                    text: qsTr("225.47")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    id: subHeaderText9
                    x: 150
                    y: 37
                    width: 67
                    height: 35
                    color: "#c0d0e1"
                    text: qsTr("225.47")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    id: subHeaderText10
                    x: 217
                    y: 2
                    width: 67
                    height: 35
                    color: "#c0d0e1"
                    text: qsTr("225.47")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    id: subHeaderText11
                    x: 217
                    y: 37
                    width: 67
                    height: 35
                    color: "#c0d0e1"
                    text: qsTr("205.12")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    id: subHeaderText12
                    x: 284
                    y: 2
                    width: 67
                    height: 35
                    color: "#c0d0e1"
                    text: qsTr("225.47")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    id: subHeaderText13
                    x: 284
                    y: 37
                    width: 67
                    height: 35
                    color: "#c0d0e1"
                    text: qsTr("225.47")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    id: subHeaderText14
                    x: 2
                    y: -19
                    width: 75
                    height: 20
                    color: "#c0d0e1"
                    text: qsTr("Values ")
                    font.letterSpacing: -2
                    font.pixelSize: 15
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3.4
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    id: subHeaderText3
                    x: 2
                    y: -46
                    width: 200/2
                    height: 35
                    color: "#c0d0e1"
                    text: qsTr("CURSOR")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 2.5
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Bold"
                }
            }

            Text {
                id: text1
                x: 391
                y: 36
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
                id: text2
                x: 462
                y: 36
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
                x: 533
                y: 36
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
                x: 604
                y: 36
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



            Flickable {
                id: flickable
                x: 0
                y: 43
                width: 367
                height: 261
                interactive: false
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
                        for (var i = 0; i < 5; i++) {
                            listmodel2.append({"text": "2" })
                        }
                    }
                }

                ListModel {
                    id: listmodel3

                    // Başlangıçta 101 adet öğe ekleyelim.
                    Component.onCompleted: {
                        for (var i = 0; i < 5; i++) {
                            listmodel3.append({"text": "3" })
                        }
                    }
                }





                ListModel {
                    id: listmodel4

                    // Başlangıçta 101 adet öğe ekleyelim.
                    Component.onCompleted: {
                        for (var i = 0; i < 5; i++) {
                            listmodel4.append({"text": "4" })
                        }
                    }
                }










                ////////////**STARTTTT*//////////////


                Text {
                    id: subHeaderText
                    x: 10
                    y: 14
                    width: 75
                    height: 259
                    color: "#284863"
                    text: qsTr("Voltage \nVoltage \nVoltage  \nVoltage  \nVoltage ")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignTop
                    lineHeight: 2.3
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }

                Text {
                    id: headerTexts
                    x: 10
                    y: 33
                    width: 75
                    height: 259
                    color: "#284863"
                    text: qsTr("Peak to Peak \nPeak+ \nPeak- \nRMS \nRMS Average ")
                    font.letterSpacing: -2
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3.4
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                ListModel {
                    id: listmodell

                    // Başlangıçta 101 adet öğe ekleyelim.
                    Component.onCompleted: {
                        for (var i = 0; i < 5; i++) {
                            listmodell.append({"text": "1" });
                        }
                    }
                }

                ListModel {
                    id: listmodellForFilter
                }




                ListView {
                    id: one
                    x: 85
                    y: 19
                    z:1
                    width: 72
                    height: 250
                    visible: true

                    interactive: false
                    contentY: 0
                    cacheBuffer: 323
                    maximumFlickVelocity: 5000
                    contentHeight: 5500
                    flickDeceleration: 3000
                    clip: false

                    spacing: 29
                    model: listmodell

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
                    x: 157
                    y: 19
                    width: 72
                    height: 250
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
                    x: 229
                    y: 19
                    width: 72
                    height: 250
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
                    x: 301
                    y: 19
                    width: 80
                    height: 250
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

            Flickable {
                id: flickable1
                x: 0
                y: 336
                width: 367
                height: 261
                clip: true
                interactive: false
                contentY: 0
                flickDeceleration: 3000
                maximumFlickVelocity: 5000
                contentHeight: 4500




                ListModel {
                    id: harmonicnames1

                    // Başlangıçta 101 adet öğe ekleyelim.
                    Component.onCompleted: {
                        for (var i = 0; i < 101; i++) {
                            harmonicnames1.append({"text": "H" + (0.5*i)})
                        }
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
                    id: listmodel21

                    // Başlangıçta 101 adet öğe ekleyelim.
                    Component.onCompleted: {
                        for (var i = 0; i < 5; i++) {
                            listmodel21.append({"text": "2" })
                        }
                    }
                }



                ListModel {
                    id: listmodel31

                    // Başlangıçta 101 adet öğe ekleyelim.
                    Component.onCompleted: {
                        for (var i = 0; i < 5; i++) {
                            listmodel31.append({"text": "3" })
                        }
                    }
                }






                ListModel {
                    id: listmodel41

                    // Başlangıçta 101 adet öğe ekleyelim.
                    Component.onCompleted: {
                        for (var i = 0; i < 5; i++) {
                            listmodel41.append({"text": "4" })
                        }
                    }
                }










                ////////////**STARTTTT*//////////////


                Text {
                    id: subHeaderText111
                    x: 10
                    y: 14
                    width: 75
                    height: 259
                    color: "#284863"
                    text: qsTr("Current \nCurrent\nCurrent\nCurrent\nCurrent")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignTop
                    lineHeight: 2.3
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                }

                Text {
                    id: headerTexts1
                    x: 10
                    y: 33
                    width: 75
                    height: 259
                    color: "#284863"
                    text: qsTr("Peak to Peak \nPeak+ \nPeak- \nRMS \nRMS Average ")
                    font.letterSpacing: -2
                    font.pixelSize: 12
                    verticalAlignment: Text.AlignTop
                    lineHeight: 3.4
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    font.family: "Akshar"
                }

                ListModel {
                    id: listmodell1

                    // Başlangıçta 101 adet öğe ekleyelim.
                    Component.onCompleted: {
                        for (var i = 0; i < 5; i++) {
                            listmodell1.append({"text": "1" });
                        }
                    }
                }

                ListModel {
                    id: listmodellForFilter1
                }




                ListView {
                    id: one1
                    x: 85
                    y: 19
                    z:1
                    width: 72
                    height: 250
                    visible: true

                    interactive: false
                    contentY: 0
                    cacheBuffer: 323
                    maximumFlickVelocity: 5000
                    contentHeight: 5500
                    flickDeceleration: 3000
                    clip: false

                    spacing: 29
                    model: listmodell1

                    delegate: Text {
                        color: "#284863"
                        text: model.text
                        font.pixelSize: 18

                    }

                    Component.onCompleted: {
                        for (var i = 0; i < listmodell1.count; i++) {
                            listmodellForFilter1.append(listmodell1.get(i));
                        }
                    }
                }


                ListView {
                    id: two1
                    x: 157
                    y: 19
                    width: 72
                    height: 250
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
                    model: listmodel21
                }

                ListView {
                    id: three1
                    x: 229
                    y: 19
                    width: 72
                    height: 250
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
                    model: listmodel31
                }

                ListView {
                    id: four1
                    x: 301
                    y: 19
                    width: 80
                    height: 250
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
                    model: listmodel41
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
        }





    }







    Rectangle {
        id: voltageGraph2
        x: 10
        y: 305
        width: 899
        height: 387
        visible: true
        color: "#00ffffff"
        Rectangle {
            id: rectangle502
            x: -2
            y: 0
            width: 901
            height: 387
            color: "#00ffffff"
            ChartView {
                id: chartView2
                backgroundColor: "#00ffffff"
                anchors.fill: parent
                anchors.rightMargin: -3
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: -7
                legend.visible: false
                antialiasing: true
                CategoryAxis {
                    id: xAxis2
                    min: 0
                    max: 4*3.14159
                    gridVisible: false
                    labelsPosition: CategoryAxis.AxisLabelsPositionOnValue
                    CategoryRange {
                        endValue: 0;   }
                    CategoryRange {
                        endValue: 2.5; }
                    CategoryRange {
                        endValue: 5;   }
                    CategoryRange {
                        endValue: 7.5; }
                    CategoryRange {
                        endValue: 10;  }
                    CategoryRange {
                        endValue: 12.56;
                    }


                }

                ValueAxis {
                    id: yAxis2
                    min: -250
                    max: 250
                }


                LineSeries {
                    id: lineSeries2
                    name: "Örnek Seri"
                    width: 2.5
                    color: "#217efd"
                    axisX: xAxis2
                    axisY: yAxis2


                    Component.onCompleted: {
                        for (var i = 0; i <= 4 * 3.14159; i += 0.01) {
                            var yValue = 220 * Math.sin(i) + 0;
                            append(i, yValue);
                        }
                    }

                }

                LineSeries {
                    id: lineSeries122
                    name: "Örnek Seri"
                    width: 2.5
                    color: "#FF5555"
                    axisX: xAxis2
                    axisY: yAxis2


                    Component.onCompleted: {
                        for (var i = 0; i <= 6 * 3.14159; i += 0.01) {
                            var yValue = 220 * Math.sin(i) + 0;
                            append(i-2, yValue);
                        }
                    }
                }

                LineSeries {
                    id: lineSeries132
                    name: "Örnek Seri"
                    width: 2.5
                    color: "#FCAE18"
                    axisX: xAxis2
                    axisY: yAxis2


                    Component.onCompleted: {
                        for (var i = 0; i <= 6 * 3.14159; i += 0.01) {
                            var yValue = 220 * Math.sin(i) + 0;
                            append(i-4, yValue);
                        }
                    }
                }



                //                    ScatterSeries {
                //                        id: pointSeries2
                //                        color: "red"
                //                        markerSize: 10
                //                        axisX: xAxis
                //                        axisY: yAxis
                //                    }
                //                    LineSeries {
                //                        id: avgSeries2
                //                        name: "Ortalama Seri"
                //                        width: 1.5
                //                        color: "red"
                //                        axisX: xAxis
                //                        axisY: yAxis
                //                    }

                //                    ScatterSeries {
                //                        id: pointSeriesMin2
                //                        color: "red"
                //                        markerSize: 10
                //                        axisX: xAxis
                //                        axisY: yAxis
                //                    }
                MouseArea {
                    anchors.fill: parent
                    onClicked: handleMouseAction2()
                    onPositionChanged: handleMouseAction2() // Bu satırı ekleyin

                    function handleMouseAction2() { // Bu işlemleri bir fonksiyon içerisine aldık
                        var leftBoundary2 = chartView2.plotArea.left;
                        var rightBoundary2 = chartView2.plotArea.right;
                        var topBoundary2 = chartView2.plotArea.top;
                        var bottomBoundary2 = chartView2.plotArea.bottom;

                        if (mouseX >= leftBoundary2 && mouseX <= rightBoundary2 && mouseY >= topBoundary2 && mouseY <= bottomBoundary2) {
                            var pointValue2 = chartView2.mapToValue(Qt.point(mouseX, mouseY), lineSeries2);
                            var pointPosition2 = chartView2.mapToPosition(pointValue2, lineSeries2);

                            var lineSeries122Y = 220 * Math.sin(chartView2.mapToValue(Qt.point(mouseX, ( mouseY - cursor.y)), lineSeries122).x) + 0;
                            var lineSeries132Y= 220 * Math.sin(chartView2.mapToValue(Qt.point(mouseX, ( mouseY - cursor.y)), lineSeries132).x) + 0;
                            cursorTextA.x =(mouseX - cursorTextA.width / 2) ;
                            cursorTextA.y=49
                            cursorTextB.x=(mouseX - cursorTextA.width / 2) ;
                            cursorTextB.y=75
                            cursorTextC.x=(mouseX - cursorTextA.width / 2) ;
                            cursorTextC.y=100

                            cursor.x=cursorTextA.x+70
                            cursor1.x=cursorTextA.x+70
                            cursorItem2.x = pointPosition2.x;

                            cursorXText1.text= "Time " + ((pointValue2.x)*(3.14159)).toFixed(2) + "ms"
                            cursorTextA.text ="                           " + pointValue2.y.toFixed(2)
                            cursorTextC.text = "                          " +  lineSeries132Y.toFixed(2)
                            cursorTextB.text = "                          " +  parseInt(-cursorTextC.text).toFixed(2)
                            cursorTextA2.x=cursorTextA.x
                            cursorTextB2.x=cursorTextB.x
                            cursorTextC2.x=cursorTextC.x
                            cursorTextA2.text=cursorTextA.text
                            cursorTextB2.text=cursorTextB.text
                            cursorTextC2.text=cursorTextC.text
                            cursorTextA2.y=345
                            cursorTextB2.y=371
                            cursorTextC2.y=395

//                            cursorText2.y = mouseY - cursorText2.height / 2;
//                            cursorYText1.text=pointValue2.y.toFixed(2) + " V"
                            //                                cursorYText1.text=pointValue2.y.toFixed(2) + " V"


                        }
                    }



                }



                Rectangle {
                    id: cursorItem2
                    width: 10
                    height: 10
                    color: "red"
                    visible: false
                    anchors.centerIn: parent
                }

                Text {
                    id: cursorText2
                    visible: false
                }
            }

        }

    }

    Rectangle {
        id: voltageGraph
        x: 10
        y: 10
        width: 899
        height: 387
        color: "#00ffffff"
        Rectangle {
            id: rectangle50
            x: -2
            y: 0
            width: 901
            height: 387
            color: "#00ffffff"
            ChartView {
                id: chartView
                backgroundColor: "#00ffffff"
                anchors.fill: parent
                anchors.rightMargin: -3
                anchors.bottomMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: -7
                legend.visible: false
                //               title: "Örnek Grafik"
                antialiasing: true
                CategoryAxis {
                    id: xAxis
                    color: "#d6d6d6"
                    min: 0
                    max: 4*3.1419
                    gridVisible: false
                    //                        labelsPosition: CategoryAxis.AxisLabelsPositionOnValue

                    CategoryRange { endValue: 1; }
                    CategoryRange { endValue: 2; }
                    CategoryRange { endValue: 3; }
                    CategoryRange { endValue: 4; }
                    CategoryRange { endValue: 5; }
                    CategoryRange { endValue: 6; }
                    CategoryRange { endValue: 7; }
                    CategoryRange { endValue: 8; }
                    CategoryRange { endValue: 9; }
                    CategoryRange { endValue: 10; }
                    CategoryRange { endValue: 11; }
                    CategoryRange { endValue: 12; }
                }


                ValueAxis {
                    id: yAxis
                    labelsVisible: true
                    tickCount: 5
                    min: -250

                    max: 250

                }


                LineSeries {
                    id: lineSeries
                    name: "Örnek Seri"
                    width: 2.5
                    color: "#217efd"
                    axisX: xAxis
                    axisY: yAxis


                    Component.onCompleted: {
                        for (var i = 0; i <= 4 * 3.14159; i += 0.01) {
                            var yValue = 220 * Math.sin(i) + 0;
                            append(i, yValue);
                        }
                    }

                }

                LineSeries {
                    id: lineSeries12
                    name: "Örnek Seri"
                    width: 2.5
                    color: "#FF5555"
                    axisX: xAxis
                    axisY: yAxis


                    Component.onCompleted: {
                        for (var i = 0; i <= 6 * 3.14159; i += 0.01) {
                            var yValue = 220 * Math.sin(i) + 0;
                            append(i-2, yValue);
                        }
                    }
                }

                LineSeries {
                    id: lineSeries13
                    name: "Örnek Seri"
                    width: 2.5
                    color: "#FCAE18"
                    axisX: xAxis
                    axisY: yAxis


                    Component.onCompleted: {
                        for (var i = 0; i <= 8 * 3.14159; i += 0.01) {
                            var yValue = 220 * Math.sin(i) + 0;
                            append(i-4, yValue);
                        }
                    }
                }



                ScatterSeries {
                    id: pointSeries
                    color: "red"
                    markerSize: 10
                    axisX: xAxis
                    axisY: yAxis
                }
                LineSeries {
                    id: avgSeries
                    name: "Ortalama Seri"
                    width: 1.5
                    color: "red"
                    axisX: xAxis
                    axisY: yAxis
                }

                ScatterSeries {
                    id: pointSeriesMin
                    color: "red"
                    markerSize: 10
                    axisX: xAxis
                    axisY: yAxis
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: handleMouseAction()
                    onPositionChanged: handleMouseAction() // Bu satırı ekleyin

                    function handleMouseAction() { // Bu işlemleri bir fonksiyon içerisine aldık
                        var leftBoundary = chartView.plotArea.left;
                        var rightBoundary = chartView.plotArea.right;
                        var topBoundary = chartView.plotArea.top;
                        var bottomBoundary = chartView.plotArea.bottom;

                        if (mouseX >= leftBoundary && mouseX <= rightBoundary && mouseY >= topBoundary && mouseY <= bottomBoundary) {
                            var pointValue = chartView.mapToValue(Qt.point(mouseX, mouseY), lineSeries);
                            var pointPosition = chartView.mapToPosition(pointValue, lineSeries);


                            // Calculate the y value for lineSeries12 based on cursor's height
                            //                            var cursorY = mouseY - cursor.y; // Yükseklikteki tıklanan konum

                            // Kesişim noktasını hesapla
                            var lineSeries12Y = 220 * Math.sin(chartView.mapToValue(Qt.point(mouseX, ( mouseY - cursor.y)), lineSeries12).x) + 0;
                            var lineSeries13Y= 220 * Math.sin(chartView.mapToValue(Qt.point(mouseX, ( mouseY - cursor.y)), lineSeries13).x) + 0;

                            cursorTextA.x =(mouseX - cursorTextA.width / 2) ;
                            cursorTextA.y=49
                            cursorTextB.x=(mouseX - cursorTextA.width / 2) ;
                            cursorTextB.y=75
                            cursorTextC.x=(mouseX - cursorTextA.width / 2) ;
                            cursorTextC.y=100



                            cursor.x=cursorTextA.x+70
                            cursor1.x=cursorTextA.x+70
                            cursorItem.x = pointPosition.x;

                            //                                cursorText.y = mouseY - cursorText.height / 2;

                            //                            cursorXText1.text=   pointValue.y.toFixed(2);    //ÖNEMLİİ Y DEĞERİ İÇİN
                            cursorXText1.text= "Time " + ((pointValue.x)*(3.14159)).toFixed(2) + "ms"
                            cursorTextA.text ="                           " + pointValue.y.toFixed(2)
                            cursorTextC.text = "                          " +  lineSeries13Y.toFixed(2)
                            cursorTextB.text = "                          " +  parseInt(-cursorTextC.text).toFixed(2)

                            cursorTextA2.x=cursorTextA.x
                            cursorTextB2.x=cursorTextB.x
                            cursorTextC2.x=cursorTextC.x
                            cursorTextA2.text=cursorTextA.text
                            cursorTextB2.text=cursorTextB.text
                            cursorTextC2.text=cursorTextC.text
                            cursorTextA2.y=345
                            cursorTextB2.y=371
                            cursorTextC2.y=395



                            // Metni kontrol etmek için JavaScript kullanalım

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
            }

        }



    }

    Text {
        id: beginGraph0
        x: 73
        y: 640
        color: "#333333"
        text: qsTr("0ms")
        font.pixelSize: 13
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Text {
        id: graph2Text1
        x: 151
        y: 640
        color: "#333333"
        text: qsTr("4ms")
        font.pixelSize: 13
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Text {
        id: graph2Text2
        x: 231
        y: 640
        color: "#333333"
        text: qsTr("8ms")
        font.pixelSize: 13
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Text {
        id: graph2Text3
        x: 311
        y: 640
        color: "#333333"
        text: qsTr("12ms")
        font.pixelSize: 13
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Text {
        id: graph2Text4
        x: 391
        y: 640
        color: "#333333"
        text: qsTr("16ms")
        font.pixelSize: 13
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Text {
        id: graph2Text5
        x: 471
        y: 640
        color: "#333333"
        text: qsTr("20ms")
        font.pixelSize: 13
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Text {
        id: graph2Text6
        x: 551
        y: 640
        color: "#333333"
        text: qsTr("24ms")
        font.pixelSize: 13
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Text {
        id: graph2Text7
        x: 631
        y: 640
        color: "#333333"
        text: qsTr("28ms")
        font.pixelSize: 13
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Text {
        id: graph2Text8
        x: 711
        y: 640
        color: "#333333"
        text: qsTr("32ms")
        font.pixelSize: 13
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Text {
        id: endGraph
        x: 867
        y: 640
        color: "#333333"
        text: qsTr("40ms")
        font.pixelSize: 13
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Text {
        id: graph2Text9
        x: 791
        y: 640
        width: 32
        height: 13
        color: "#333333"
        text: qsTr("36ms")
        font.pixelSize: 13
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Text {
        id: cursorYText1
        x: 913
        y: 774
        color: "#284863"
        text: qsTr("Time ")
        font.pixelSize: 20
        font.styleName: "Light"
        font.family: "Akshar"
    }


    Text {
        id: cursorXText1
        x: 689
        y: 680
        color: "#284863"
        text: qsTr("Time ")
        font.pixelSize: 20
        font.styleName: "Light"
        font.family: "Akshar"
    }

    Image {
        id: holdNonClicked
        x: 79
        y: 662
        width: 834
        height: 64
        source: "images/HoldNonClicked.svg"
        fillMode: Image.Stretch
    }

    Image {
        id: holdClicked
        x: 79
        y: 756
        width: 834
        source: "images/HoldClicked.svg"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: holdButtonText
        x: 79
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
            property: "width"
            duration: 300
            to: 560
        }
        NumberAnimation{
            target: holdButtonText
            property: "width"
            duration: 300
            to: 560
        }
    }


    ParallelAnimation{
        id:holdButtonNonClickedAnim
        NumberAnimation{
            target: holdNonClicked
            property: "width"
            duration: 300
            to: 834
        }
        NumberAnimation{
            target: holdButtonText
            property: "width"
            duration: 300
            to: 834
        }
    }


    MouseArea{
        x: 79
        y: 662
        width: 834
        height:64
        onClicked: {
            if(forGraphHold===true){
                forGraphHold=false
                holdNonClicked.source="images/HoldClicked.svg"
                holdButtonClickedAnim.start()
                subHeaderText3.color="#284863"
                subHeaderText4.color="#284863"
                subHeaderText5.color="#284863"
                subHeaderText6.color="#284863"
                subHeaderText7.color="#284863"
                subHeaderText8.color="#284863"
                subHeaderText9.color="#284863"
                subHeaderText10.color="#284863"
                subHeaderText11.color="#284863"
                subHeaderText12.color="#284863"
                subHeaderText13.color="#284863"
                subHeaderText14.color="#284863"

                if(voltageGraph2.visible===false){
                    cursor.visible=false
                    cursorTextA2.visible=false
                    cursorTextB2.visible=false
                    cursorTextC2.visible=false
                    cursor1.visible=true
                    cursorTextA.visible=true
                    cursorTextB.visible=true
                    cursorTextC.visible=true


                }
                else{
                    cursor.visible=true
                    cursorTextA2.visible=true
                    cursorTextB2.visible=true
                    cursorTextC2.visible=true
                    cursor1.visible=true
                    cursorTextA.visible=true
                    cursorTextB.visible=true
                    cursorTextC.visible=true
                }




            }
            else{
                forGraphHold=true
                holdNonClicked.source="images/HoldNonClicked.svg"
                holdButtonNonClickedAnim.start()
                subHeaderText3.color="#c0d0e1"
                subHeaderText4.color="#c0d0e1"
                subHeaderText5.color="#c0d0e1"
                subHeaderText6.color="#c0d0e1"
                subHeaderText7.color="#c0d0e1"
                subHeaderText8.color="#c0d0e1"
                subHeaderText9.color="#c0d0e1"
                subHeaderText10.color="#c0d0e1"
                subHeaderText11.color="#c0d0e1"
                subHeaderText12.color="#c0d0e1"
                subHeaderText13.color="#c0d0e1"
                subHeaderText14.color="#c0d0e1"
                cursor.visible=false
                cursor1.visible=false
                cursorTextA.visible=false
                cursorTextB.visible=false
                cursorTextC.visible=false
                cursorTextA2.visible=false
                cursorTextB2.visible=false
                cursorTextC2.visible=false



            }

        }
    }


    Image {
        id: cursor1
        x: 196
        y: 48
        width: 205/2
        height: 590
        visible: false
        source: "images/cursorForGraph1.svg"
        fillMode: Image.Stretch
    }



    Image {
        id: cursor
        x: 196
        y: 48
        width: 205/2
        height: 590
        visible: false
        source: "images/Cursor.svg"
        fillMode: Image.Stretch
    }

    Text {
        id: cursorTextA2
        x: 1
        y: 50
        visible: false
        color: "#FFFFFF"
    }

    Text {
        id: cursorTextB2
        x: 1
        y: 50
        visible: false
        color: "#ffffff"
    }

    Text {
        id: cursorTextC2
        x: 1
        y: 50
        visible: false
        color: "#ffffff"
    }

    Text {
        id: cursorTextA
        x: 1
        y: 50
        visible: false
        color: "#ffffff"
    }


    Text {
        id: cursorTextB
        x: 1
        y: 50
        visible: false
        color: "#ffffff"
    }

    Text {
        id: cursorTextC
        x: 1
        y: 50
        visible: false
        color: "#ffffff"
    }



    Image {
        id: menu
        x: -348
        y: 0
        width: 696/2
        source: "images/Menu.svg"
        fillMode: Image.PreserveAspectFit




        Image {
            id: bgForHeader4
            x: 10
            y: 420
            width: 328
            height: 306
            source: "images/BGHeader.svg"
            fillMode: Image.Stretch
        }

        CustomButtonHeaderBlackBG{
            width: 328
            height: 40
            clip: true
            x:10
            y:10
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











        Text {
            id: for18PulseText1
            x: 19
            y: 10
            width: 121
            height: 40
            color: "#ffffff"
            text: qsTr("Wave")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }


        Image {
            id: bgForHeader3
            x: 10
            y: 50
            width: 328
            height: 318
            source: "images/BGHeader.svg"
            fillMode: Image.Stretch

            CustomButtonHeaderBlackBG{
                x: 267
                y: 15
                width: 57
                height:46
                clip: true


            }


            Image {
                id: okUp1
                x: 289
                y: 33
                width: 28/2
                source: "images/OkUp.svg"
                rotation: 0
                fillMode: Image.PreserveAspectFit
            }




            Rectangle {
                id:chosingHeaderPhase
                x:128
                y: 83
                width: 95
                height: 53
                color: "#217efd"

            }

            MouseArea {
                id: mouseAreaGraphA1
                x: 5
                y: 82
                width: 114
                height: 53
                onClicked: {
                    phase1Text.color="#ffffff"
                    phase2Text.color="#284863"
                    chosingHeaderPhase.x=25

                    voltagecheck.checkBoxOn.visible=true
                    voltagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    currentcheck.checkBoxOn.visible=false
                    currentcheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    powercheck.checkBoxOn.visible=false
                    powercheck.checkBoxOFF.source="images/CheckBoxOFF.svg"


                    voltageGraph2.visible=false
                    voltageGraph.visible=true
                    voltageGraph.y=10
                    voltageGraph.height=685
                    rectangle50.height=685
                    subHeaderText1.visible=true
                    subHeaderText2.visible=false
                    rectangle3.height=550
                    flickable1.visible=false
                    flickable.visible=true

                    if(currentcheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===false)
                    {

                        voltageGraph.visible=true
                        voltageGraph.y=10
                        voltageGraph.height=685
                        rectangle3.visible=true
                        rectangle3.height=550
                        subHeaderText1.visible=true
                        flickable.visible=true
                        flickable.y=43
                        rectangle50.height=685
                        subHeaderText2.visible=false
                        flickable1.visible=false
                        voltageGraph2.visible=false



                        lineSeries2.clear();
                        lineSeries.clear();

                        for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                            var yValue1 = 220 * Math.sin(i1) + 0;
                            lineSeries.append(i1, yValue1);
                        }

                        lineSeries122.clear();
                        lineSeries12.clear();
                        for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                            var yValue2 = 220 * Math.sin(i2) + 0;
                            lineSeries12.append(i2-2, yValue2);
                        }

                        lineSeries132.clear();
                        lineSeries13.clear();
                        for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                            var yValue3 = 220 * Math.sin(i3) + 0;
                            lineSeries13.append(i3-4, yValue3);
                        }



                    }




                }

            }





            MouseArea {
                id: mouseAreaGraphA2
                x: 121
                y: 82
                width: 114
                height: 53
                onClicked: {
                    phase1Text.color="#284863"
                    phase2Text.color="#ffffff"

                    chosingHeaderPhase.x=128



                    lineSeries2.clear();
                            lineSeries.clear();

                            for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                var yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries2.append(i1, yValue1);
                                lineSeries.append(i1, yValue1);
                            }

                            lineSeries122.clear();
                            lineSeries12.clear();
                            for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                var yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries122.append(i2-2, yValue2);
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries132.clear();
                            lineSeries13.clear();
                            for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                var yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries132.append(i3-4, yValue3);
                                lineSeries13.append(i3-4, yValue3);
                            }



                        voltageGraph.height=387
                        voltageGraph.visible=true
                        voltageGraph.y=10
                        rectangle50.height=387
                        rectangle502.height=387
                        rectangle3.height=260
                        rectangle3.visible=true
                        subHeaderText1.visible=true
                        subHeaderText2.visible=true
                        flickable.visible=true
                        flickable.y=43
                        flickable1.visible=true
                        flickable1.y=336
                        voltageGraph2.visible=true
                        voltageGraph2.y=305
                        voltageGraph2.height=387






                    currentcheck.checkBoxOn.visible=true
                    currentcheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    voltagecheck.checkBoxOn.visible=true
                    voltagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"



                }
            }


            Text {
                id: phase2Text
                x: 133
                y: 78
                width: 102
                height: 63
                color: "#ffffff"
                text: qsTr("2 Graph")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }


            Text {
                id: phase1Text
                x: 31
                y: 78
                width: 102
                height: 63
                color: "#284863"
                text: qsTr("1 Graph")
                font.letterSpacing: -2
                font.pixelSize: 24
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }


            CustomSwitchForPhaseA{
                id:customswitchA
                x: 8
                y:250
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
                    one1.visible=true
                    a.color="#FF5555"

                    if(chosingHeaderPhase.x===25 ){
                        lineSeries122.clear();
                        lineSeries12.clear();

                        for (var i1 = 0; i1 <= 6 * 3.14159; i1 += 0.01) {
                            var yValue1 = 220 * Math.sin(i1) + 0;
                            lineSeries12.append(i1-2, yValue1);

                        }

                    }

                    else if(chosingHeaderPhase.x===128 ){
                        lineSeries122.clear();
                        lineSeries12.clear();

                        for (var i1 = 0; i1 <= 6 * 3.14159; i1 += 0.01) {
                            var yValue1 = 220 * Math.sin(i1) + 0;
                            lineSeries122.append(i1-2, yValue1);
                            lineSeries12.append(i1-2, yValue1);
                        }
                    }






                }
                onNonclickedSignal:  {

                    one.visible=false
                    one1.visible=false
                    a.color="#617284"


                    if(chosingHeaderPhase.x===25 ){
                        lineSeries12.clear();
                    }
                    else if(chosingHeaderPhase.x===128){
                        lineSeries122.clear();
                        lineSeries12.clear();
                    }
                }

            }


            CustomSwitchForPhaseB {
                id:customswitchB
                x: 88
                y: 250

                Text {
                    id: b
                    x: 0
                    y: 0
                    width: 80
                    height: 35
                    color: "#fcae18"
                    text: qsTr("B")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                }
                onClickedSignal: {
                    two.visible=true
                    two1.visible=true
                    b.color="#fcae18"

                    if(chosingHeaderPhase.x===25 ){
                        lineSeries132.clear();
                        lineSeries13.clear();

                        for (var i1 = 0; i1 <= 6 * 3.14159; i1 += 0.01) {
                            var yValue1 = 220 * Math.sin(i1) + 0;
                            lineSeries13.append(i1-4, yValue1);

                        }

                    }

                    else if(chosingHeaderPhase.x===128 ){
                        lineSeries132.clear();
                        lineSeries13.clear();

                        for (var i1 = 0; i1 <= 6 * 3.14159; i1 += 0.01) {
                            var yValue1 = 220 * Math.sin(i1) + 0;
                            lineSeries132.append(i1-4, yValue1);
                            lineSeries13.append(i1-4, yValue1);
                        }
                    }

                }
                onNonclickedSignal:  {

                    two.visible=false
                    two1.visible=false
                    b.color="#617284"

                    if(chosingHeaderPhase.x===25 ){
                        lineSeries132.clear();
                    }
                    else if(chosingHeaderPhase.x===128){
                        lineSeries132.clear();
                        lineSeries13.clear();
                    }



                }
            }


            CustomSwitchForPhaseC {
                id:customswitchC
                x: 168
                y: 250
                Text {
                    id: c
                    x: 0
                    y: 0
                    width: 80
                    height: 35
                    color: "#217efd"
                    text: qsTr("C")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                }
                onClickedSignal: {

                    three.visible=true
                    three1.visible=true
                    c.color="#217efd"

                    if(chosingHeaderPhase.x===25 ){
                        lineSeries2.clear();
                        lineSeries.clear();

                        for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                            var yValue1 = 220 * Math.sin(i1) + 0;
                            lineSeries.append(i1, yValue1);

                        }

                    }

                    else if(chosingHeaderPhase.x===128 ){
                        lineSeries2.clear();
                        lineSeries.clear();

                        for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                            var yValue1 = 220 * Math.sin(i1) + 0;
                            lineSeries2.append(i1, yValue1);
                            lineSeries.append(i1, yValue1);
                        }
                    }




                }
                onNonclickedSignal:  {

                    three.visible=false
                    three1.visible=false
                    c.color="#617284"

                    if(chosingHeaderPhase.x===25 ){
                        lineSeries.clear();
                    }
                    else if(chosingHeaderPhase.x===128){
                        lineSeries2.clear();
                        lineSeries.clear();
                    }

                }
            }


            CustomSwitchForPhaseN {
                id:customswitchN
                x: 248
                y: 250

                Text {
                    id: n
                    x: 0
                    y: 0
                    width: 80
                    height: 35
                    color: "#4ec040"
                    text: qsTr("N")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                }
                onClickedSignal: {

                    four.visible=true
                    four1.visible=true
                    n.color="#4ec040"



                }
                onNonclickedSignal:  {

                    four.visible=false
                    four1.visible=false
                    n.color="#617284"



                }

            }


            Text {
                x: 10
                y: 26
                width: 119
                height: 22
                color: "#284863"
                text: qsTr("Time division")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
            }

            Rectangle {
                id: rectangle4
                x: 0
                y: 136
                width: 328
                height: 182
                color: "#00ffffff"
                border.color: "#217efd"
                border.width: 2
            }


            Image {
                id: bGHeader1
                x: 2
                y: 138
                width: 324
                height: 87
                source: "images/BGHeader.svg"
                fillMode: Image.PreserveAspectFit
                CustomCheckBox {
                    id:voltagecheck
                    x: 9
                    y: 10
                    width: 130
                    height: 35
                    clip: true
                    onClickedSignal: {


                        if(currentcheck.checkBoxOn.visible===true && powercheck.checkBoxOn.visible===true){
                            voltagecheck.checkBoxOn.visible=false
                            voltagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                            chosingHeaderPhase.x=128

                        }


                        if(chosingHeaderPhase.x===25 && currentcheck.checkBoxOn.visible===true ){
                            voltagecheck.checkBoxOn.visible=false
                            voltagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                        }
                        else if(chosingHeaderPhase.x===25 && powercheck.checkBoxOn.visible===true ){
                            voltagecheck.checkBoxOn.visible=false
                            voltagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                        }

                        if(currentcheck.checkBoxOn.visible===true && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===128){
                            voltageGraph.height=387
                            voltageGraph.y=10
                            voltageGraph.visible=true
                            rectangle50.height=387
                            rectangle502.height=387
                            rectangle3.height=260
                            rectangle3.visible=true
                            subHeaderText2.visible=true
                            flickable1.visible=true
                            flickable1.y=336
                            voltageGraph2.visible=true
                            voltageGraph2.y=305
                            voltageGraph2.height=387
                            subHeaderText1.visible=true
                            flickable.visible=true
                            flickable.y=43


                            lineSeries2.clear();
                            lineSeries.clear();

                            for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                var yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries2.append(i1, yValue1);
                                lineSeries.append(i1, yValue1);
                            }

                            lineSeries122.clear();
                            lineSeries12.clear();
                            for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                var yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries122.append(i2-2, yValue2);
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries132.clear();
                            lineSeries13.clear();
                            for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                var yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries132.append(i3-4, yValue3);
                                lineSeries13.append(i3-4, yValue3);
                            }







                        }
                        else if(currentcheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===true && chosingHeaderPhase.x===128){
                            voltageGraph.height=387
                            voltageGraph.y=10
                            voltageGraph.visible=true
                            rectangle50.height=387
                            rectangle502.height=387
                            rectangle3.height=260
                            rectangle3.visible=true
                            subHeaderText2.visible=true
                            flickable1.visible=true
                            flickable1.y=336
                            voltageGraph2.visible=true
                            voltageGraph2.y=305
                            voltageGraph2.height=387
                            subHeaderText1.visible=true
                            flickable.visible=true
                            flickable.y=43


                            lineSeries2.clear();
                            lineSeries.clear();

                            for (var i = 0; i <= 4 * 3.14159; i += 0.01) {
                                var yValue = 220 * Math.sin(i) + 0;
                                lineSeries2.append(i, yValue);
                                lineSeries.append(i, yValue);
                            }

                            lineSeries122.clear();
                            lineSeries12.clear();
                            for ( i = 0; i <= 6 * 3.14159; i += 0.01) {
                                 yValue = 220 * Math.sin(i) + 0;
                                lineSeries122.append(i-2, yValue);
                                lineSeries12.append(i-2, yValue);
                            }

                            lineSeries132.clear();
                            lineSeries13.clear();
                            for ( i = 0; i <= 6 * 3.14159; i += 0.01) {
                                 yValue = 220 * Math.sin(i) + 0;
                                lineSeries132.append(i-4, yValue);
                                lineSeries13.append(i-4, yValue);
                            }



                        }
                        else if(currentcheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===128){

                            voltageGraph.height=387
                            voltageGraph.visible=true
                            voltageGraph.y=10
                            rectangle50.height=387
                            rectangle502.height=387
                            rectangle3.height=260
                            rectangle3.visible=true
                            subHeaderText1.visible=true
                            subHeaderText2.visible=true
                            flickable.visible=true
                            flickable.y=43
                            flickable1.visible=false
                            flickable1.y=336
                            voltageGraph2.visible=true
                            voltageGraph2.y=305
                            voltageGraph2.height=387



                            lineSeries2.clear();
                            lineSeries.clear();

                            for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                var yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries.append(i1, yValue1);
                            }

                            lineSeries122.clear();
                            lineSeries12.clear();
                            for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                var yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries132.clear();
                            lineSeries13.clear();
                            for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                var yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries13.append(i3-4, yValue3);
                            }

                        }

                        else if(currentcheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===25){


                            voltageGraph.visible=true
                            voltageGraph.y=10
                            voltageGraph.height=685
                            rectangle3.visible=true
                            rectangle3.height=550
                            subHeaderText1.visible=true
                            flickable.visible=true
                            flickable.y=43
                            rectangle50.height=685
                            subHeaderText2.visible=false
                            flickable1.visible=false
                            voltageGraph2.visible=false



                            lineSeries2.clear();
                            lineSeries.clear();

                            for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                var yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries.append(i1, yValue1);
                            }

                            lineSeries122.clear();
                            lineSeries12.clear();
                            for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                var yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries132.clear();
                            lineSeries13.clear();
                            for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                var yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries13.append(i3-4, yValue3);
                            }


                        }


                    }
                    onNonclickedSignal: {



                          if(currentcheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===128){

                              voltageGraph.visible=true
                              voltageGraph.height=387
                              voltageGraph.y=10
                              rectangle50.height=387
                              voltageGraph2.visible=true
                              voltageGraph2.y=305
                              voltageGraph2.height=387
                              subHeaderText1.visible=true
                              subHeaderText2.visible=true
                              flickable.visible=false
                              flickable.y=43
                              flickable1.visible=false
                              flickable1.y=336
                              rectangle502.height=387
                              rectangle3.visible=true
                              rectangle3.height=260


                              lineSeries.clear();
                              lineSeries2.clear();


                              lineSeries122.clear();
                              lineSeries12.clear();


                              lineSeries132.clear();
                              lineSeries13.clear();

                        }

                          else if(currentcheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===true && chosingHeaderPhase.x===128){

                              voltageGraph.visible=true
                              voltageGraph.height=387
                              voltageGraph.y=10
                              rectangle50.height=387
                              voltageGraph2.visible=true
                              voltageGraph2.y=305
                              voltageGraph2.height=387
                              subHeaderText1.visible=true
                              subHeaderText2.visible=true
                              flickable.visible=true
                              flickable.y=43
                              flickable1.visible=false
                              flickable1.y=336
                              rectangle502.height=387
                              rectangle3.visible=true
                              rectangle3.height=260

                              lineSeries.clear();
                              lineSeries2.clear();

                              for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                  var yValue1 = 220 * Math.sin(i1) + 0;
                                  lineSeries.append(i1, yValue1);
                              }


                              lineSeries12.clear();
                              lineSeries122.clear();
                              for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                  var yValue2 = 220 * Math.sin(i2) + 0;
                                  lineSeries12.append(i2-2, yValue2);
                              }

                              lineSeries13.clear();
                              lineSeries132.clear();
                              for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                  var yValue3 = 220 * Math.sin(i3) + 0;
                                  lineSeries13.append(i3-4, yValue3);

                              }

                          }

                        else if(currentcheck.checkBoxOn.visible===true && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===128){

                              voltageGraph.visible=true
                              voltageGraph.height=387
                              voltageGraph.y=10
                              rectangle50.height=387
                              voltageGraph2.visible=true
                              voltageGraph2.y=305
                              voltageGraph2.height=387
                              subHeaderText1.visible=true
                              subHeaderText2.visible=true
                              flickable.visible=true
                              flickable.y=43
                              flickable1.visible=false
                              flickable1.y=336
                              rectangle502.height=387
                              rectangle3.visible=true
                              rectangle3.height=260

                              lineSeries.clear();
                              lineSeries2.clear();

                              for (i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                   yValue1 = 220 * Math.sin(i1) + 0;
                                  lineSeries.append(i1, yValue1);
                              }


                              lineSeries12.clear();
                              lineSeries122.clear();
                              for ( i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                   yValue2 = 220 * Math.sin(i2) + 0;
                                  lineSeries12.append(i2-2, yValue2);
                              }

                              lineSeries13.clear();
                              lineSeries132.clear();
                              for ( i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                   yValue3 = 220 * Math.sin(i3) + 0;
                                  lineSeries13.append(i3-4, yValue3);

                              }
                        }


                          else if(currentcheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===25){


                              voltageGraph.visible=true
                              voltageGraph.y=10
                              voltageGraph.height=685
                              rectangle3.visible=true
                              rectangle3.height=550
                              subHeaderText1.visible=true
                              flickable.visible=true
                              flickable.y=43
                              rectangle50.height=685
                              subHeaderText2.visible=false
                              flickable1.visible=false
                              voltageGraph2.visible=false



                              lineSeries2.clear();
                              lineSeries.clear();

                              lineSeries122.clear();
                              lineSeries12.clear();

                              lineSeries132.clear();
                              lineSeries13.clear();

                          }




                    }

                    Text {
                        x: 30
                        y: 7
                        width: 100
                        height: 22
                        color: "#284863"
                        text: qsTr("Voltage")
                        font.pixelSize: 18
                        verticalAlignment: Text.AlignVCenter
                    }

                }

                CustomCheckBox {
                    id:powercheck
                    x: 9
                    y: 45
                    width: 130
                    height: 35
                    clip: true

                    onClickedSignal: {

                        if(voltagecheck.checkBoxOn.visible===true && currentcheck.checkBoxOn.visible===true){
                            powercheck.checkBoxOn.visible=false
                            powercheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                            chosingHeaderPhase.x=128

                        }
                        if(chosingHeaderPhase.x===25 && voltagecheck.checkBoxOn.visible===true ){
                            powercheck.checkBoxOn.visible=false
                            powercheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                        }
                        else if(chosingHeaderPhase.x===25 && currentcheck.checkBoxOn.visible===true ){
                            powercheck.checkBoxOn.visible=false
                            powercheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                        }

                        if(voltagecheck.checkBoxOn.visible===true && currentcheck.checkBoxOn.visible===false && chosingHeaderPhase.x===128){



                            voltageGraph.height=387
                            voltageGraph.visible=true
                            voltageGraph.y=10
                            rectangle50.height=387
                            rectangle502.height=387
                            rectangle3.height=260
                            rectangle3.visible=true
                            subHeaderText1.visible=true
                            subHeaderText2.visible=true
                            flickable.visible=true
                            flickable.y=43
                            flickable1.visible=true
                            flickable1.y=336
                            voltageGraph2.visible=true
                            voltageGraph2.y=305
                            voltageGraph2.height=387

                            lineSeries2.clear();
                            lineSeries.clear();

                            for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                var yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries2.append(i1, yValue1);
                                lineSeries.append(i1, yValue1);
                            }

                            lineSeries122.clear();
                            lineSeries12.clear();
                            for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                var yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries122.append(i2-2, yValue2);
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries132.clear();
                            lineSeries13.clear();
                            for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                var yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries132.append(i3-4, yValue3);
                                lineSeries13.append(i3-4, yValue3);
                            }


                        }

                        else if(voltagecheck.checkBoxOn.visible===false && currentcheck.checkBoxOn.visible===false && chosingHeaderPhase.x===128){

                            voltageGraph.visible=true
                            voltageGraph.height=387
                            voltageGraph.y=10
                            rectangle50.height=387
                            voltageGraph2.visible=true
                            voltageGraph2.y=305
                            voltageGraph2.height=387
                            subHeaderText1.visible=true
                            subHeaderText2.visible=true
                            flickable.visible=true
                            flickable.y=43
                            flickable1.visible=false
                            flickable1.y=336
                            rectangle502.height=387
                            rectangle3.visible=true
                            rectangle3.height=260

                            lineSeries.clear();
                            lineSeries2.clear();

                            for (i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                 yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries.append(i1, yValue1);
                            }


                            lineSeries12.clear();
                            lineSeries122.clear();
                            for ( i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                 yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries13.clear();
                            lineSeries132.clear();
                            for ( i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                 yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries13.append(i3-4, yValue3);

                            }
                        }

                        else if(voltagecheck.checkBoxOn.visible===false && currentcheck.checkBoxOn.visible===true && chosingHeaderPhase.x===128){

                            lineSeries2.clear();
                            lineSeries.clear();

                            for (  i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                  yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries2.append(i1, yValue1);
                                lineSeries.append(i1, yValue1);
                            }

                            lineSeries122.clear();
                            lineSeries12.clear();
                            for ( i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                  yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries122.append(i2-2, yValue2);
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries132.clear();
                            lineSeries13.clear();
                            for ( i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                  yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries132.append(i3-4, yValue3);
                                lineSeries13.append(i3-4, yValue3);
                            }

                            voltageGraph.height=387
                            voltageGraph.visible=true
                            voltageGraph.y=10
                            rectangle50.height=387
                            rectangle502.height=387
                            rectangle3.height=260
                            rectangle3.visible=true
                            subHeaderText1.visible=true
                            subHeaderText2.visible=true
                            flickable.visible=true
                            flickable.y=43
                            flickable1.visible=true
                            flickable1.y=336
                            voltageGraph2.visible=true
                            voltageGraph2.y=305
                            voltageGraph2.height=387

                        }

                        else if(voltagecheck.checkBoxOn.visible===false && currentcheck.checkBoxOn.visible===false && chosingHeaderPhase.x===25){


                            voltageGraph.visible=true
                            voltageGraph.y=10
                            voltageGraph.height=685
                            rectangle3.visible=true
                            rectangle3.height=550
                            subHeaderText1.visible=true
                            flickable.visible=true
                            flickable.y=43
                            rectangle50.height=685
                            subHeaderText2.visible=false
                            flickable1.visible=false
                            voltageGraph2.visible=false



                            lineSeries2.clear();
                            lineSeries.clear();

                            for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                var yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries.append(i1, yValue1);
                            }

                            lineSeries122.clear();
                            lineSeries12.clear();
                            for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                var yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries132.clear();
                            lineSeries13.clear();
                            for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                var yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries13.append(i3-4, yValue3);
                            }
                        }

                    }
                    onNonclickedSignal:
                    {
                        if(voltagecheck.checkBoxOn.visible===true  && currentcheck.checkBoxOn.visible===false  && chosingHeaderPhase.x===128){
                            voltageGraph.visible=true
                            voltageGraph.height=387
                            voltageGraph.y=10
                            rectangle50.height=387
                            voltageGraph2.visible=true
                            voltageGraph2.y=305
                            voltageGraph2.height=387
                            subHeaderText1.visible=true
                            subHeaderText2.visible=true
                            flickable.visible=true
                            flickable.y=43
                            flickable1.visible=false
                            flickable1.y=336
                            rectangle502.height=387
                            rectangle3.visible=true
                            rectangle3.height=260

                            lineSeries.clear();
                            lineSeries2.clear();

                            for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                 var yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries.append(i1, yValue1);
                            }


                            lineSeries12.clear();
                            lineSeries122.clear();
                            for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                 var yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries13.clear();
                            lineSeries132.clear();
                            for ( var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                 var yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries13.append(i3-4, yValue3);

                            }

                        }

                        else if(voltagecheck.checkBoxOn.visible===false && currentcheck.checkBoxOn.visible===false  && chosingHeaderPhase.x===128){

                            voltageGraph.visible=true
                            voltageGraph.height=387
                            voltageGraph.y=10
                            rectangle50.height=387
                            voltageGraph2.visible=true
                            voltageGraph2.y=305
                            voltageGraph2.height=387
                            subHeaderText1.visible=true
                            subHeaderText2.visible=true
                            flickable.visible=false
                            flickable.y=43
                            flickable1.visible=false
                            flickable1.y=336
                            rectangle502.height=387
                            rectangle3.visible=true
                            rectangle3.height=260


                            lineSeries.clear();
                            lineSeries2.clear();


                            lineSeries122.clear();
                            lineSeries12.clear();


                            lineSeries132.clear();
                            lineSeries13.clear();
                        }

                        else if(voltagecheck.checkBoxOn.visible===false && currentcheck.checkBoxOn.visible===true  && chosingHeaderPhase.x===128){

                            voltageGraph.visible=true
                            voltageGraph.height=387
                            voltageGraph.y=10
                            rectangle50.height=387
                            voltageGraph2.visible=true
                            voltageGraph2.y=305
                            voltageGraph2.height=387
                            subHeaderText1.visible=true
                            subHeaderText2.visible=true
                            flickable.visible=true
                            flickable.y=43
                            flickable1.visible=false
                            flickable1.y=336
                            rectangle502.height=387
                            rectangle3.visible=true
                            rectangle3.height=260

                            lineSeries.clear();
                            lineSeries2.clear();

                            for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                 var yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries.append(i1, yValue1);
                            }


                            lineSeries12.clear();
                            lineSeries122.clear();
                            for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                 var yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries13.clear();
                            lineSeries132.clear();
                            for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                 var yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries13.append(i3-4, yValue3);

                            }

                        }

                        else if(voltagecheck.checkBoxOn.visible===false && currentcheck.checkBoxOn.visible===false && chosingHeaderPhase.x===25){


                            voltageGraph.visible=true
                            voltageGraph.y=10
                            voltageGraph.height=685
                            rectangle3.visible=true
                            rectangle3.height=550
                            subHeaderText1.visible=true
                            flickable.visible=true
                            flickable.y=43
                            rectangle50.height=685
                            subHeaderText2.visible=false
                            flickable1.visible=false
                            voltageGraph2.visible=false



                            lineSeries2.clear();
                            lineSeries.clear();

                            lineSeries122.clear();
                            lineSeries12.clear();

                            lineSeries132.clear();
                            lineSeries13.clear();

                        }


                    }

                    Text {
                        x: 30
                        y: 7
                        width: 100
                        height: 22
                        color: "#284863"
                        text: qsTr("Power")
                        font.pixelSize: 18
                        verticalAlignment: Text.AlignVCenter
                    }

                }

                CustomCheckBox {
                    id:currentcheck
                    x: 145
                    y: 9
                    width: 180
                    height: 35
                    clip: true
                    onClickedSignal: {


                        if(voltagecheck.checkBoxOn.visible===true && powercheck.checkBoxOn.visible===true){
                            currentcheck.checkBoxOn.visible=false
                            currentcheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                            chosingHeaderPhase.x=128

                        }

                        if(chosingHeaderPhase.x===25 && voltagecheck.checkBoxOn.visible===true ){
                            currentcheck.checkBoxOn.visible=false
                            currentcheck.checkBoxOFF.source="images/CheckBoxOFF.svg"

                        }
                        else if(chosingHeaderPhase.x===25 && powercheck.checkBoxOn.visible===true ){
                            currentcheck.checkBoxOn.visible=false
                            currentcheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                        }

                        if(voltagecheck.checkBoxOn.visible===true && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===128){

                            lineSeries2.clear();
                                    lineSeries.clear();

                                    for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                        var yValue1 = 220 * Math.sin(i1) + 0;
                                        lineSeries2.append(i1, yValue1);
                                        lineSeries.append(i1, yValue1);
                                    }

                                    lineSeries122.clear();
                                    lineSeries12.clear();
                                    for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                        var yValue2 = 220 * Math.sin(i2) + 0;
                                        lineSeries122.append(i2-2, yValue2);
                                        lineSeries12.append(i2-2, yValue2);
                                    }

                                    lineSeries132.clear();
                                    lineSeries13.clear();
                                    for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                        var yValue3 = 220 * Math.sin(i3) + 0;
                                        lineSeries132.append(i3-4, yValue3);
                                        lineSeries13.append(i3-4, yValue3);
                                    }


                                voltageGraph.height=387
                                voltageGraph.visible=true
                                voltageGraph.y=10
                                rectangle50.height=387
                                rectangle502.height=387
                                rectangle3.height=260
                                rectangle3.visible=true
                                subHeaderText1.visible=true
                                subHeaderText2.visible=true
                                flickable.visible=true
                                flickable.y=43
                                flickable1.visible=true
                                flickable1.y=336
                                voltageGraph2.visible=true
                                voltageGraph2.y=305
                                voltageGraph2.height=387



                        }
                        else if(voltagecheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===128){

                            voltageGraph.visible=true
                            voltageGraph.height=387
                            voltageGraph.y=10
                            rectangle50.height=387
                            voltageGraph2.visible=true
                            voltageGraph2.y=305
                            voltageGraph2.height=387
                            subHeaderText1.visible=true
                            subHeaderText2.visible=true
                            flickable.visible=true
                            flickable.y=43
                            flickable1.visible=false
                            flickable1.y=336
                            rectangle502.height=387
                            rectangle3.visible=true
                            rectangle3.height=260

                            lineSeries.clear();
                            lineSeries2.clear();

                            for (i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                 yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries.append(i1, yValue1);
                            }


                            lineSeries12.clear();
                            lineSeries122.clear();
                            for ( i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                 yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries13.clear();
                            lineSeries132.clear();
                            for ( i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                 yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries13.append(i3-4, yValue3);

                            }


                        }

                        else if(voltagecheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===true && chosingHeaderPhase.x===128 ){

                            lineSeries2.clear();
                            lineSeries.clear();

                            for (  i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                   yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries2.append(i1, yValue1);
                                lineSeries.append(i1, yValue1);
                            }

                            lineSeries122.clear();
                            lineSeries12.clear();
                            for (  i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                  yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries122.append(i2-2, yValue2);
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries132.clear();
                            lineSeries13.clear();
                            for (  i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                  yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries132.append(i3-4, yValue3);
                                lineSeries13.append(i3-4, yValue3);
                            }


                                voltageGraph.height=387
                                voltageGraph.visible=true
                                voltageGraph.y=10
                                rectangle50.height=387
                                rectangle502.height=387
                                rectangle3.height=260
                                rectangle3.visible=true
                                subHeaderText1.visible=true
                                subHeaderText2.visible=true
                                flickable.visible=true
                                flickable.y=43
                                flickable1.visible=true
                                flickable1.y=336
                                voltageGraph2.visible=true
                                voltageGraph2.y=305
                                voltageGraph2.height=387

                        }

                        else if(voltagecheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===25){


                            voltageGraph.visible=true
                            voltageGraph.y=10
                            voltageGraph.height=685
                            rectangle3.visible=true
                            rectangle3.height=550
                            subHeaderText1.visible=true
                            flickable.visible=true
                            flickable.y=43
                            rectangle50.height=685
                            subHeaderText2.visible=false
                            flickable1.visible=false
                            voltageGraph2.visible=false



                            lineSeries2.clear();
                            lineSeries.clear();

                            for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                var yValue1 = 220 * Math.sin(i1) + 0;
                                lineSeries.append(i1, yValue1);
                            }

                            lineSeries122.clear();
                            lineSeries12.clear();
                            for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                var yValue2 = 220 * Math.sin(i2) + 0;
                                lineSeries12.append(i2-2, yValue2);
                            }

                            lineSeries132.clear();
                            lineSeries13.clear();
                            for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                var yValue3 = 220 * Math.sin(i3) + 0;
                                lineSeries13.append(i3-4, yValue3);
                            }


                        }


                    }
                    onNonclickedSignal:
                    {


                        if(voltagecheck.checkBoxOn.visible===true  && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===128 ){


                            voltageGraph.visible=true
                          voltageGraph.height=387
                          voltageGraph.y=10
                          rectangle50.height=387
                          voltageGraph2.visible=true
                          voltageGraph2.y=305
                          voltageGraph2.height=387
                          subHeaderText1.visible=true
                          subHeaderText2.visible=true
                          flickable.visible=true
                          flickable.y=43
                          flickable1.visible=false
                          flickable1.y=336
                          rectangle502.height=387
                          rectangle3.visible=true
                          rectangle3.height=260

                          lineSeries.clear();
                          lineSeries2.clear();

                          for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                               var yValue1 = 220 * Math.sin(i1) + 0;
                              lineSeries.append(i1, yValue1);
                          }


                          lineSeries12.clear();
                          lineSeries122.clear();
                          for ( var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                              var  yValue2 = 220 * Math.sin(i2) + 0;
                              lineSeries12.append(i2-2, yValue2);
                          }

                          lineSeries13.clear();
                          lineSeries132.clear();
                          for ( var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                               var yValue3 = 220 * Math.sin(i3) + 0;
                              lineSeries13.append(i3-4, yValue3);

                          }


                        }

                        else if(voltagecheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===128 ){


                            voltageGraph.visible=true
                             voltageGraph.height=387
                             voltageGraph.y=10
                             rectangle50.height=387
                             voltageGraph2.visible=true
                             voltageGraph2.y=305
                             voltageGraph2.height=387
                             subHeaderText1.visible=true
                             subHeaderText2.visible=true
                             flickable.visible=false
                             flickable.y=43
                             flickable1.visible=false
                             flickable1.y=336
                             rectangle502.height=387
                             rectangle3.visible=true
                             rectangle3.height=260


                             lineSeries.clear();
                             lineSeries2.clear();


                             lineSeries122.clear();
                             lineSeries12.clear();


                             lineSeries132.clear();
                             lineSeries13.clear();


                        }

                        else if(voltagecheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===true && chosingHeaderPhase.x===128 ){

                            voltageGraph.visible=true
                          voltageGraph.height=387
                          voltageGraph.y=10
                          rectangle50.height=387
                          voltageGraph2.visible=true
                          voltageGraph2.y=305
                          voltageGraph2.height=387
                          subHeaderText1.visible=true
                          subHeaderText2.visible=true
                          flickable.visible=true
                          flickable.y=43
                          flickable1.visible=false
                          flickable1.y=336
                          rectangle502.height=387
                          rectangle3.visible=true
                          rectangle3.height=260

                          lineSeries.clear();
                          lineSeries2.clear();

                          for (i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                               yValue1 = 220 * Math.sin(i1) + 0;
                              lineSeries.append(i1, yValue1);
                          }


                          lineSeries12.clear();
                          lineSeries122.clear();
                          for ( i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                               yValue2 = 220 * Math.sin(i2) + 0;
                              lineSeries12.append(i2-2, yValue2);
                          }

                          lineSeries13.clear();
                          lineSeries132.clear();
                          for ( i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                               yValue3 = 220 * Math.sin(i3) + 0;
                              lineSeries13.append(i3-4, yValue3);

                          }
                        }



                        else if(voltagecheck.checkBoxOn.visible===false && powercheck.checkBoxOn.visible===false && chosingHeaderPhase.x===25){


                            voltageGraph.visible=true
                            voltageGraph.y=10
                            voltageGraph.height=685
                            rectangle3.visible=true
                            rectangle3.height=550
                            subHeaderText1.visible=true
                            flickable.visible=true
                            flickable.y=43
                            rectangle50.height=685
                            subHeaderText2.visible=false
                            flickable1.visible=false
                            voltageGraph2.visible=false



                            lineSeries2.clear();
                            lineSeries.clear();

                            lineSeries122.clear();
                            lineSeries12.clear();

                            lineSeries132.clear();
                            lineSeries13.clear();

                        }

                    }

                    Text {
                        x: 30
                        y: 7
                        width: 142
                        height: 22
                        color: "#284863"
                        text: qsTr("Current")
                        font.pixelSize: 18
                        verticalAlignment: Text.AlignVCenter
                    }

                }
            }

            Rectangle {
                id: rectangle12
                x: 131
                y: 15
                width: 136
                height: 46
                border.color: "#d9d9d9"
                border.width: 1
                color: "#ffffff"

                Rectangle{
                    id:backgroundList
                    x:1
                    y:47
                    width: 135
                    height:617
                    visible: false

                }

                Text {
                    id: chosenText
                    color: "#284863"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 19
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
                    x: 1
                    width: parent.width
                    height: 500
                    anchors.top: parent.top
                    spacing: 5
                    anchors.topMargin: 50
                    visible: false

                    model: ListModel {
                        ListElement { name: "20 mS" }
                        ListElement { name: "40 mS" }
                        ListElement { name: "50 mS" }
                        ListElement { name: "100 mS" }
                        ListElement { name: "200 mS" }


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
                                    chosenText.text = model.name
                                    if(chosenText.text==="40 mS"){
                                        beginGraph0.text="0ms"
                                        graph2Text1.text="4ms"
                                        graph2Text2.text="8ms"
                                        graph2Text3.text="12ms"
                                        graph2Text4.text="16ms"
                                        graph2Text5.text="20ms"
                                        graph2Text6.text="24ms"
                                        graph2Text7.text="28ms"
                                        graph2Text8.text="32ms"
                                        graph2Text9.text="36ms"
                                        endGraph.text="40ms"

                                        xAxis.max = 4 * 3.14159;
                                        xAxis2.max = 4 * 3.14159;

                                        lineSeries2.clear();
                                        lineSeries.clear();

                                        for (var i1 = 0; i1 <= 4 * 3.14159; i1 += 0.01) {
                                            var yValue1 = 220 * Math.sin(i1) + 0;
                                            lineSeries2.append(i1, yValue1);
                                            lineSeries.append(i1, yValue1);
                                        }

                                        lineSeries122.clear();
                                        lineSeries12.clear();
                                        for (var i2 = 0; i2 <= 6 * 3.14159; i2 += 0.01) {
                                            var yValue2 = 220 * Math.sin(i2) + 0;
                                            lineSeries122.append(i2-2, yValue2);
                                            lineSeries12.append(i2-2, yValue2);
                                        }

                                        lineSeries132.clear();
                                        lineSeries13.clear();
                                        for (var i3 = 0; i3 <= 6 * 3.14159; i3 += 0.01) {
                                            var yValue3 = 220 * Math.sin(i3) + 0;
                                            lineSeries132.append(i3-4, yValue3);
                                            lineSeries13.append(i3-4, yValue3);
                                        }

                                    }

                                    else if(chosenText.text==="20 mS"){


                                        beginGraph0.text="0ms"
                                        graph2Text1.text="2ms"
                                        graph2Text2.text="4ms"
                                        graph2Text3.text="6ms"
                                        graph2Text4.text="8ms"
                                        graph2Text5.text="10ms"
                                        graph2Text6.text="12ms"
                                        graph2Text7.text="14ms"
                                        graph2Text8.text="16ms"
                                        graph2Text9.text="18ms"
                                        endGraph.text="20ms"

                                        xAxis2.max = 2 * 3.14159;
                                        xAxis.max = 2 * 3.14159;

                                        lineSeries2.clear();
                                        lineSeries.clear();

                                        for (  i1 = 0; i1 <= 2 * 3.14159; i1 += 0.01) {
                                            yValue1 = 220 * Math.sin(i1) + 0;
                                            lineSeries2.append(i1, yValue1);
                                            lineSeries.append(i1, yValue1);
                                        }

                                        lineSeries122.clear();
                                        lineSeries12.clear();
                                        for (   i2 = 0; i2 <= 4 * 3.14159; i2 += 0.01) {
                                            yValue2 = 220 * Math.sin(i2) + 0;
                                            lineSeries122.append(i2-2, yValue2);
                                            lineSeries12.append(i2-2, yValue2);
                                        }

                                        lineSeries132.clear(); //
                                        lineSeries13.clear(); //
                                        for (  i3 = 0; i3 <= 4 * 3.14159; i3 += 0.01) {
                                            yValue3 = 220 * Math.sin(i3) + 0;
                                            lineSeries132.append(i3-4, yValue3);
                                            lineSeries13.append(i3-4, yValue3);
                                        }

                                    }

                                    else if(chosenText.text==="50 mS"){

                                        beginGraph0.text="0ms"
                                        graph2Text1.text="5ms"
                                        graph2Text2.text="10ms"
                                        graph2Text3.text="15ms"
                                        graph2Text4.text="20ms"
                                        graph2Text5.text="25ms"
                                        graph2Text6.text="30ms"
                                        graph2Text7.text="35ms"
                                        graph2Text8.text="40ms"
                                        graph2Text9.text="45ms"
                                        endGraph.text="50ms"

                                        xAxis2.max = 5 * 3.14159;
                                        xAxis.max = 5 * 3.14159;

                                        lineSeries2.clear();
                                        lineSeries.clear();

                                        for (  i1 = 0; i1 <= 5 * 3.14159; i1 += 0.01) {
                                            yValue1 = 220 * Math.sin(i1) + 0;
                                            lineSeries2.append(i1, yValue1);
                                            lineSeries.append(i1, yValue1);
                                        }

                                        lineSeries122.clear();
                                        lineSeries12.clear();
                                        for (   i2 = 0; i2 <= 7 * 3.14159; i2 += 0.01) {
                                            yValue2 = 220 * Math.sin(i2) + 0;
                                            lineSeries122.append(i2-2, yValue2);
                                            lineSeries12.append(i2-2, yValue2);
                                        }

                                        lineSeries132.clear(); //
                                        lineSeries13.clear(); //
                                        for (  i3 = 0; i3 <= 7 * 3.14159; i3 += 0.01) {
                                            yValue3 = 220 * Math.sin(i3) + 0;
                                            lineSeries132.append(i3-4, yValue3);
                                            lineSeries13.append(i3-4, yValue3);
                                        }

                                    }

                                    else if(chosenText.text==="100 mS"){
                                        beginGraph0.text="0ms"
                                        graph2Text1.text="10ms"
                                        graph2Text2.text="20ms"
                                        graph2Text3.text="30ms"
                                        graph2Text4.text="40ms"
                                        graph2Text5.text="50ms"
                                        graph2Text6.text="60ms"
                                        graph2Text7.text="70ms"
                                        graph2Text8.text="80ms"
                                        graph2Text9.text="90ms"
                                        endGraph.text="100ms"

                                        xAxis2.max = 10 * 3.14159;
                                        xAxis.max = 10 * 3.14159;

                                        lineSeries2.clear();
                                        lineSeries.clear();

                                        for (  i1 = 0; i1 <= 10 * 3.14159; i1 += 0.01) {
                                            yValue1 = 220 * Math.sin(i1) + 0;
                                            lineSeries2.append(i1, yValue1);
                                            lineSeries.append(i1, yValue1);
                                        }

                                        lineSeries122.clear();
                                        lineSeries12.clear();
                                        for (   i2 = 0; i2 <= 12 * 3.14159; i2 += 0.01) {
                                            yValue2 = 220 * Math.sin(i2) + 0;
                                            lineSeries122.append(i2-2, yValue2);
                                            lineSeries12.append(i2-2, yValue2);
                                        }

                                        lineSeries132.clear(); //
                                        lineSeries13.clear(); //
                                        for (  i3 = 0; i3 <= 12 * 3.14159; i3 += 0.01) {
                                            yValue3 = 220 * Math.sin(i3) + 0;
                                            lineSeries132.append(i3-4, yValue3);
                                            lineSeries13.append(i3-4, yValue3);
                                        }
                                    }


                                    else if(chosenText.text==="200 mS"){
                                        beginGraph0.text="0ms"
                                        graph2Text1.text="20ms"
                                        graph2Text2.text="40ms"
                                        graph2Text3.text="60ms"
                                        graph2Text4.text="80ms"
                                        graph2Text5.text="100s"
                                        graph2Text6.text="120ms"
                                        graph2Text7.text="140ms"
                                        graph2Text8.text="160ms"
                                        graph2Text9.text="180ms"
                                        endGraph.text="200ms"

                                        xAxis2.max = 20 * 3.14159;
                                        xAxis.max = 20 * 3.14159;

                                        lineSeries2.clear();
                                        lineSeries.clear();

                                        for (  i1 = 0; i1 <= 20 * 3.14159; i1 += 0.01) {
                                            yValue1 = 220 * Math.sin(i1) + 0;
                                            lineSeries2.append(i1, yValue1);
                                            lineSeries.append(i1, yValue1);
                                        }

                                        lineSeries122.clear();
                                        lineSeries12.clear();
                                        for (   i2 = 0; i2 <= 22 * 3.14159; i2 += 0.01) {
                                            yValue2 = 220 * Math.sin(i2) + 0;
                                            lineSeries122.append(i2-2, yValue2);
                                            lineSeries12.append(i2-2, yValue2);
                                        }

                                        lineSeries132.clear(); //
                                        lineSeries13.clear(); //
                                        for (  i3 = 0; i3 <= 22 * 3.14159; i3 += 0.01) {
                                            yValue3 = 220 * Math.sin(i3) + 0;
                                            lineSeries132.append(i3-4, yValue3);
                                            lineSeries13.append(i3-4, yValue3);
                                        }
                                    }


                                }
                            }
                        }
                    }
                }

                Text {
                    id: elementText
                    x: 20
                    y: 0
                    width: 116
                    height: 47
                    color: "#d4d4d4"
                    text: qsTr("40 mS")
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

        CustomChosingForGraph{
            id:max
            x:12
            y:422
            width: 165
            height: 50
            clip: true
            Text {
                id: phase2Text1
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("Max")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
            Image {
                id: image78
                x: 3
                y: 8
                width: 62/2
                source: "images/image 78.png"
                fillMode: Image.PreserveAspectFit
            }

        }

        CustomChosingForGraph {
            id:min
            x: 12
            y: 472
            width: 165
            height: 50
            clip: true
            Text {
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("Min")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Image {
                x: 3
                y: 8
                width: 62/2
                source: "images/image 79.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        CustomChosingForGraph {
            id:peaktopeak
            x: 12
            y: 522
            width: 165
            height: 50
            clip: true
            Text {
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("Peak to Peak")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Image {
                x: 3
                y: 8
                width: 62/2
                source: "images/image 80.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        CustomChosingForGraph {
            id:peakpositive
            x: 12
            y: 572
            width: 165
            height: 50
            clip: true
            Text {
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("Peak +")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Image {
                x: 3
                y: 8
                width: 62/2
                source: "images/image 81.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        CustomChosingForGraph {
            id:peaknegative
            x: 12
            y: 622
            width: 165
            height: 50
            clip: true
            Text {
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("Peak -")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Image {
                x: 3
                y: 8
                width: 62/2
                source: "images/image 82.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        CustomChosingForGraph {
            id:average
            x: 12
            y: 672
            width: 165
            height: 50
            clip: true
            Text {
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("Average")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Image {
                x: 3
                y: 7
                width: 62/2
                source: "images/image 83.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        CustomChosingForGraph {
            id:period
            x: 178
            y: 422
            width: 165
            height: 50
            clip: true
            Text {
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("Period")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Image {
                x: 3
                y: 8
                width: 62/2
                source: "images/image 85.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        CustomChosingForGraph {
            id:frequency
            x: 178
            y: 472
            width: 165
            height: 50
            clip: true
            Text {
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("Frequency")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Image {
                x: 3
                y: 8
                width: 62/2
                source: "images/image 86.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        CustomChosingForGraph {
            id:delay
            x: 178
            y: 522
            width: 165
            height: 50
            clip: true
            Text {
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("Delay")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Image {
                x: 3
                y: 8
                width: 62/2
                source: "images/image 87.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        CustomChosingForGraph {
            id:phase
            x: 178
            y: 572
            width: 165
            height: 50
            clip: true
            Text {
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("Phase")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Image {
                x: 3
                y: 8
                width: 62/2
                source: "images/image 88.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        CustomChosingForGraph {
            id:base
            x: 178
            y: 622
            width: 165
            height: 50
            clip: true
            Text {
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("Base")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Image {
                x: 3
                y: 8
                width: 62/2
                source: "images/image 82.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        CustomChosingForGraph {
            id:rms
            x: 178
            y: 672
            width: 165
            height: 50
            clip: true
            Text {
                x: 40
                y: 8
                width: 103
                height: 36
                color: "#ffffff"
                text: qsTr("RMS")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Image {
                x: 3
                y: 6
                width: 62/2
                source: "images/image 84.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        CustomButtonHeaderBlackBG {
            x: 10
            y: 380
            width: 328
            height: 40
            clip: true
        }

        Text {
            id: for18PulseText2
            x: 19
            y: 380
            width: 121
            height: 40
            color: "#ffffff"
            text: qsTr("View")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
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



//    Image {
//        id: image88
//        source: "../../Downloads/ForQtR01/GraphsPage/ChosingList/image 88.svg"
//        fillMode: Image.PreserveAspectFit
//    }
























}


