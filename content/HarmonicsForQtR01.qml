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
    property bool forHarmonicHold: true
    property string filterTextsColorWhite: String("#FFFFFF")
    property string filterTextsColorNavyBlue: String("#284863")

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
        customcheckbox0.checkBoxOFF.source="images/CheckBoxONBG.svg"
        customcheckbox0.checkBoxOn.visible=true
        customcheckbox2.checkBoxOFF.source="images/CheckBoxONBG.svg"
        customcheckbox2.checkBoxOn.visible=true
        harmonic.color="#217EFD"
        interharmonic.color="#217EFD"

        withoutFundamental.forPulseOn.visible=false
    }




    Rectangle {
        id: rectanglerPF1
        x: -950
        y: 395
        width: 1120/2
        height: 600/2
        color: "#ffffff"
        radius: 0
        border.color: "#dde1e6"
        border.width: 1
        layer.effect: OpacityMask {
            id: opacityMask
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
        layer.enabled: true
        clip: true

        Image {
            x: 0
            y: 2
            width: 570
            height: 311
            source: "images/Group 10056.svg"
            sourceSize.width: 575
            antialiasing: true
            fillMode: Image.Pad
            sourceSize.height: posSequenceValue1.text
        }
    }


    MouseArea{
        x: 49
        y: 662
        width: 864
        height:64
        onClicked: {
            if(forHarmonicHold===true){
                forHarmonicHold=false
                holdNonClicked.source="images/HoldClicked.svg"
                harmonicCirclesAnimations.pause()





            }
            else{
                forHarmonicHold=true
                holdNonClicked.source="images/HoldNonClicked.svg"
                harmonicCirclesAnimations.resume()


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


        Rectangle {
            id: rectangle10
            x: 0
            y: 0
            width: 550
            height: 299
            color: "#F7F8FA"


            Flickable {
                id:flickableHarmonic
                x: 70
                y: 401
                width: 510  // ScrollView genişliği
                height: 300
                clip: true
                contentWidth: countOfBars.count*50  // ScrollView yüksekliği

                //        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOn

            }

            ChartView {
                id:chartviewHarmonics2
                x: 0
                y: 76
                //                width: countOfBars.count*50  // ChartView genişliği. Bu değeri değiştirerek grafiğin genel genişliğini ayarlayabilirsiniz.
                width: 975
                height: 300
                visible: false
                anchors.left: parent.left
                anchors.leftMargin: -40
                legend.alignment: Qt.AlignBottom
                antialiasing: true
                legend.visible: false

                BarSeries {
                    id: mySeries2
                    barWidth: 0.8

                    Component.onCompleted: {
                        for (var i = 0; i < 21; i++) {
                            countOfBars2.categories[i] = i
                        }
                    }
                    axisX: BarCategoryAxis {
                        id: countOfBars2
                        min:"1"
                        max: "50"
                        labelsAngle: 0
                        labelsFont.pixelSize: 11
                        categories: ["1", "2", "3", "2010", "2011", "2012", "2013"]
                    }
                    axisY: ValueAxis {
                        id: barSeriesTickCount2
                        //                        labelsFont.pixelSize: 10  // Font boyutunu küçülttük
                        //                        tickCount: barSeriesTickCount.tickCount
                        labelsVisible: true
                        min: 0
                        max: 100
                    }
                    BarSet {
                        id:myFirstBarSet2
                        color: "#FC3734"
                        values: [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                        onClicked: console.debug("Kerem clicked!" + index + " " + this.at(index))
                    }


                    BarSet {
                        id:mySecondBarSet2
                        color: "#99b2c6"
                        values: [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                        onClicked: console.debug("Kerem2 clicked!" + index + " " + this.at(index))
                    }
                    //                    Timer {

                    //                        interval: 1000  // 1 saniye
                    //                        running: true
                    //                        repeat: true
                    //                        onTriggered: {
                    //                            if (myFirstBarSet.values < 100) {
                    //                                var updatedValues = .values.slice(0);
                    //                                var updatedValues2 = mySecondBarSet.values.slice(0);// Mevcut değerleri bir değişkene kopyala
                    //                                if(updatedValues[1] <11){
                    //                                    updatedValues[1] += 1;  // İlk değeri artır
                    //                                }

                    //                                updatedValues2[2] += 1;
                    //                                myFirstBarSet.values = updatedValues;  // Değerleri geri ata
                    //                                mySecondBarSet.values = updatedValues2;

                    ////                                harmonicnames.get(1).text += "a1"



                    //                            } else {
                    //                                this.running = false;  // 100 değerine ulaştığında timer'ı durdur.
                    //                            }
                    //                        }
                    //                    }
                }

            }


            ChartView {
                id:chartviewHarmonics
                x: 0
                y: 401
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
                        for (var i = 0; i < 21; i++) {
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
                        color: "#FC3734"
                        values: [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                        onClicked: console.debug("Kerem clicked!" + index + " " + this.at(index))
                    }


                    BarSet {
                        id:mySecondBarSet
                        color: "#99b2c6"
                        values: [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                        onClicked: console.debug("Kerem2 clicked!" + index + " " + this.at(index))
                    }
                    //                    Timer {

                    //                        interval: 1000  // 1 saniye
                    //                        running: true
                    //                        repeat: true
                    //                        onTriggered: {
                    //                            if (myFirstBarSet.values < 100) {
                    //                                var updatedValues = myFirstBarSet.values.slice(0);
                    //                                var updatedValues2 = mySecondBarSet.values.slice(0);// Mevcut değerleri bir değişkene kopyala
                    //                                if(updatedValues[1] <11){
                    //                                    updatedValues[1] += 1;  // İlk değeri artır
                    //                                }

                    //                                updatedValues2[2] += 1;
                    //                                myFirstBarSet.values = updatedValues;  // Değerleri geri ata
                    //                                mySecondBarSet.values = updatedValues2;

                    ////                                harmonicnames.get(1).text += "a1"



                    //                            } else {
                    //                                this.running = false;  // 100 değerine ulaştığında timer'ı durdur.
                    //                            }
                    //                        }
                    //                    }
                }

            }

            ChartView {
                id: yAxisChart
                x: 421
                y: 402
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

            Rectangle {
                id: rectangle8
                x: 0
                y: 83
                width: 910
                height: 320
                visible: true
                color: "#ffffff"



                Rectangle {
                    x: 708
                    y: 59
                    width: frame.implicitWidth + 10
                    height: frame.implicitHeight + 10

                    function formatText(count, modelData) {
                        var data = count === 12 ? modelData + 1 : modelData;
                        return data.toString().length < 2 ? "0" + data : data;
                    }

                    FontMetrics {
                        id: fontMetrics
                    }

                    Component {
                        id: delegateComponent

                        Label {
                            text: "H"+(Tumbler.tumbler.count, modelData)
                            opacity: 0.95 - Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount / 2)
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            //eğer en öne gelenin en büyük olmasını istemiyorsan bunu kaldır
                            font.pixelSize: 30 - Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount / 26)
                            //bunu aktif et
                            //font.pixelSize: fontMetrics.font.pixelSize * 2

                        }
                    }


                    Frame {
                        id: frame
                        padding: 0
                        anchors.centerIn: parent

                        Row {
                            id: row

                            Tumbler {
                                id: minutesTumbler
                                model: 51
                                delegate: delegateComponent
                            }

                        }
                    }
                }
                property int selectedListItemIndex: 0

                Text {
                    id: text11
                    x: 814
                    y: 136
                    text: (minutesTumbler.currentIndex < 10 ? "0" + minutesTumbler.currentIndex : minutesTumbler.currentIndex)
                    font.pixelSize: 50
                    onTextChanged: {
                        rectangler.visible=true
                        rectangler.y=text11.text*50+6
                    }
                }


                Rectangle {
                    id:rectanglerPF
                    x: 68
                    y: 67
                    width: 560
                    height: 210
                    opacity: 1
                    color: "#13ffffff"
                    radius: 0
                    border.color: "#8dababab"
                    border.width: 0
                    z: 1
                    layer.enabled: true

                    Image {
                        id:animGraphsCurrentA
                        x: -20
                        y: 2
                        width: 610
                        height: 220
                        source:                            if(text11.text==="00"){
                                                               "images/Group 10059.svg"
                                                           }
                                                           else if(text11.text==="01"){
                                                               "images/Group 10058.svg"
                                                           }
                                                           else if(text11.text==="02"){
                                                               "images/Group 10057.svg"
                                                           }
                                                           else if(text11.text==="03"){
                                                               "images/Group 10056.svg"
                                                           }
                                                           else if(text11.text==="04"){
                                                               "images/Group 10055.svg"
                                                           }
                                                           else if(text11.text==="05"){
                                                               "images/Group 10054.svg"
                                                           }
                        sourceSize.height: 150
                        antialiasing: true
                        sourceSize.width: 600
                        fillMode: Image.PreserveAspectFit
                    }
                    clip: false
                    layer.effect: OpacityMask {
                        layer.enabled: true
                        layer.effect: DropShadowEffect {
                            id: dropShadow
                            color: "#4b000000"
                            radius: 8
                            horizontalOffset: 2
                            spread: 0.45
                            verticalOffset: -2
                            samples: 20
                        }
                        maskSource: Item {
                            width: rectanglerPF.width-500
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
                    id: rectanglerPF3
                    x: 78
                    y: 57
                    width: 560
                    height: 210
                    opacity: 0.2
                    color: "#13ffffff"
                    radius: 0
                    border.color: "#2aababab"
                    border.width: 1
                    layer.effect: OpacityMask {
                        layer.effect: DropShadowEffect {

                            color: "#000000"
                            radius: 8
                            horizontalOffset: 2
                            spread: 0.45
                            verticalOffset: -2
                            samples: 20
                        }
                        layer.enabled: true
                        maskSource: Item {
                            width: rectanglerPF3.width-500
                            height: rectanglerPF3.height
                            Rectangle {
                                width: rectanglerPF3.adapt ? rectanglerPF3.width : Math.min(rectanglerPF3.width, rectanglerPF3.height)+250
                                height: rectanglerPF3.adapt ? rectanglerPF3.height : width+250
                                radius: 0
                                anchors.centerIn: parent
                            }
                        }
                    }
                    layer.enabled: true
                    clip: false
                    Image {
                        x: -10
                        y: 10
                        width: 610
                        height: 220
                        source: "images/Group 10057.svg"
                        sourceSize.width: 600
                        antialiasing: true
                        fillMode: Image.Pad
                        sourceSize.height: 60
                    }
                }

                Image {
                    id: group9999
                    x: -8
                    y: 83
                    width: 620
                    source: "images/Group 9999.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Rectangle {
                    id: rectanglerPF4
                    x: 88
                    y: 47
                    width: 560
                    height: 210
                    opacity: 0.08
                    color: "#e9e9e9"
                    radius: 0
                    border.color: "#8dababab"
                    border.width: 0
                    layer.effect: OpacityMask {
                        layer.effect: DropShadowEffect {
                            color: "#909090"
                            radius: 8
                            horizontalOffset: 2
                            spread: 0.45
                            verticalOffset: -2
                            samples: 20
                        }
                        layer.enabled: true
                        maskSource: Item {
                            width: rectanglerPF4.width-500
                            height: rectanglerPF4.height
                            Rectangle {
                                width: rectanglerPF4.adapt ? rectanglerPF4.width : Math.min(rectanglerPF4.width, rectanglerPF4.height)+250
                                height: rectanglerPF4.adapt ? rectanglerPF4.height : width+250
                                radius: 0
                                anchors.centerIn: parent
                            }
                        }
                    }
                    layer.enabled: true
                    clip: false
                    z: 1
                    Image {
                        x: -9
                        y: 16
                        width: 610
                        height: 220
                        source: "images/Group 10056.svg"
                        sourceSize.width: 600
                        antialiasing: true
                        fillMode: Image.Pad
                        sourceSize.height: 40
                    }
                }











                Text {
                    id: harmSelected
                    x: 1324
                    y: 135
                    width: 65
                    height: 45
                    color: "#284863"
                    text: qsTr("H1")
                    font.letterSpacing: -2
                    font.pixelSize: 25
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    clip: true
                    font.family: "Akshar"
                    z: 1
                }


                Text {
                    id: harmSelected1
                    x: 1324
                    y: 83
                    width: 65
                    height: 45
                    opacity: 0.5
                    color: "#284863"
                    text: qsTr("H2")
                    font.letterSpacing: -2
                    font.pixelSize: 20
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    clip: true
                    font.family: "Akshar"
                    z: 1
                }


                Text {
                    id: harmSelected2
                    x: 1324
                    y: 38
                    width: 65
                    height: 45
                    opacity: 0.2
                    color: "#284863"
                    text: qsTr("H3")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    scale: 1
                    font.styleName: "Light"
                    clip: true
                    font.family: "Akshar"
                    z: 1
                }


                Text {
                    id: harmSelected3
                    x: 1324
                    y: 186
                    width: 65
                    height: 45
                    opacity: 0.5
                    color: "#284863"
                    text: qsTr("H50")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    font.styleName: "Light"
                    clip: true
                    font.family: "Akshar"
                    z: 1
                }


                Text {
                    id: harmSelected4
                    x: 1324
                    y: 231
                    width: 65
                    height: 45
                    opacity: 0.2
                    color: "#284863"
                    text: qsTr("H49")
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    lineHeight: 3
                    wrapMode: Text.Wrap
                    scale: 1
                    font.styleName: "Light"
                    clip: true
                    font.family: "Akshar"
                    z: 1
                }





            }
        }



        Rectangle {
            id: rectangleForPieChart
            x: 0
            y: 0
            width: 720
            height: 720
            opacity: 1
            visible: true
            color: "#002ce78f"

            ChartView {
                id: chartView
                x:-35
                y:0
                //                anchors.fill: parent
                width: 740
                height: 740
                antialiasing: true
                legend.visible: false
                backgroundColor: "#F7F8FA"

                PieSeries {

                    id: donutSeries
                    holeSize: 0.36  // Donut deliği boyutu

                    PieSlice {
                        label: "Slice 1";
                        value: 6.15
                        color:rectangle1.color
                    }
                    PieSlice {
                        label: "Slice 2";
                        value: 44.91
                        color:rectangle2.color

                    }
                    PieSlice {
                        label: "Slice 3"
                        value: 30.12
                        color:rectangle3.color
                    }
                    PieSlice {
                        label: "Slice 4"
                        value: 14.55
                        color:rectangle4.color
                    }
                    PieSlice {
                        label: "Slice 5"
                        value: 20.67
                        color:rectangle5.color
                    }
                    PieSlice {
                        label: "Slice 6"
                        value: 20.91
                        color:rectangle6.color
                    }

                    function resetExploded() {
                        for (var i = 0; i < count; i++) {
                            var slice = at(i);
                            slice.exploded = false;
                        }
                    }

                    //                    function handleClick(slice) {
                    //                        if (slice.exploded) {
                    //                            slice.exploded = false;
                    //                            rectangler.visible = false;
                    //                        } else {
                    //                            resetExploded();
                    //                            slice.exploded = true;
                    //                            rectangler.visible = true;
                    //                        }



                    //                    }
                    function handleClick(slice, index) {
                        if (slice.exploded) {
                            slice.exploded = false;
                            rectangler.y = 6; // Tıklanınca y konumunu 0 olarak ayarla
                            rectangler.visible = false;

                            rectangle1.scale=1
                            textH1.scale=1
                            rectangle2.scale=1
                            textH2.scale=1
                            rectangle3.scale=1
                            textH3.scale=1
                            rectangle4.scale=1
                            textH4.scale=1
                            rectangle5.scale=1
                            textH5.scale=1
                            rectangle6.scale=1
                            textH6.scale=1

                            forTHDPercentageValue.text="% " + slice.value
                            forTHDPercentageValue.y=-163
                        } else {
                            resetExploded();
                            slice.exploded = true;


                            // Tıklanınca y konumunu belirli bir değere ayarla
                            if (index === 0) {
                                rectangler.visible = true;
                                rectangler.y = 6; // İlk dilim için
                                rectangle1.scale=1.4
                                textH1.scale=1.4

                                rectangle2.scale=1
                                textH2.scale=1
                                rectangle3.scale=1
                                textH3.scale=1
                                rectangle4.scale=1
                                textH4.scale=1
                                rectangle5.scale=1
                                textH5.scale=1
                                rectangle6.scale=1
                                textH6.scale=1

                                forTHDPercentageValue.text="% " + slice.value
                                forTHDPercentageValue.y=173
                            } else if (index === 1) {
                                rectangler.visible = true;
                                rectangler.y = 56; // İkinci dilim için
                                rectangle2.scale=1.4
                                textH2.scale=1.4

                                rectangle1.scale=1
                                textH1.scale=1
                                rectangle3.scale=1
                                textH3.scale=1
                                rectangle4.scale=1
                                textH4.scale=1
                                rectangle5.scale=1
                                textH5.scale=1
                                rectangle6.scale=1
                                textH6.scale=1

                                forTHDPercentageValue.text="% " + slice.value
                                forTHDPercentageValue.y=243
                            }
                            else if (index === 2) {
                                rectangler.visible = true;
                                rectangler.y = 106; // üçüncü dilim için
                                rectangle3.scale=1.4
                                textH3.scale=1.4

                                rectangle1.scale=1
                                textH1.scale=1
                                rectangle2.scale=1
                                textH2.scale=1
                                rectangle4.scale=1
                                textH4.scale=1
                                rectangle5.scale=1
                                textH5.scale=1
                                rectangle6.scale=1
                                textH6.scale=1

                                forTHDPercentageValue.text="% " + slice.value
                                forTHDPercentageValue.y=313
                            }
                            else if (index === 3) {
                                rectangler.visible = true;
                                rectangler.y = 156; // dördüncü dilim için
                                rectangle4.scale=1.4
                                textH4.scale=1.4

                                rectangle1.scale=1
                                textH1.scale=1
                                rectangle2.scale=1
                                textH2.scale=1
                                rectangle3.scale=1
                                textH3.scale=1
                                rectangle5.scale=1
                                textH5.scale=1
                                rectangle6.scale=1
                                textH6.scale=1

                                forTHDPercentageValue.text="% " + slice.value
                                forTHDPercentageValue.y=383
                            }
                            else if (index === 4) {
                                rectangler.visible = true;
                                rectangler.y = 206; // beşinci dilim için
                                rectangle5.scale=1.4
                                textH5.scale=1.4

                                rectangle1.scale=1
                                textH1.scale=1
                                rectangle2.scale=1
                                textH2.scale=1
                                rectangle3.scale=1
                                textH3.scale=1
                                rectangle4.scale=1
                                textH4.scale=1
                                rectangle6.scale=1
                                textH6.scale=1

                                forTHDPercentageValue.text="% " + slice.value
                                forTHDPercentageValue.y=453
                            }
                            else if (index === 5) {
                                rectangler.visible = true;
                                rectangler.y = 256; // altıncı dilim için
                                rectangle6.scale=1.4
                                textH6.scale=1.4

                                rectangle1.scale=1
                                textH1.scale=1
                                rectangle2.scale=1
                                textH2.scale=1
                                rectangle3.scale=1
                                textH3.scale=1
                                rectangle4.scale=1
                                textH4.scale=1
                                rectangle5.scale=1
                                textH5.scale=1

                                forTHDPercentageValue.text="% " + slice.value
                                forTHDPercentageValue.y=523
                            }

                        }
                    }

                    Component.onCompleted: {
                        for (var i = 0; i < count; i++) {
                            (function(index) {
                                var slice = at(index);
                                slice.explodeDistanceFactor = 0.15;
                                slice.clicked.connect(function()
                                {
                                    handleClick(slice, index);


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
                x: 230
                y: 265
                width: 210
                height: 210
                source: "images/HarmonicVector.svg"
                rotation: 360
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: harmonicTHD
                x: 287
                y: 342
                width: 95
                source: "images/HarmonicTHD.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: harmonicEllipse217
                x: 245
                y: 280
                width: 180
                source: "images/HarmonicEllipse 217.svg"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: cursorHeadersBGForVoltageText4
                x: 264
                y: 297
                width: 141
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
                x: 264
                y: 387
                width: 141
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
                x: 183
                y: 218
                width: 304
                height:  304
                source: "images/HarmonicVector-1.svg"
                rotation: -180
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: forHarmonic
                x: 768
                y: 130
                width: 196/2
                source: "images/ForHarmonic.svg"
                Rectangle {
                    id: rectangle1
                    x: 20
                    y: 41
                    width: 50
                    height: 50
                    color: "#6249fc"
                    radius: 25
                }

                Rectangle {
                    id: rectangle2
                    x: 20
                    y: 111
                    width: 50
                    height: 50
                    color: "#4ec040"
                    radius: 25
                }

                Rectangle {
                    id: rectangle3
                    x: 20
                    y: 181
                    width: 50
                    height: 50
                    color: "#217efd"
                    radius: 25
                }

                Rectangle {
                    id: rectangle4
                    x: 20
                    y: 251
                    width: 50
                    height: 50
                    color: "#737373"
                    radius: 25
                }

                Rectangle {
                    id: rectangle5
                    x: 20
                    y: 321
                    width: 50
                    height: 50
                    color: "#ffce20"
                    radius: 25
                }

                Rectangle {
                    id: rectangle6
                    x: 20
                    y: 391
                    width: 50
                    height: 50
                    color: "#515151"
                    radius: 25
                }

                Text {
                    id:textH1
                    x: 20
                    y: 41
                    width: 49
                    height: 50
                    color: "#ffffff"
                    text: qsTr("H5")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id:textH2
                    x: 20
                    y: 114
                    width: 47
                    height: 47
                    color: "#ffffff"
                    text: qsTr("H7")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id:textH3
                    x: 20
                    y: 184
                    width: 47
                    height: 47
                    color: "#ffffff"
                    text: qsTr("H11")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id:textH4
                    x: 20
                    y: 253
                    width: 47
                    height: 47
                    color: "#ffffff"
                    text: qsTr("H13")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id:textH5
                    x: 20
                    y: 323
                    width: 47
                    height: 47
                    color: "#ffffff"
                    text: qsTr("H17")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    id:textH6
                    x: 20
                    y: 394
                    width: 47
                    height: 47
                    color: "#ffffff"
                    text: qsTr("H19")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: forTHDPercentageValue
                x: 632
                y: -163
                width: 126
                height: 47
                color: "#284863"
                text: qsTr("% 100.15")
                font.letterSpacing: -2
                font.pixelSize: 22
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }



        }

    }



    Row {
        id: radioBar
        y: 623
        height: 39
        anchors.bottom: parent.bottom
        anchors.horizontalCenterOffset: -456
        anchors.bottomMargin: 66
        anchors.horizontalCenter: parent.horizontalCenter
        spacing: 20

        RadioButton {
            width: 128
            text: "Bar Graph"
            checked: swipeView.currentIndex === 0
            onCheckedChanged: if (checked) swipeView.currentIndex = 0
        }

        RadioButton {
            text: "THD Chart"
            checked: swipeView.currentIndex === 1
            onCheckedChanged: if (checked) swipeView.currentIndex = 1
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
                id: clickedPhase1
                PropertyAnimation {
                    target: chosingHeaderPhase1
                    property: "x"
                    duration: 200
                    to: phase1Text.x
                }

                PropertyAnimation {
                    target: phase1Text
                    property: "color"
                    duration: 200
                    to: "#284863"
                }
                PropertyAnimation {
                    target: phase2Text
                    property: "color"
                    duration: 200
                    to: "#A7AEB6"
                }

                PropertyAnimation {
                    target: phase3Text
                    property: "color"
                    duration: 200
                    to: "#A7AEB6"
                }
            }

            ParallelAnimation{
                id: clickedPhase2
                PropertyAnimation {
                    target: chosingHeaderPhase1
                    property: "x"
                    duration: 200
                    to: phase2Text.x
                }

                PropertyAnimation {
                    target: phase2Text
                    property: "color"
                    duration: 200
                    to: "#284863"
                }
                PropertyAnimation {
                    target: phase1Text
                    property: "color"
                    duration: 200
                    to: "#A7AEB6"
                }

                PropertyAnimation {
                    target: phase3Text
                    property: "color"
                    duration: 200
                    to: "#A7AEB6"
                }
            }

            ParallelAnimation{
                id: clickedPhase4
                PropertyAnimation {
                    target: chosingHeaderPhase1
                    property: "x"
                    duration: 200
                    to: phase3Text.x
                }

                PropertyAnimation {
                    target: phase3Text
                    property: "color"
                    duration: 200
                    to: "#284863"
                }

                PropertyAnimation {
                    target: phase1Text
                    property: "color"
                    duration: 200
                    to: "#A7AEB6"
                }

                PropertyAnimation {
                    target: phase2Text
                    property: "color"
                    duration: 200
                    to: "#A7AEB6"
                }
            }









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
                height: 275
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
                x: -1
                y: 15
                width: 149
                height: 35
                clip: true



                Text {
                    id: harmonic
                    x: 37
                    y: 7
                    width: 100
                    height: 22
                    color: "#9DA0A9"
                    text: qsTr("Harmonic")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                }
                onClickedSignal: {
                    harmonic.color="#217EFD"
                    harmonicnameslistview.visible=true
                    one.visible=true
                    two.visible=true
                    three.visible=true
                    four.visible=true

                    if (allFilter.isClicked){
                        var indicesToChange = [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4];
                        countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                        countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange

                    }
                    else if (for6Pulse.isClicked){
                        indicesToChange = [5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, 41, 43, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange

                    }
                    else if (for12Pulse.isClicked){
                        indicesToChange = [11, 13, 23, 25, 35, 37, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                    }

                    else if (for18Pulse.isClicked){
                        indicesToChange = [17, 19, 35, 37];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        indicesToChange = [2, 20, 24, 3, 12];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                    }

                    else if (for24Pulse.isClicked){
                        indicesToChange = [23, 25, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        indicesToChange = [2, 20, 24, 3, 12];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                    }

                    else if (withoutFundamental.isClicked){
                        indicesToChange = [2, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                        countOfBars.categories = ["0", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                        countOfBars2.categories = ["0",  "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                    }

                    else{
                        indicesToChange = [];
                        for (var i = 0; i < harmonicnames1RealVaules.count ; i++) {
                            var filterButton = flickable5.contentItem.children[i];
                            if (filterButton.isClicked){
                                if (i < harmonicnames1RealVaules.count){
                                    indicesToChange.push(i)
                                }
                            }
                        }
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                    }


                }

                onNonclickedSignal: {
                    harmonic.color = "#9DA0A9";
                    harmonicnameslistview.visible=false
                    one.visible=false
                    two.visible=false
                    three.visible=false
                    four.visible=false

                    var indicesToChange = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ]
                    myFirstBarSet.values=indicesToChange
                    myFirstBarSet2.values=indicesToChange

                    if (allFilter.isClicked){
                        countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                        countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                    }

                    else if (for6Pulse.isClicked){
                        indicesToChange = [5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, 41, 43, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange

                    }
                    else if (for12Pulse.isClicked){
                        indicesToChange = [11, 13, 23, 25, 35, 37, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                    }

                    else if (for18Pulse.isClicked){
                        indicesToChange = [17, 19, 35, 37];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                    }

                    else if (for24Pulse.isClicked){
                        indicesToChange = [23, 25, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                    }

                    else if (withoutFundamental.isClicked){
                        indicesToChange = [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                        countOfBars.categories = ["0", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20" ];
                        countOfBars2.categories = ["0", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                    }
                    else{
                        indicesToChange = [];
                        for (var i = 0; i < harmonicnames1RealVaules.count ; i++) {
                            var filterButton = flickable5.contentItem.children[i];
                            if (filterButton.isClicked){
                                if (i < harmonicnames1RealVaules.count){
                                    indicesToChange.push(i)
                                }
                            }
                        }
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                    }


                }
            }

            CustomCheckBox {
                id: customcheckbox2
                x: 149
                y: 15
                width: 185
                height: 35
                clip: true
                Text {
                    id: interharmonic
                    x: 37
                    y: 7
                    width: 142
                    height: 22
                    color: "#9da0a9"
                    text: qsTr("Inter Harmonic")
                    font.pixelSize: 18
                    verticalAlignment: Text.AlignVCenter
                }
                onClickedSignal: {
                    interharmonic.color="#217EFD"
                    harmonicnameslistview1.visible=true
                    one1.visible=true
                    two1.visible=true
                    three1.visible=true
                    four1.visible=true

                    var indicesToChange = [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4];



                    if (allFilter.isClicked){
                        indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                        countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                        countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                    }
                    else if (for6Pulse.isClicked){
                        indicesToChange = [5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, 41, 43, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                        indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                    }
                    else if (for12Pulse.isClicked){
                        indicesToChange = [11, 13, 23, 25, 35, 37, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                        indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                    }
                    else if (for18Pulse.isClicked){
                        indicesToChange = [17, 19, 35, 37];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                        indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                    }
                    else if (for24Pulse.isClicked){
                        indicesToChange = [23, 25, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                        indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                    }

                    else if (withoutFundamental.isClicked){
                        indicesToChange = [2, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                        countOfBars.categories = ["0", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                        countOfBars2.categories = ["0",  "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                    }

                    else{
                        indicesToChange = [];
                        for (var i = 0; i < harmonicnames1RealVaules.count ; i++) {
                            var filterButton = flickable5.contentItem.children[i];
                            if (filterButton.isClicked){
                                if (i < harmonicnames1RealVaules.count){
                                    indicesToChange.push(i)
                                }
                            }
                        }
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange
                    }

                }
                onNonclickedSignal: {
                    interharmonic.color="#9DA0A9"
                    harmonicnameslistview1.visible=false
                    one1.visible=false
                    two1.visible=false
                    three1.visible=false
                    four1.visible=false


                    var indicesToChange = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                    mySecondBarSet.values=indicesToChange
                    mySecondBarSet2.values=indicesToChange

                    if (allFilter.isClicked){
                        countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                        countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                    }

                    else if (for6Pulse.isClicked){
                        indicesToChange = [5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, 41, 43, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange

                    }
                    else if (for12Pulse.isClicked){
                        indicesToChange = [11, 13, 23, 25, 35, 37, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                    }

                    else if (for18Pulse.isClicked){
                        indicesToChange = [17, 19, 35, 37];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                    }

                    else if (for24Pulse.isClicked){
                        indicesToChange = [23, 25, 47, 49];
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                    }

                    else if (withoutFundamental.isClicked){
                        indicesToChange = [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                        countOfBars.categories = ["0", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20" ];
                        countOfBars2.categories = ["0", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                    }
                    else{
                        indicesToChange = [];
                        for (var i = 0; i < harmonicnames1RealVaules.count ; i++) {
                            var filterButton = flickable5.contentItem.children[i];
                            if (filterButton.isClicked){
                                if (i < harmonicnames1RealVaules.count){
                                    indicesToChange.push(i)
                                }
                            }
                        }
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                    }

                }
            }



        }
        CustomChosingForFilter {
            id:allFilter
            x: 5
            y: 342
            width: 335
            height: 50
            clip: true
            onClickedSignal: {
                forAllText.color="#FFFFFF"
                forAllTextArray.color="#284863"

                for6Pulse.isClicked=false
                for6Pulse.forPulseOn.visible=false
                for6PulseText.color="#284863"
                for6PulseTextArray.color="#98A9BA"
                for12Pulse.isClicked=false
                for12Pulse.forPulseOn.visible=false
                for12PulseText.color="#284863"
                for12PulseTextArray.color="#98A9BA"
                for18Pulse.isClicked=false
                for18Pulse.forPulseOn.visible=false
                for18PulseText.color="#284863"
                for18PulseTextArray.color="#98A9BA"
                for24Pulse.isClicked=false
                for24Pulse.forPulseOn.visible=false
                for24PulseText.color="#284863"
                for24PulseTextArray.color="#98A9BA"
                withoutFundamental.isClicked=false
                withoutFundamental.forPulseOn.visible=false
                forFundamentalText.color="#284863"
                fundamentalFilter.color="#98A9BA"

                var indicesToChange = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50];

                for (var notr = 0;  notr < repeater.count; notr++) {
                    if (!indicesToChange.includes(notr)) {
                        repeater.itemAt(notr).isClicked = false;
                        repeater.itemAt(notr).whenclicked.start();
                    }
                }
                for (var r = 0; r < indicesToChange.length; r++) {
                    var index = indicesToChange[r];
                    if (index >= 0 && index < repeater.count) {
                        repeater.itemAt(index).isClicked = true;
                        repeater.itemAt(index).whennonclicked.start();
                    }
                }

                indicesToChange = [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange
                indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange


                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();



                for (var i = 0; i < harmonicnames1RealVaules.count ; i++) {
                    var filterButton = flickable5.contentItem.children[i];

                    if (filterButton.isClicked){

                        if (i < harmonicnames1RealVaules.count){
                            var item = harmonicnamesRealVaules.get(i).text;
                            harmonicnames.append({"text": item});
                            var item1 = harmonicnames1RealVaules.get(i).text;
                            harmonicnames1.append({"text": item1});
                            var list1 = harmonics1RealVaules.get(i).text;
                            listmodel1.append({"text": list1});
                            var list11 = harmonics11RealVaules.get(i).text;
                            listmodel11.append({"text": list11});
                            var list2 = harmonics2RealVaules.get(i).text;
                            listmodel2.append({"text": list2});
                            var list21 = harmonics21RealVaules.get(i).text;
                            listmodel21.append({"text": list21});
                            var list3 = harmonics3RealVaules.get(i).text;
                            listmodel3.append({"text": list3});
                            var list31 = harmonics31RealVaules.get(i).text;
                            listmodel31.append({"text": list31});
                            var list4 = harmonics4RealVaules.get(i).text;
                            listmodel4.append({"text": list4});
                            var list41 = harmonics41RealVaules.get(i).text;
                            listmodel41.append({"text": list41});

                        }

                    }

                }
            }
            onNonclickedSignal: {
                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();

                var indicesToChange = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
                countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange

                //            for (var i = 0; i < repeater.count; i++) {
                //                var filterButton = repeater.itemAt(i);

                //                filterButton.isClicked = true;
                //                filterButton.whennonclicked.start()
                for (var i = 0; i < repeater.count; i++) {
                    var filterButton = repeater.itemAt(i);
                    repeater.itemAt(i).isClicked = false;
                    filterButton.whenclicked.start()
//                    filterButton.isClicked = true;


//                    if (filterButton.isClicked){

//                        if (i < harmonicnames1RealVaules.count){
//                            var item = harmonicnamesRealVaules.get(i).text;
//                            harmonicnames.append({"text": item});
//                            var item1 = harmonicnames1RealVaules.get(i).text;
//                            harmonicnames1.append({"text": item1});
//                            var list1 = harmonics1RealVaules.get(i).text;
//                            listmodel1.append({"text": list1});
//                            var list11 = harmonics11RealVaules.get(i).text;
//                            listmodel11.append({"text": list11});
//                            var list2 = harmonics2RealVaules.get(i).text;
//                            listmodel2.append({"text": list2});
//                            var list21 = harmonics21RealVaules.get(i).text;
//                            listmodel21.append({"text": list21});
//                            var list3 = harmonics3RealVaules.get(i).text;
//                            listmodel3.append({"text": list3});
//                            var list31 = harmonics31RealVaules.get(i).text;
//                            listmodel31.append({"text": list31});
//                            var list4 = harmonics4RealVaules.get(i).text;
//                            listmodel4.append({"text": list4});
//                            var list41 = harmonics41RealVaules.get(i).text;
//                            listmodel41.append({"text": list41});
//                        }
//                    }
                }

//                for (var notr = 0;  notr < repeater.count; notr++) {
//                    if (!indicesToChange.includes(notr)) {
//                        repeater.itemAt(notr).isClicked = true;
//                        repeater.itemAt(notr).whennonclicked.start();
//                    }
//                }
                for (var r = 0; r < indicesToChange.length; r++) {
                    var index = indicesToChange[r];
                    if (index >= 0 && index < repeater.count) {
                        repeater.itemAt(index).isClicked = false;
                        repeater.itemAt(index).whenclicked.start();
                    }
                }

                forAllText.color="#284863"
                forAllTextArray.color="#98A9BA"

            }

        }





        CustomChosingForFilter {
            id:for6Pulse
            x: 5
            y: 392
            width: 335
            height: 50
            clip: true
            onClickedSignal: {
                for6PulseText.color="#FFFFFF"
                for6PulseTextArray.color="#284863"

                allFilter.isClicked=false
                allFilter.forPulseOn.visible=false
                forAllText.color="#284863"
                forAllTextArray.color="#98A9BA"
                for12Pulse.isClicked=false
                for12Pulse.forPulseOn.visible=false
                for12PulseText.color="#284863"
                for12PulseTextArray.color="#98A9BA"
                for18Pulse.isClicked=false
                for18Pulse.forPulseOn.visible=false
                for18PulseText.color="#284863"
                for18PulseTextArray.color="#98A9BA"
                for24Pulse.isClicked=false
                for24Pulse.forPulseOn.visible=false
                for24PulseText.color="#284863"
                for24PulseTextArray.color="#98A9BA"
                withoutFundamental.isClicked=false
                withoutFundamental.forPulseOn.visible=false
                forFundamentalText.color="#284863"
                fundamentalFilter.color="#98A9BA"

                var indicesToChange = [5, 7, 11, 13, 17, 19, 23, 25, 29, 31, 35, 37, 41, 43, 47, 49];
                countOfBars.categories = indicesToChange
                countOfBars2.categories = indicesToChange
                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange

                for (var notr = 0;  notr < repeater.count; notr++) {
                    if (!indicesToChange.includes(notr)) {
                        repeater.itemAt(notr).isClicked = false;
                        repeater.itemAt(notr).whenclicked.start();
                    }
                }
                for (var r = 0; r < indicesToChange.length; r++) {
                    var index = indicesToChange[r];
                    if (index >= 0 && index < repeater.count) {
                        repeater.itemAt(index).isClicked = true;
                        repeater.itemAt(index).whennonclicked.start();
                    }
                }

                indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange

                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();



                for (var i = 0; i < harmonicnames1RealVaules.count ; i++) {
                    var filterButton = flickable5.contentItem.children[i];

                    if (filterButton.isClicked){

                        if (i < harmonicnames1RealVaules.count){
                            var item = harmonicnamesRealVaules.get(i).text;
                            harmonicnames.append({"text": item});
                            var item1 = harmonicnames1RealVaules.get(i).text;
                            harmonicnames1.append({"text": item1});
                            var list1 = harmonics1RealVaules.get(i).text;
                            listmodel1.append({"text": list1});
                            var list11 = harmonics11RealVaules.get(i).text;
                            listmodel11.append({"text": list11});
                            var list2 = harmonics2RealVaules.get(i).text;
                            listmodel2.append({"text": list2});
                            var list21 = harmonics21RealVaules.get(i).text;
                            listmodel21.append({"text": list21});
                            var list3 = harmonics3RealVaules.get(i).text;
                            listmodel3.append({"text": list3});
                            var list31 = harmonics31RealVaules.get(i).text;
                            listmodel31.append({"text": list31});
                            var list4 = harmonics4RealVaules.get(i).text;
                            listmodel4.append({"text": list4});
                            var list41 = harmonics41RealVaules.get(i).text;
                            listmodel41.append({"text": list41});

                        }



                    }


                }
            }
            onNonclickedSignal: {
                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();

                var indicesToChange = [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange


                for (var i = 0; i < repeater.count; i++) {
                    var filterButton = repeater.itemAt(i);

                    filterButton.isClicked = true;
                    filterButton.whennonclicked.start()


                    if (filterButton.isClicked){

                        if (i < harmonicnames1RealVaules.count){
                            var item = harmonicnamesRealVaules.get(i).text;
                            harmonicnames.append({"text": item});
                            var item1 = harmonicnames1RealVaules.get(i).text;
                            harmonicnames1.append({"text": item1});
                            var list1 = harmonics1RealVaules.get(i).text;
                            listmodel1.append({"text": list1});
                            var list11 = harmonics11RealVaules.get(i).text;
                            listmodel11.append({"text": list11});
                            var list2 = harmonics2RealVaules.get(i).text;
                            listmodel2.append({"text": list2});
                            var list21 = harmonics21RealVaules.get(i).text;
                            listmodel21.append({"text": list21});
                            var list3 = harmonics3RealVaules.get(i).text;
                            listmodel3.append({"text": list3});
                            var list31 = harmonics31RealVaules.get(i).text;
                            listmodel31.append({"text": list31});
                            var list4 = harmonics4RealVaules.get(i).text;
                            listmodel4.append({"text": list4});
                            var list41 = harmonics41RealVaules.get(i).text;
                            listmodel41.append({"text": list41});
                        }
                    }
                }

                indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange

                for6PulseText.color="#284863"
                for6PulseTextArray.color="#98A9BA"

            }

        }

        CustomChosingForFilter {
            id:for12Pulse
            x: 5
            y: 442
            width: 335
            height: 50
            clip: true
            onClickedSignal: {
                for12PulseText.color="#FFFFFF"
                for12PulseTextArray.color="#284863"

                allFilter.isClicked=false
                allFilter.forPulseOn.visible=false
                forAllText.color="#284863"
                forAllTextArray.color="#98A9BA"
                for6Pulse.isClicked=false
                for6Pulse.forPulseOn.visible=false
                for6PulseText.color="#284863"
                for6PulseTextArray.color="#98A9BA"
                for18Pulse.isClicked=false
                for18Pulse.forPulseOn.visible=false
                for18PulseText.color="#284863"
                for18PulseTextArray.color="#98A9BA"
                for24Pulse.isClicked=false
                for24Pulse.forPulseOn.visible=false
                for24PulseText.color="#284863"
                for24PulseTextArray.color="#98A9BA"
                withoutFundamental.isClicked=false
                withoutFundamental.forPulseOn.visible=false
                forFundamentalText.color="#284863"
                fundamentalFilter.color="#98A9BA"

                var indicesToChange = [11, 13, 23, 25, 35, 37, 47, 49];
                countOfBars.categories = indicesToChange
                countOfBars2.categories = indicesToChange
                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange


                for (var notr = 0;  notr < repeater.count; notr++) {
                    if (!indicesToChange.includes(notr)) {
                        repeater.itemAt(notr).isClicked = false;
                        repeater.itemAt(notr).whenclicked.start();
                    }
                }
                for (var r = 0; r < indicesToChange.length; r++) {
                    var index = indicesToChange[r];
                    if (index >= 0 && index < repeater.count) {
                        repeater.itemAt(index).isClicked = true;
                        repeater.itemAt(index).whennonclicked.start();
                    }
                }

                indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange

                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();

                for (var i = 0; i < harmonicnames1RealVaules.count ; i++) {
                    var filterButton = flickable5.contentItem.children[i];

                    if (filterButton.isClicked){

                        if (i < harmonicnames1RealVaules.count){
                            var item = harmonicnamesRealVaules.get(i).text;
                            harmonicnames.append({"text": item});
                            var item1 = harmonicnames1RealVaules.get(i).text;
                            harmonicnames1.append({"text": item1});
                            var list1 = harmonics1RealVaules.get(i).text;
                            listmodel1.append({"text": list1});
                            var list11 = harmonics11RealVaules.get(i).text;
                            listmodel11.append({"text": list11});
                            var list2 = harmonics2RealVaules.get(i).text;
                            listmodel2.append({"text": list2});
                            var list21 = harmonics21RealVaules.get(i).text;
                            listmodel21.append({"text": list21});
                            var list3 = harmonics3RealVaules.get(i).text;
                            listmodel3.append({"text": list3});
                            var list31 = harmonics31RealVaules.get(i).text;
                            listmodel31.append({"text": list31});
                            var list4 = harmonics4RealVaules.get(i).text;
                            listmodel4.append({"text": list4});
                            var list41 = harmonics41RealVaules.get(i).text;
                            listmodel41.append({"text": list41});
                        }
                    }
                }
            }
            onNonclickedSignal: {
                for12PulseText.color="#284863"
                for12PulseTextArray.color="#98A9BA"

                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();

                var indicesToChange = [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange

                for (var i = 0; i < repeater.count; i++) {
                    var filterButton = repeater.itemAt(i);

                    // Her bir filterButton'ın isClicked özelliğini false yap
                    filterButton.isClicked = true;
                    filterButton.whennonclicked.start()


                    if (filterButton.isClicked){

                        if (i < harmonicnames1RealVaules.count){
                            var item = harmonicnamesRealVaules.get(i).text;
                            harmonicnames.append({"text": item});
                            var item1 = harmonicnames1RealVaules.get(i).text;
                            harmonicnames1.append({"text": item1});
                            var list1 = harmonics1RealVaules.get(i).text;
                            listmodel1.append({"text": list1});
                            var list11 = harmonics11RealVaules.get(i).text;
                            listmodel11.append({"text": list11});
                            var list2 = harmonics2RealVaules.get(i).text;
                            listmodel2.append({"text": list2});
                            var list21 = harmonics21RealVaules.get(i).text;
                            listmodel21.append({"text": list21});
                            var list3 = harmonics3RealVaules.get(i).text;
                            listmodel3.append({"text": list3});
                            var list31 = harmonics31RealVaules.get(i).text;
                            listmodel31.append({"text": list31});
                            var list4 = harmonics4RealVaules.get(i).text;
                            listmodel4.append({"text": list4});
                            var list41 = harmonics41RealVaules.get(i).text;
                            listmodel41.append({"text": list41});
                        }
                    }
                }
                indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange


            }
        }


        CustomChosingForFilter
        {
            id:for18Pulse
            x: 5
            y: 492
            width: 335
            height: 50
            clip: true

            onClickedSignal: {
                for18PulseText.color="#FFFFFF"
                for18PulseTextArray.color="#284863"

                allFilter.isClicked=false
                allFilter.forPulseOn.visible=false
                forAllText.color="#284863"
                forAllTextArray.color="#98A9BA"
                for6Pulse.isClicked=false
                for6Pulse.forPulseOn.visible=false
                for6PulseText.color="#284863"
                for6PulseTextArray.color="#98A9BA"
                for12Pulse.isClicked=false
                for12Pulse.forPulseOn.visible=false
                for12PulseText.color="#284863"
                for12PulseTextArray.color="#98A9BA"
                for24Pulse.isClicked=false
                for24Pulse.forPulseOn.visible=false
                for24PulseText.color="#284863"
                for24PulseTextArray.color="#98A9BA"
                withoutFundamental.isClicked=false
                withoutFundamental.forPulseOn.visible=false
                forFundamentalText.color="#284863"
                fundamentalFilter.color="#98A9BA"


                var indicesToChange = [17, 19, 35, 37];
                countOfBars.categories = indicesToChange
                countOfBars2.categories = indicesToChange
                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange


                for (var notr = 0;  notr < repeater.count; notr++) {
                    if (!indicesToChange.includes(notr)) {
                        repeater.itemAt(notr).isClicked = false;
                        repeater.itemAt(notr).whenclicked.start();
                    }
                }
                for (var r = 0; r < indicesToChange.length; r++) {
                    var index = indicesToChange[r];
                    if (index >= 0 && index < repeater.count) {
                        repeater.itemAt(index).isClicked = true;
                        repeater.itemAt(index).whennonclicked.start();
                    }
                }
                indicesToChange = [2, 20, 24, 3];
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange

                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();

                for (var i = 0; i < harmonicnames1RealVaules.count ; i++) {
                    var filterButton = flickable5.contentItem.children[i];


                    if (filterButton.isClicked){

                        if (i < harmonicnames1RealVaules.count){
                            var item = harmonicnamesRealVaules.get(i).text;
                            harmonicnames.append({"text": item});
                            var item1 = harmonicnames1RealVaules.get(i).text;
                            harmonicnames1.append({"text": item1});
                            var list1 = harmonics1RealVaules.get(i).text;
                            listmodel1.append({"text": list1});
                            var list11 = harmonics11RealVaules.get(i).text;
                            listmodel11.append({"text": list11});
                            var list2 = harmonics2RealVaules.get(i).text;
                            listmodel2.append({"text": list2});
                            var list21 = harmonics21RealVaules.get(i).text;
                            listmodel21.append({"text": list21});
                            var list3 = harmonics3RealVaules.get(i).text;
                            listmodel3.append({"text": list3});
                            var list31 = harmonics31RealVaules.get(i).text;
                            listmodel31.append({"text": list31});
                            var list4 = harmonics4RealVaules.get(i).text;
                            listmodel4.append({"text": list4});
                            var list41 = harmonics41RealVaules.get(i).text;
                            listmodel41.append({"text": list41});
                        }
                    }
                }
            }
            onNonclickedSignal: {
                for18PulseText.color="#284863"
                for18PulseTextArray.color="#98A9BA"

                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();

                var indicesToChange = [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange

                for (var i = 0; i < repeater.count; i++) {
                    var filterButton = repeater.itemAt(i);

                    // Her bir filterButton'ın isClicked özelliğini false yap
                    filterButton.isClicked = true;
                    filterButton.whennonclicked.start()


                    if (filterButton.isClicked){

                        if (i < harmonicnames1RealVaules.count){
                            var item = harmonicnamesRealVaules.get(i).text;
                            harmonicnames.append({"text": item});
                            var item1 = harmonicnames1RealVaules.get(i).text;
                            harmonicnames1.append({"text": item1});
                            var list1 = harmonics1RealVaules.get(i).text;
                            listmodel1.append({"text": list1});
                            var list11 = harmonics11RealVaules.get(i).text;
                            listmodel11.append({"text": list11});
                            var list2 = harmonics2RealVaules.get(i).text;
                            listmodel2.append({"text": list2});
                            var list21 = harmonics21RealVaules.get(i).text;
                            listmodel21.append({"text": list21});
                            var list3 = harmonics3RealVaules.get(i).text;
                            listmodel3.append({"text": list3});
                            var list31 = harmonics31RealVaules.get(i).text;
                            listmodel31.append({"text": list31});
                            var list4 = harmonics4RealVaules.get(i).text;
                            listmodel4.append({"text": list4});
                            var list41 = harmonics41RealVaules.get(i).text;
                            listmodel41.append({"text": list41});
                        }
                    }
                }
                indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange

            }
        }


        CustomChosingForFilter {
            id:for24Pulse
            x: 5
            y: 542
            width: 335
            height: 50
            clip: true
            onClickedSignal: {
                for24PulseText.color="#FFFFFF"
                for24PulseTextArray.color="#284863"

                allFilter.isClicked=false
                allFilter.forPulseOn.visible=false
                forAllText.color="#284863"
                forAllTextArray.color="#98A9BA"
                for6Pulse.isClicked=false
                for6Pulse.forPulseOn.visible=false
                for6PulseText.color="#284863"
                for6PulseTextArray.color="#98A9BA"
                for12Pulse.isClicked=false
                for12Pulse.forPulseOn.visible=false
                for12PulseText.color="#284863"
                for12PulseTextArray.color="#98A9BA"
                for18Pulse.isClicked=false
                for18Pulse.forPulseOn.visible=false
                for18PulseText.color="#284863"
                for18PulseTextArray.color="#98A9BA"
                withoutFundamental.isClicked=false
                withoutFundamental.forPulseOn.visible=false
                forFundamentalText.color="#284863"
                fundamentalFilter.color="#98A9BA"

                var indicesToChange = [23, 25, 47, 49];
                countOfBars.categories = indicesToChange
                countOfBars2.categories = indicesToChange
                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange

                for (var notr = 0;  notr < repeater.count; notr++) {
                    if (!indicesToChange.includes(notr)) {
                        repeater.itemAt(notr).isClicked = false;
                        repeater.itemAt(notr).whenclicked.start();
                    }
                }
                for (var r = 0; r < indicesToChange.length; r++) {
                    var index = indicesToChange[r];
                    if (index >= 0 && index < repeater.count) {
                        repeater.itemAt(index).isClicked = true;
                        repeater.itemAt(index).whennonclicked.start();
                    }
                }

                indicesToChange = [2, 20, 24, 3];
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange

                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();

                for (var i = 0; i < harmonicnames1RealVaules.count ; i++) {
                    var filterButton = flickable5.contentItem.children[i];

                    if (filterButton.isClicked){

                        if (i < harmonicnames1RealVaules.count){
                            var item = harmonicnamesRealVaules.get(i).text;
                            harmonicnames.append({"text": item});
                            var item1 = harmonicnames1RealVaules.get(i).text;
                            harmonicnames1.append({"text": item1});
                            var list1 = harmonics1RealVaules.get(i).text;
                            listmodel1.append({"text": list1});
                            var list11 = harmonics11RealVaules.get(i).text;
                            listmodel11.append({"text": list11});
                            var list2 = harmonics2RealVaules.get(i).text;
                            listmodel2.append({"text": list2});
                            var list21 = harmonics21RealVaules.get(i).text;
                            listmodel21.append({"text": list21});
                            var list3 = harmonics3RealVaules.get(i).text;
                            listmodel3.append({"text": list3});
                            var list31 = harmonics31RealVaules.get(i).text;
                            listmodel31.append({"text": list31});
                            var list4 = harmonics4RealVaules.get(i).text;
                            listmodel4.append({"text": list4});
                            var list41 = harmonics41RealVaules.get(i).text;
                            listmodel41.append({"text": list41});
                        }
                    }
                }
            }
            onNonclickedSignal: {
                for24PulseText.color="#284863"
                for24PulseTextArray.color="#98A9BA"

                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();

                var indicesToChange = [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange


                for (var i = 0; i < repeater.count; i++) {
                    var filterButton = repeater.itemAt(i);

                    // Her bir filterButton'ın isClicked özelliğini false yap
                    filterButton.isClicked = true;
                    filterButton.whennonclicked.start()


                    if (filterButton.isClicked){

                        if (i < harmonicnames1RealVaules.count){
                            var item = harmonicnamesRealVaules.get(i).text;
                            harmonicnames.append({"text": item});
                            var item1 = harmonicnames1RealVaules.get(i).text;
                            harmonicnames1.append({"text": item1});
                            var list1 = harmonics1RealVaules.get(i).text;
                            listmodel1.append({"text": list1});
                            var list11 = harmonics11RealVaules.get(i).text;
                            listmodel11.append({"text": list11});
                            var list2 = harmonics2RealVaules.get(i).text;
                            listmodel2.append({"text": list2});
                            var list21 = harmonics21RealVaules.get(i).text;
                            listmodel21.append({"text": list21});
                            var list3 = harmonics3RealVaules.get(i).text;
                            listmodel3.append({"text": list3});
                            var list31 = harmonics31RealVaules.get(i).text;
                            listmodel31.append({"text": list31});
                            var list4 = harmonics4RealVaules.get(i).text;
                            listmodel4.append({"text": list4});
                            var list41 = harmonics41RealVaules.get(i).text;
                            listmodel41.append({"text": list41});
                        }
                    }
                }
                indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange
            }
        }



        Text {
            id: for12PulseText
            x: 12
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
            x: 12
            y: 494
            width: 121
            height: 47
            color: "#284863"
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
            x: 12
            y: 544
            width: 121
            height: 47
            color: "#284863"
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

        Rectangle {
            id: rectangle7
            x: 4
            y: 651
            width: 338
            height: 64
            color: "#f7f8fa"
            radius: 0
            border.color: "#adb1b4"
            border.width: 1
        }

        Flickable {
            id: flickable5
            x: 6
            y: 651
            width: 334
            height: 65
            layer.enabled: true
            contentWidth: 4400
            contentX: 0
            clip: true
            flickDeceleration: 3000
            maximumFlickVelocity: 5000




            Repeater {
                id: repeater
                model: 51 // Toplam 51 öğe oluşturulacak

                delegate: CustomChosingForFilterHarmonics {
                    x: index * 86 // Her öğenin x konumu 86 artışla ayarlanır
                    filtertexttext.text: {
                        if (index === 0) return "0th";
                        else if (index === 1) return "1st";
                        else if (index === 2) return "2nd";
                        else if (index === 3) return "3rd";
                        else if (index === 21) return "21st";
                        else if (index === 22) return "22nd";
                        else if (index === 23) return "23rd";
                        else if (index === 31) return "31st";
                        else if (index === 32) return "32nd";
                        else if (index === 33) return "33rd";
                        else if (index === 41) return "41st";
                        else if (index === 42) return "42nd";
                        else if (index === 43) return "43rd";
                        else if (index >= 4 && index <= 51) return (index) + "th";
                        else return "";
                    }
                    onClickedSignal: {
                        harmonicnames.clear();
                        harmonicnames1.clear();
                        listmodel1.clear();
                        listmodel11.clear();
                        listmodel2.clear();
                        listmodel21.clear();
                        listmodel3.clear();
                        listmodel31.clear();
                        listmodel4.clear();
                        listmodel41.clear();


                        allFilter.isClicked=false
                        allFilter.forPulseOn.visible=false
                        forAllText.color="#284863"
                        forAllTextArray.color="#98A9BA"
                        for6Pulse.isClicked=false
                        for6Pulse.forPulseOn.visible=false
                        for6PulseText.color="#284863"
                        for6PulseTextArray.color="#98A9BA"
                        for12Pulse.isClicked=false
                        for12Pulse.forPulseOn.visible=false
                        for12PulseText.color="#284863"
                        for12PulseTextArray.color="#98A9BA"
                        for18Pulse.isClicked=false
                        for18Pulse.forPulseOn.visible=false
                        for18PulseText.color="#284863"
                        for18PulseTextArray.color="#98A9BA"
                        for24Pulse.isClicked=false
                        for24Pulse.forPulseOn.visible=false
                        for24PulseText.color="#284863"
                        for24PulseTextArray.color="#98A9BA"
                        withoutFundamental.isClicked=false
                        withoutFundamental.forPulseOn.visible=false

                        forFundamentalText.color="#284863"
                        fundamentalFilter.color="#98A9BA"

                        var indicesToChange = [];


                        for (var i = 0; i < harmonicnames1RealVaules.count ; i++) {
                            var filterButton = flickable5.contentItem.children[i];

                            if (filterButton.isClicked){

                                if (i < harmonicnames1RealVaules.count){
                                    var item = harmonicnamesRealVaules.get(i).text;
                                    harmonicnames.append({"text": item});
                                    var item1 = harmonicnames1RealVaules.get(i).text;
                                    harmonicnames1.append({"text": item1});
                                    var list1 = harmonics1RealVaules.get(i).text;
                                    listmodel1.append({"text": list1});
                                    var list11 = harmonics11RealVaules.get(i).text;
                                    listmodel11.append({"text": list11});
                                    var list2 = harmonics2RealVaules.get(i).text;
                                    listmodel2.append({"text": list2});
                                    var list21 = harmonics21RealVaules.get(i).text;
                                    listmodel21.append({"text": list21});
                                    var list3 = harmonics3RealVaules.get(i).text;
                                    listmodel3.append({"text": list3});
                                    var list31 = harmonics31RealVaules.get(i).text;
                                    listmodel31.append({"text": list31});
                                    var list4 = harmonics4RealVaules.get(i).text;
                                    listmodel4.append({"text": list4});
                                    var list41 = harmonics41RealVaules.get(i).text;
                                    listmodel41.append({"text": list41});


                                    indicesToChange.push(i)

                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange

                                }
                            }
                        }
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange



                    }
                    onNonclickedSignal: {
                        harmonicnames.clear();
                        harmonicnames1.clear();
                        listmodel1.clear();
                        listmodel11.clear();
                        listmodel2.clear();
                        listmodel21.clear();
                        listmodel3.clear();
                        listmodel31.clear();
                        listmodel4.clear();
                        listmodel41.clear();

                        var indicesToChange = [];
                        countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                        countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                                  "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange

                        for (var i = 0; i < harmonicnames1RealVaules.count; i++) {
                            var filterButton = flickable5.contentItem.children[i];

                            if (!filterButton.isClicked) {
                                // Tıklanmamış öğeleri listeden kaldır

                                continue;

                            }


                            if (i < harmonicnames1RealVaules.count) {
                                var item = harmonicnamesRealVaules.get(i).text;
                                harmonicnames.append({"text": item});
                                var item1 = harmonicnames1RealVaules.get(i).text;
                                harmonicnames1.append({"text": item1});
                                var list1 = harmonics1RealVaules.get(i).text;
                                listmodel1.append({"text": list1});
                                var list11 = harmonics11RealVaules.get(i).text;
                                listmodel11.append({"text": list11});
                                var list2 = harmonics2RealVaules.get(i).text;
                                listmodel2.append({"text": list2});
                                var list21 = harmonics21RealVaules.get(i).text;
                                listmodel21.append({"text": list21});
                                var list3 = harmonics3RealVaules.get(i).text;
                                listmodel3.append({"text": list3});
                                var list31 = harmonics31RealVaules.get(i).text;
                                listmodel31.append({"text": list31});
                                var list4 = harmonics4RealVaules.get(i).text;
                                listmodel4.append({"text": list4});
                                var list41 = harmonics41RealVaules.get(i).text;
                                listmodel41.append({"text": list41});

                                indicesToChange.push(i)
                        countOfBars.categories = indicesToChange
                        countOfBars2.categories = indicesToChange
                            }
                        }
                        myFirstBarSet.values=indicesToChange
                        myFirstBarSet2.values=indicesToChange
                        mySecondBarSet.values=indicesToChange
                        mySecondBarSet2.values=indicesToChange

                    }
                }

            }


            ScrollBar.horizontal:  ScrollBar {
                id: scrollBar
                x: 0
                width: 322
                height: 50
                anchors.top: parent.top
                anchors.topMargin: 45

                contentItem:
                    //                    Image {
                    //                    id: scrollBar
                    //                    x: 41
                    //                    y: -42
                    //                    width: 20/2
                    //                    height: 100/2
                    //                    rotation: -90
                    //                    source: "images/ScrollBarHorizontal.svg"

                    //                    fillMode: Image.PreserveAspectFit
                    //                }


                    Image {
                    id: scrollBarHorizontal
                    x: 5
                    anchors.top: parent.top
                    source: "images/ScrollBarHorizontal.svg"
                    anchors.topMargin: -13
                    fillMode: Image.PreserveAspectFit
                }

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
            contentWidth: 390
            clip: true
            Text {
                id:for12PulseTextArray
                x: 0
                y: 13
                width: 160
                height: 22
                color: "#98A9BA"
                text: qsTr("11th 13th 23rd 25th 35th 37th 47th 49th")
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
            contentWidth: 220
            clip: true
            Text {
                id:for18PulseTextArray
                x: 0
                y: 13
                width: 160
                height: 22
                color: "#98A9BA"
                text: qsTr("17th 19th 35th 37th")
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
            contentWidth: 220
            clip: true
            Text {
                id:for24PulseTextArray
                x: 0
                y: 13
                width: 160
                height: 22
                color: "#98A9BA"
                text: qsTr("23rd 25th 47th 49th")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
        }













        CustomChosingForFilter {
            id:withoutFundamental
            x: 5
            y: 592
            width: 335
            height: 50
            clip: true

            onClickedSignal: {
                forFundamentalText.color="#FFFFFF"
                fundamentalFilter.color="#284863"

                allFilter.isClicked=false
                allFilter.forPulseOn.visible=false
                forAllText.color="#284863"
                forAllTextArray.color="#98A9BA"
                for6Pulse.isClicked=false
                for6Pulse.forPulseOn.visible=false
                for6PulseText.color="#284863"
                for6PulseTextArray.color="#98A9BA"
                for12Pulse.isClicked=false
                for12Pulse.forPulseOn.visible=false
                for12PulseText.color="#284863"
                for12PulseTextArray.color="#98A9BA"
                for18Pulse.isClicked=false
                for18Pulse.forPulseOn.visible=false
                for18PulseText.color="#284863"
                for18PulseTextArray.color="#98A9BA"
                for24Pulse.isClicked=false
                for24Pulse.forPulseOn.visible=false
                for24PulseText.color="#284863"
                for24PulseTextArray.color="#98A9BA"


                var indicesToChange = [0, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50];



                for (var notr = 0;  notr < repeater.count; notr++) {
                    if (!indicesToChange.includes(notr)) {
                        repeater.itemAt(notr).isClicked = false;
                        repeater.itemAt(notr).whenclicked.start();
                    }
                }
                for (var r = 0; r < indicesToChange.length; r++) {
                    var index = indicesToChange[r];
                    if (index >= 0 && index < repeater.count) {
                        repeater.itemAt(index).isClicked = true;
                        repeater.itemAt(index).whennonclicked.start();
                    }
                }

                indicesToChange = [2, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                countOfBars.categories = ["0",  "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                countOfBars2.categories = ["0",  "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];


                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange
                indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange

                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();


                for (var i = 0; i < harmonicnames1RealVaules.count ; i++) {
                    var filterButton = flickable5.contentItem.children[i];

                    if (filterButton.isClicked){
                        if (i < harmonicnames1RealVaules.count){
                            var item = harmonicnamesRealVaules.get(i).text;
                            harmonicnames.append({"text": item});
                            var item1 = harmonicnames1RealVaules.get(i).text;
                            harmonicnames1.append({"text": item1});
                            var list1 = harmonics1RealVaules.get(i).text;
                            listmodel1.append({"text": list1});
                            var list11 = harmonics11RealVaules.get(i).text;
                            listmodel11.append({"text": list11});
                            var list2 = harmonics2RealVaules.get(i).text;
                            listmodel2.append({"text": list2});
                            var list21 = harmonics21RealVaules.get(i).text;
                            listmodel21.append({"text": list21});
                            var list3 = harmonics3RealVaules.get(i).text;
                            listmodel3.append({"text": list3});
                            var list31 = harmonics31RealVaules.get(i).text;
                            listmodel31.append({"text": list31});
                            var list4 = harmonics4RealVaules.get(i).text;
                            listmodel4.append({"text": list4});
                            var list41 = harmonics41RealVaules.get(i).text;
                            listmodel41.append({"text": list41});
                        }
                    }
                }
            }

            onNonclickedSignal: {
                forFundamentalText.color="#284863"
                fundamentalFilter.color="#98A9BA"

                harmonicnames.clear();
                harmonicnames1.clear();
                listmodel1.clear();
                listmodel11.clear();
                listmodel2.clear();
                listmodel21.clear();
                listmodel3.clear();
                listmodel31.clear();
                listmodel4.clear();
                listmodel41.clear();

                var indicesToChange = [2, 100, 44, 13, 22, 5, 6, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 17, 8, 4, 10, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5, 11, 6, 3, 4, 15, 6, 7, 2, 1, 4, 2, 5];
                countOfBars.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                countOfBars2.categories = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10",
                                          "11", "12", "13", "14", "15", "16", "17", "18", "19", "20"];
                myFirstBarSet.values=indicesToChange
                myFirstBarSet2.values=indicesToChange

                for (var i = 0; i < repeater.count; i++) {
                    var filterButton = repeater.itemAt(i);

                    // Her bir filterButton'ın isClicked özelliğini false yap
                    filterButton.isClicked = true;
                    filterButton.whennonclicked.start()


                    if (filterButton.isClicked){

                        if (i < harmonicnames1RealVaules.count){
                            var item = harmonicnamesRealVaules.get(i).text;
                            harmonicnames.append({"text": item});
                            var item1 = harmonicnames1RealVaules.get(i).text;
                            harmonicnames1.append({"text": item1});
                            var list1 = harmonics1RealVaules.get(i).text;
                            listmodel1.append({"text": list1});
                            var list11 = harmonics11RealVaules.get(i).text;
                            listmodel11.append({"text": list11});
                            var list2 = harmonics2RealVaules.get(i).text;
                            listmodel2.append({"text": list2});
                            var list21 = harmonics21RealVaules.get(i).text;
                            listmodel21.append({"text": list21});
                            var list3 = harmonics3RealVaules.get(i).text;
                            listmodel3.append({"text": list3});
                            var list31 = harmonics31RealVaules.get(i).text;
                            listmodel31.append({"text": list31});
                            var list4 = harmonics4RealVaules.get(i).text;
                            listmodel4.append({"text": list4});
                            var list41 = harmonics41RealVaules.get(i).text;
                            listmodel41.append({"text": list41});
                        }
                    }
                }
                indicesToChange = [2, 20, 24, 3, 12, 1, 3, 7, 2, 1, 5, 2, 3, 1, 2, 5, 2, 5, 1, 0, 2, 1, 2, 7, 3, 1, 5, 1, 2, 1, 2, 5, 2, 3, 1, 0, 2, 1, 3, 7, 3, 2, 1, 5, 2, 3, 1, 1, 2, 2, 3];
                mySecondBarSet.values=indicesToChange
                mySecondBarSet2.values=indicesToChange

                //                if (fundamentalTEXT.text !== "") {
                //                    harmonicnames.insert(1, {"text": fundamentalTEXT.text});
                //                    fundamentalTEXT.text = ""; // fundamental'ı temizle
                //                }
            }

        }


        Flickable {
            id: flickable6
            x: 167
            y: 594
            width: 168
            height: 47
            maximumFlickVelocity: 5000
            clip: true
            flickDeceleration: 3000
            contentWidth: 2065
            layer.enabled: true
            contentX: 0
            Text {
                id:fundamentalFilter
                x: 0
                y: 13
                width: 160
                height: 22
                color: "#98a9ba"
                text: qsTr("0th 2nd 3rd 4th 5th 6th 7th 8th 9th 10th 11th 12th 13th 14th 15th 16th 17th 18th 19th 20th 21st 22nd 23rd 24th 25th 26th 27th 28th 29th 30th 31st 32nd 33rd 34th 35th 36th 37th 38th 39th 40th 41st 42nd 43rd 44th 45th 46th 47th 48th 49th 50th")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
        }



        Text {
            id: forFundamentalText
            x: 12
            y: 595
            width: 146
            height: 47
            color: "#284863"
            text: qsTr("Without Fundamental")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }


        Flickable {
            id: flickableAll
            x: 167
            y: 344
            width: 168
            height: 47
            layer.enabled: true
            contentWidth: 2100
            contentX: 0
            clip: true
            flickDeceleration: 3000
            maximumFlickVelocity: 5000

            Text {
                id: forAllTextArray
                x: 0
                y: 13
                width: 160
                height: 22
                color: "#98a9ba"
                text: qsTr("0th 1st 2nd 3rd 4th 5th 6th 7th 8th 9th 10th 11th 12th 13th 14th 15th 16th 17th 18th 19th 20th 21st 22nd 23rd 24th 25th 26th 27th 28th 29th 30th 31st 32nd 33rd 34th 35th 36th 37th 38th 39th 40th 41st 42nd 43rd 44th 45th 46th 47th 48th 49th 50th")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
        }

        Text {
            id: forAllText
            x: 12
            y: 344
            width: 121
            height: 47
            color: "#284863"
            text: qsTr("All")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }


        Flickable {
            id: flickable1
            x: 167
            y: 394
            width: 168
            height: 47
            layer.enabled: true
            contentWidth: 700
            contentX: 0
            clip: true
            flickDeceleration: 3000
            maximumFlickVelocity: 5000

            Text {
                id: for6PulseTextArray
                x: 0
                y: 13
                width: 160
                height: 22
                color: "#98a9ba"
                text: qsTr("5th 7th 11th 13th 17th 19th 23rd 25th 29th 31st 35th 37th 41st 43rd 47th 49th")
                font.pixelSize: 18
                verticalAlignment: Text.AlignVCenter
                clip: false
            }
        }

        Text {
            id: for6PulseText
            x: 12
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

        Rectangle {
            id: rectangle11
            x: 8
            y: 163
            width: 330
            height: 164
            color: "#ffffff"
            border.color: "#adb1b4"
        }

        CustomSwitchForPhaseA{
            id:customswitchA
            x: 10
            y:190
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
                four1.visible=true

                a.color="#ff5555"
                myFirstBarSet.color="#FF5555"

                if(customswitchB.rectangle1.x===48 && customswitchC.rectangle1.x===48 && customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=-118

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=false
                    percentagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Value"
                    text3.text="Value"
                    text4.text="Value"

                    one.visible=true
                    two.visible=true
                    three.visible=true
                    four.visible=true

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#FCAE18"

                    clickedPhase4.start()
                    phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    //              phase3Text.color="#A7AEB6"
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

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#FF5555"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }

                else if(customswitchB.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
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

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#FCAE18"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchC.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#217EFD"

                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#4EC040"

                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
            }
            onNonclickedSignal: {
                //
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#FCAE18"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#217EFD"

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#4EC040"

                    phaseAHarmonicHeader1.text="Phase N"
                    phaseAHarmonicHeader2.text="Phase N"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }


                else if(customswitchB.rectangle1.x===48 && customswitchC.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FCAE18"
                    myFirstBarSet.color="#217EFD"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchB.rectangle1.x===48 && customswitchN.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true


                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FCAE18"
                    myFirstBarSet.color="#4EC040"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true


                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#217EFD"
                    myFirstBarSet.color="#4EC040"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24  && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#617284"
                    customHeaderForPhaseB.rect1.color="#617284"
                    customHeaderForPhaseC.rect1.color="#617284"
                    customHeaderForPhaseN.rect1.color="#617284"


                    valuecheck.checkBoxOn.visible=false
                    valuecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
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
            y: 190

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
                four1.visible=true

                b.color="#FCAE18"

                myFirstBarSet.color="#FCAE18"

                if(customswitchA.rectangle1.x===48 && customswitchC.rectangle1.x===48 && customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=-118

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=false
                    percentagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"

                    text1.text="Value"
                    text2.text="Value"
                    text3.text="Value"
                    text4.text="Value"

                    one.visible=true
                    two.visible=true
                    three.visible=true
                    four.visible=true


                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#FCAE18"

                    clickedPhase4.start()
                    phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    //              phase3Textcolor="#A7AEB6"
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

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#FCAE18"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }

                else if(customswitchA.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#FCAE18"
                    customHeaderForPhaseN.rect1.color="#FCAE18"

                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#FCAE18"

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchC.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FCAE18"
                    myFirstBarSet.color="#217EFD"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FCAE18"
                    myFirstBarSet.color="#4EC040"

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"

                }



            }
            onNonclickedSignal: {
                //
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase A"
                    phaseAHarmonicHeader4.text="Phase A"

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#FF5555"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#217EFD"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    phaseAHarmonicHeader1.text="Phase N"
                    phaseAHarmonicHeader2.text="Phase N"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#4EC040"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#217EFD"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#4EC040"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#217EFD"
                    myFirstBarSet.color="#4EC040"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24  && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#617284"
                    customHeaderForPhaseB.rect1.color="#617284"
                    customHeaderForPhaseC.rect1.color="#617284"
                    customHeaderForPhaseN.rect1.color="#617284"

                    valuecheck.checkBoxOn.visible=false
                    valuecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
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
            y: 190
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
                c.color="#217EFD"

                four.visible=true
                four1.visible=true

                myFirstBarSet.color="#217EFD"

                if(customswitchA.rectangle1.x===48 && customswitchB.rectangle1.x===48 && customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=-118

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=false
                    percentagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"

                    text1.text="Value"
                    text2.text="Value"
                    text3.text="Value"
                    text4.text="Value"

                    one.visible=true
                    two.visible=true
                    three.visible=true
                    four.visible=true

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#FCAE18"

                    clickedPhase4.start()
                    phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    //              phase3Text.color="#A7AEB6"
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text="Limits"
                    four.visible=true
                    four1.visible=true

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#217EFD"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"

                }


                else if(customswitchA.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8

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

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#217EFD"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"

                }
                else if(customswitchB.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8

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

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FCAE18"
                    myFirstBarSet.color="#217EFD"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchN.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8

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

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#217EFD"
                    myFirstBarSet.color="#4EC040"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
            }
            onNonclickedSignal: {
                //
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase A"
                    phaseAHarmonicHeader4.text="Phase A"

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#FF5555"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#FCAE18"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    phaseAHarmonicHeader1.text="Phase N"
                    phaseAHarmonicHeader2.text="Phase N"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#4EC040"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"

                }



                else if(customswitchA.rectangle1.x===48 && customswitchB.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#FCAE18"
                    customHeaderForPhaseN.rect1.color="#FCAE18"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#FCAE18"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#4EC040"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchB.rectangle1.x===48 && customswitchN.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#4EC040"
                    customHeaderForPhaseN.rect1.color="#4EC040"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase N"
                    phaseAHarmonicHeader4.text="Phase N"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FCAE18"
                    myFirstBarSet.color="#4EC040"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24  && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#617284"
                    customHeaderForPhaseB.rect1.color="#617284"
                    customHeaderForPhaseC.rect1.color="#617284"
                    customHeaderForPhaseN.rect1.color="#617284"

                    valuecheck.checkBoxOn.visible=false
                    valuecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
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
            y: 190

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
                n.color="#4EC040"
                myFirstBarSet.color="#4EC040"

                four.visible=true
                four1.visible=true

                if(customswitchA.rectangle1.x===48 && customswitchB.rectangle1.x===48 && customswitchC.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=-118
                    one.visible=true
                    two.visible=true
                    three.visible=true
                    four.visible=true

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=false
                    percentagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"

                    text1.text="Value"
                    text2.text="Value"
                    text3.text="Value"
                    text4.text="Value"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#FCAE18"

                    clickedPhase4.start()
                    phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    //              phase3Text.color="#A7AEB6"
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

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#4EC040"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"

                }

                else if(customswitchA.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8

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

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#4EC040"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchB.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8

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

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FCAE18"
                    myFirstBarSet.color="#4EC040"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchC.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rec

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

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#217EFD"
                    myFirstBarSet.color="#4EC040"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
            }
            onNonclickedSignal: {
                //
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase A"
                    phaseAHarmonicHeader4.text="Phase A"

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#FF5555"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#FCAE18"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
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
                    phasecheck.checkBoxOn.visible=true
                    phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Phase"
                    text4.text=""
                    four.visible=false
                    four1.visible=false

                    phaseAHarmonicHeader1.text="Phase C"
                    phaseAHarmonicHeader2.text="Phase C"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"

                    rectangle8.visible=true
                    chartviewHarmonics2.visible=false
                    myFirstBarSet.color="#217EFD"

                    clickedPhase1.start()
                    //                phase1Text.color="#A7AEB6"
                    phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchA.rectangle1.x===48 && customswitchB.rectangle1.x===48){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#FCAE18"
                    customHeaderForPhaseN.rect1.color="#FCAE18"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase B"
                    phaseAHarmonicHeader4.text="Phase B"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#FCAE18"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchA.rectangle1.x===48 && customswitchC.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FF5555"
                    customHeaderForPhaseB.rect1.color="#FF5555"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true

                    phaseAHarmonicHeader1.text="Phase A"
                    phaseAHarmonicHeader2.text="Phase A"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FF5555"
                    myFirstBarSet.color="#217EFD"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchB.rectangle1.x===48 && customswitchC.rectangle1.x===48 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#FCAE18"
                    customHeaderForPhaseB.rect1.color="#FCAE18"
                    customHeaderForPhaseC.rect1.color="#217EFD"
                    customHeaderForPhaseN.rect1.color="#217EFD"

                    valuecheck.checkBoxOn.visible=true
                    valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    percentagecheck.checkBoxOn.visible=true
                    percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    phasecheck.checkBoxOn.visible=false
                    phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    text1.text="Value"
                    text2.text="Percentage"
                    text3.text="Value"
                    text4.text="Percentage"
                    four.visible=true
                    four1.visible=true

                    phaseAHarmonicHeader1.text="Phase B"
                    phaseAHarmonicHeader2.text="Phase B"
                    phaseAHarmonicHeader3.text="Phase C"
                    phaseAHarmonicHeader4.text="Phase C"

                    rectangle8.visible=false
                    chartviewHarmonics2.visible=true
                    myFirstBarSet2.color="#FCAE18"
                    myFirstBarSet.color="#217EFD"

                    clickedPhase2.start()
                    phase1Text.color="#A7AEB6"
                    //                phase2Text.color="#A7AEB6"
                    phase3Text.color="#A7AEB6"
                }
                else if(customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24  && customswitchB.rectangle1.x===24 && customswitchC.rectangle1.x===24 ){
                    rectangleForPhase1.x=81
                    rectangleForPhase1.y=8
                    customHeaderForPhaseA.rect1.color="#617284"
                    customHeaderForPhaseB.rect1.color="#617284"
                    customHeaderForPhaseC.rect1.color="#617284"
                    customHeaderForPhaseN.rect1.color="#617284"

                    valuecheck.checkBoxOn.visible=false
                    valuecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
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

        Item {
            id:chosingHeaderPhase1
            height: 53
            x:8
            y:111
            width: 110
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




        MouseArea {
            id: mouseAreaPhase2
            x: phase2Text.x
            y: 113
            width: 110
            height: 53
            onClicked: {

                rectangle8.visible=false
                chartviewHarmonics2.visible=true

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

                valuecheck.checkBoxOn.visible=true
                valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                percentagecheck.checkBoxOn.visible=true
                percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                phasecheck.checkBoxOn.visible=false
                phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                text1.text="Value"
                text2.text="Percentage"
                text3.text="Value"
                text4.text="Percentage"
                four.visible=true
                four1.visible=true

                clickedPhase2.start()
                phase1Text.color="#A7AEB6"
                //                phase2Text.color="#A7AEB6"
                phase3Text.color="#A7AEB6"
            }
        }



        MouseArea {
            id: mouseAreaPhase1
            x: 8
            y: 113
            width: 110
            height: 53
            onClicked: {

                rectangle8.visible=true
                chartviewHarmonics2.visible=false

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
                phasecheck.checkBoxOn.visible=true
                phasecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                percentagecheck.checkBoxOn.visible=true
                percentagecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                text1.text="Value"
                text2.text="Percentage"
                text3.text="Phase"
                text4.text=""
                four.visible=false
                four1.visible=false

                rectangleForPhase1.x=81
                rectangleForPhase1.y=8
                customHeaderForPhaseA.rect1.color="#FF5555"
                customHeaderForPhaseB.rect1.color="#FF5555"
                customHeaderForPhaseC.rect1.color="#FF5555"
                customHeaderForPhaseN.rect1.color="#FF5555"


                phaseAHarmonicHeader1.text="Phase A"
                phaseAHarmonicHeader2.text="Phase A"
                phaseAHarmonicHeader3.text="Phase A"
                phaseAHarmonicHeader4.text="Phase A"


                clickedPhase1.start()
                //                phase1Text.color="#A7AEB6"
                phase2Text.color="#A7AEB6"
                phase3Text.color="#A7AEB6"

            }
        }


        MouseArea {
            id: mouseAreaPhase4
            x: phase3Text.x
            y: 113
            width: 110
            height: 53
            onClicked: {
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

                valuecheck.checkBoxOn.visible=true
                valuecheck.checkBoxOFF.source="images/CheckBoxONBG.svg"
                percentagecheck.checkBoxOn.visible=false
                percentagecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                phasecheck.checkBoxOn.visible=false
                phasecheck.checkBoxOFF.source="images/CheckBoxOFF.svg"
                text1.text="Value"
                text2.text="Value"
                text3.text="Value"
                text4.text="Value"
                four.visible=true
                four1.visible=true


                clickedPhase4.start()
                phase1Text.color="#A7AEB6"
                phase2Text.color="#A7AEB6"
                //              phase3Text.color="#A7AEB6"
            }
        }

        Image {
            id: bGHeader1
            x: 11
            y: 238
            width: 648/2
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
        }









        Text {
            id: phase1Text
            x: 8
            y: 115
            width: 110
            height: 50
            color: "#284863"
            text: qsTr("1 Channel")
            font.letterSpacing: -2
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: phase2Text
            x: 118
            y: 115
            width: 110
            height: 50
            color: "#A7AEB6"
            text: qsTr("2 Channel")
            font.letterSpacing: -2
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: phase3Text
            x: 228
            y: 115
            width: 110
            height: 50
            color: "#A7AEB6"
            text: qsTr("4 Channel")
            font.letterSpacing: -2
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
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
            text: qsTr("")
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
        flickDeceleration: 1000
        maximumFlickVelocity: 5000
        contentHeight: 2600


        ListModel {
            id: harmonicnames1RealVaules

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    // İlk ListModel'deki her öğeyi ikinci ListModel'e ekleyin.
                    harmonicnames1RealVaules.append({"text": "ih"+ (i)})
                    harmonicnames1.append({"text": "iH"+ (i)})
                }
            }

            onDataChanged:
            {
                // harmonicnames'teki bir öğe değiştiğinde  harmonicnames1'i güncelleyin
                for (var i = 0; i < 51; i++) {
                    //                    if(forFundamentalText.color==="#FFFFFF"){
                    //                        if (i !== 1) {
                    harmonicnames1.set(i, {"text": harmonicnames1RealVaules.get(i).text});
                    //                        }
                    //                    }
                }
            }
        }

        ListModel {
            id: harmonicnamesRealVaules

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    // İlk ListModel'deki her öğeyi ikinci ListModel'e ekleyin.
                    harmonicnamesRealVaules.append({"text": "H"+ (i)})
                    harmonicnames.append({"text": "H"+ (i)})
                }
            }

            onDataChanged:
            {
                // harmonicnames'teki bir öğe değiştiğinde  harmonicnames1'i güncelleyin
                for (var i = 0; i < 51; i++) {
                    //                    if(forFundamentalText.color==="#FFFFFF"){
                    //                        if (i !== 1) {
                    harmonicnames.set(i, {"text": harmonicnamesRealVaules.get(i).text});
                    //                        }
                    //                    }
                }
            }
        }



        ListModel {
            id: harmonicnames1
        }



        ListModel {
            id: harmonicnames
        }

        ListView {
            id: harmonicnameslistview
            x: 12
            y: 12
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
            model: harmonicnames
            delegate:Text {
                id:harmonicnamesText
                color: "#284863"
                text: model.text
                font.pixelSize: 18
                NumberAnimation on font.pixelSize {
                    running: for6Pulse.clickedSignal()
                    from: 22
                    to: 18
                }

            }
        }


        ListView {
            id: harmonicnameslistview1
            x: 12
            y: 35
            width: 150
            height: 5000
            visible: true
            model: harmonicnames1
            delegate: Text {
                color: "#9DA0A9"
                text: model.text
                font.pixelSize: 18
                NumberAnimation on font.pixelSize {
                    running: for6Pulse.clickedSignal()
                    from: 22
                    to: 18
                }
            }
            interactive: false
            flickDeceleration: 3000
            clip: false
            spacing: 29
            maximumFlickVelocity: 5000
            cacheBuffer: 323
            z: 1
            contentHeight: 5500
            contentY: 0
        }


        ListModel {
            id: harmonics1RealVaules

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    // İlk ListModel'deki her öğeyi ikinci ListModel'e ekleyin.
                    harmonics1RealVaules.append({"text": "100."+ "0"})
                    listmodel1.append({"text": "100."+  "0"})
                }
            }

            onDataChanged:
            {
                // harmonicnames'teki bir öğe değiştiğinde  harmonicnames1'i güncelleyin
                for (var i = 0; i < 51; i++) {
                    listmodel1.set(i, {"text": harmonics1RealVaules.get(i).text});
                }
            }
        }



        ListModel {
            id: harmonics11RealVaules

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    // İlk ListModel'deki her öğeyi ikinci ListModel'e ekleyin.
                    harmonics11RealVaules.append({"text": "111."+  "1"})
                    listmodel11.append({"text": "111."+  "1"})
                }
            }

            onDataChanged:
            {
                // harmonicnames'teki bir öğe değiştiğinde  harmonicnames1'i güncelleyin
                for (var i = 0; i < 51; i++) {
                    listmodel11.set(i, {"text": harmonics11RealVaules.get(i).text});
                }
            }
        }

        ListModel {
            id: harmonics2RealVaules

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    // İlk ListModel'deki her öğeyi ikinci ListModel'e ekleyin.
                    harmonics2RealVaules.append({"text": "200."+  "0"})
                    listmodel2.append({"text": "200."+  "0"})
                }
            }

            onDataChanged:
            {
                // harmonicnames'teki bir öğe değiştiğinde  harmonicnames1'i güncelleyin
                for (var i = 0; i < 51; i++) {
                    listmodel2.set(i, {"text": harmonics2RealVaules.get(i).text});
                }
            }
        }


        ListModel {
            id: harmonics21RealVaules

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    // İlk ListModel'deki her öğeyi ikinci ListModel'e ekleyin.
                    harmonics21RealVaules.append({"text": "211."+  "1"})
                    listmodel21.append({"text": "211."+  "1"})
                }
            }

            onDataChanged:
            {
                // harmonicnames'teki bir öğe değiştiğinde  harmonicnames1'i güncelleyin
                for (var i = 0; i < 51; i++) {
                    listmodel21.set(i, {"text": harmonics21RealVaules.get(i).text});
                }
            }
        }


        ListModel {
            id: harmonics3RealVaules

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    // İlk ListModel'deki her öğeyi ikinci ListModel'e ekleyin.
                    harmonics3RealVaules.append({"text": "300."+  "0"})
                    listmodel3.append({"text": "300."+  "0"})
                }
            }

            onDataChanged:
            {
                // harmonicnames'teki bir öğe değiştiğinde  harmonicnames1'i güncelleyin
                for (var i = 0; i < 51; i++) {
                    listmodel3.set(i, {"text": harmonics3RealVaules.get(i).text});
                }
            }
        }


        ListModel {
            id: harmonics31RealVaules

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    // İlk ListModel'deki her öğeyi ikinci ListModel'e ekleyin.
                    harmonics31RealVaules.append({"text": "311."+  "1"})
                    listmodel31.append({"text": "311."+  "1"})
                }
            }

            onDataChanged:
            {
                // harmonicnames'teki bir öğe değiştiğinde  harmonicnames1'i güncelleyin
                for (var i = 0; i < 51; i++) {
                    listmodel31.set(i, {"text": harmonics31RealVaules.get(i).text});
                }
            }
        }


        ListModel {
            id: harmonics4RealVaules

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    // İlk ListModel'deki her öğeyi ikinci ListModel'e ekleyin.
                    harmonics4RealVaules.append({"text": "400."+  "0"})
                    listmodel4.append({"text": "400."+  "0"})
                }
            }

            onDataChanged:
            {
                // harmonicnames'teki bir öğe değiştiğinde  harmonicnames1'i güncelleyin
                for (var i = 0; i < 51; i++) {
                    listmodel4.set(i, {"text": harmonics4RealVaules.get(i).text});
                }
            }
        }


        ListModel {
            id: harmonics41RealVaules

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    // İlk ListModel'deki her öğeyi ikinci ListModel'e ekleyin.
                    harmonics41RealVaules.append({"text": "411."+  "1"})
                    listmodel41.append({"text": "411."+  "1"})
                }
            }

            onDataChanged:
            {
                // harmonicnames'teki bir öğe değiştiğinde  harmonicnames1'i güncelleyin
                for (var i = 0; i < 51; i++) {
                    listmodel41.set(i, {"text": harmonics41RealVaules.get(i).text});
                }
            }
        }




        ListModel {
            id: listmodel1
        }

        ListModel {
            id: listmodel11
        }
        ListModel {
            id: listmodel2
        }
        ListModel {
            id: listmodel21
        }

        Rectangle {
            id: rectangler
            x: 1
//            y: 58
            y: text11.text*50+6
            width: 365
            height: 30
            visible: true
            color: "#dedede"

        }

        ListModel {
            id: listmodel3
        }

        ListModel {
            id: listmodel31
        }




        ListModel {
            id: listmodel4
        }



        ListModel {
            id: listmodel41
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
            id: four
            x: 299
            y: 12
            width: 80
            height: 5000
            visible: false
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
                NumberAnimation on font.pixelSize {
                    running: for6Pulse.clickedSignal()
                    from: 22
                    to: 18
                }

            }
            flickDeceleration: 3000
            contentHeight: 5500
            z: 1
            model: listmodel4
        }

        ListView {
            id: four1
            x: 299
            y: 35
            width: 80
            height: 5000
            visible: false
            maximumFlickVelocity: 5000
            cacheBuffer: 323
            clip: false
            spacing: 29
            interactive: false
            contentY: 0
            delegate: Text {
                color: "#9DA0A9"
                text: model.text
                font.pixelSize: 18
                NumberAnimation on font.pixelSize {
                    running: for6Pulse.clickedSignal()
                    from: 22
                    to: 18
                }

            }
            flickDeceleration: 3000
            contentHeight: 5500
            z: 1
            model: listmodel41
        }


        ListView {
            id: three
            x: 228
            y: 12
            width: 80
            height: 5000
            visible: true
            model: listmodel3
            delegate: Text {
                color: "#284863"
                text: model.text
                font.pixelSize: 18
                NumberAnimation on font.pixelSize {
                    running: for6Pulse.clickedSignal()
                    from: 22
                    to: 18
                }
            }
            interactive: false
            flickDeceleration: 3000
            clip: false
            spacing: 29
            maximumFlickVelocity: 5000
            cacheBuffer: 323
            z: 1
            contentHeight: 5500
            contentY: 0
        }


        ListView {
            id: three1
            x: 228
            y: 35
            width: 80
            height: 5000
            visible: true
            model: listmodel31
            delegate: Text {
                color: "#9da0a9"
                text: model.text
                font.pixelSize: 18
                NumberAnimation on font.pixelSize {
                    running: for6Pulse.clickedSignal()
                    from: 22
                    to: 18
                }
            }
            interactive: false
            flickDeceleration: 3000
            clip: false
            spacing: 29
            maximumFlickVelocity: 5000
            cacheBuffer: 323
            z: 1
            contentHeight: 5500
            contentY: 0
        }


        ListView {
            id: two
            x: 157
            y: 12
            width: 80
            height: 5000
            visible: true
            model: listmodel2
            delegate: Text {
                color: "#284863"
                text: model.text
                font.pixelSize: 18
                NumberAnimation on font.pixelSize {
                    running: for6Pulse.clickedSignal()
                    from: 22
                    to: 18
                }
            }
            interactive: false
            flickDeceleration: 3000
            clip: false
            spacing: 29
            maximumFlickVelocity: 5000
            cacheBuffer: 323
            z: 1
            contentHeight: 5500
            contentY: 0
        }


        ListView {
            id: two1
            x: 157
            y: 35
            width: 80
            height: 5000
            visible: true
            model: listmodel21
            delegate: Text {
                color: "#9da0a9"
                text: model.text
                font.pixelSize: 18
                NumberAnimation on font.pixelSize {
                    running: for6Pulse.clickedSignal()
                    from: 22
                    to: 18
                }
            }
            interactive: false
            flickDeceleration: 3000
            clip: false
            spacing: 29
            maximumFlickVelocity: 5000
            cacheBuffer: 323
            z: 1
            contentHeight: 5500
            contentY: 0
        }

        ListView {
            id: one
            x: 89
            y: 12
            width: 80
            height: 5000
            visible: true
            model: listmodel1
            delegate: Text {
                color: "#284863"
                text: model.text
                font.pixelSize: 18
                NumberAnimation on font.pixelSize {
                    running: for6Pulse.clickedSignal()
                    from: 22
                    to: 18
                }
            }
            interactive: false
            flickDeceleration: 3000
            clip: false
            spacing: 29
            maximumFlickVelocity: 5000
            cacheBuffer: 323
            z: 1
            contentHeight: 5500
            contentY: 0
        }

        ListView {
            id: one1
            x: 89
            y: 35
            width: 80
            height: 5000
            visible: true
            model: listmodel11
            delegate: Text {
                color: "#9da0a9"
                text: model.text
                font.pixelSize: 18
                NumberAnimation on font.pixelSize {
                    running: for6Pulse.clickedSignal()
                    from: 22
                    to: 18
                }
            }
            interactive: false
            flickDeceleration: 3000
            clip: false
            spacing: 29
            maximumFlickVelocity: 5000
            cacheBuffer: 323
            z: 1
            contentHeight: 5500
            contentY: 0
        }




    }

    Image {
        id: group10058
        x: 1035
        y: -279
        width: 1155/2
        source: "images/Group 10058.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: group10057
        x: 1035
        y: -462
        width: 1155/2
        source: "images/Group 10057.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: group10056
        x: 1035
        y: -663
        width: 1155/2
        source: "images/Group 10056.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: group10055
        x: 1035
        y: -859
        width: 1155/2
        source: "images/Group 10055.svg"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: posSequenceValue1
        x: -575
        y: -43
        color: "#ff5555"
        text: "311"
        font.pixelSize: 20
    }

    Image {
        id: group10054
        x: 1034
        y: -1072
        width: 1155/2
        source: "images/Group 10054.svg"
        fillMode: Image.PreserveAspectFit
    }

}


/*##^##
Designer {
    D{i:0}D{i:311;invisible:true}
}
##^##*/
