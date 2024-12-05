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
        customcheckbox0.checkBoxOFF.source="images/CheckBoxONBG.svg"
        customcheckbox0.checkBoxOn.visible=true
        customcheckbox2.checkBoxOFF.source="images/CheckBoxONBG.svg"
        customcheckbox2.checkBoxOn.visible=true
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
                        max: 10
                    }
                    BarSet {
                        id:myFirstBarSet
                        color: "#FC3734"
                        values: [22, 3, 3, 4, 5, 6, 1]
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
                                if(updatedValues[1] <11){
                                updatedValues[1] += 1;  // İlk değeri artır
                                }

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
                color: "#ffffff"

                Rectangle {
                    id:rectanglerPF
                    x: 85
                    y: 69
                    width: 560
                    height: 220
                    opacity: 1
                    color: "#00ffffff"
                    radius: 0
                    border.color: "#ababab"
                    border.width: 0
                    z: 1
                    layer.enabled: true

                    Image {
                        id:animGraphsCurrentA
                        x: -20
                        y: 2
                        width: 610
                        height: 220
                        source: "images/Group 10058.svg"
                        sourceSize.height: 150
                        antialiasing: true
                        sourceSize.width: 600
                        fillMode: Image.Pad
                    }
                    clip: false
                    layer.effect: OpacityMask {
                        layer.enabled: true
                        layer.effect: DropShadowEffect {
                            id: dropShadow
                            color: "#40000000"
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
                    x: 98
                    y: 47
                    width: 560
                    height: 220
                    opacity: 0.2
                    color: "#00ffffff"
                    radius: 0
                    border.color: "#00ababab"
                    border.width: 1
                    layer.effect: OpacityMask {
                        layer.effect: DropShadowEffect {

                            color: "#40000000"
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
                        y: -8
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
                    x: 57
                    y: 27
                    width: 620
                    source: "images/Group 9999.svg"
                    fillMode: Image.PreserveAspectFit
                }

                Rectangle {
                    id: rectanglerPF4
                    x: 110
                    y: 39
                    width: 560
                    height: 220
                    opacity: 0.08
                    color: "#00ffffff"
                    radius: 0
                    border.color: "#ababab"
                    border.width: 0
                    layer.effect: OpacityMask {
                        layer.effect: DropShadowEffect {
                            color: "#40000000"
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
                        x: -20
                        y: 2
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

                Rectangle {
                    id:cacheRectangle
                    x: 752
                    y: 137
                    width: 135; height: 40;
                    color: "white"


                    ListModel {
                        id: nameModel
                        ListElement { name: "H0" }
                        ListElement { name: "H1" }
                        ListElement { name: "H2" }
                        ListElement { name: "H3" }
                        ListElement { name: "H4" }
                        ListElement { name: "H5" }
                        ListElement { name: "H6" }
                        ListElement { name: "H7" }
                        ListElement { name: "H8" }
                        ListElement { name: "H9" }
                        ListElement { name: "H10" }
                        ListElement { name: "H11" }
                        ListElement { name: "H12" }
                        ListElement { name: "H13" }
                        ListElement { name: "H14" }
                        ListElement { name: "H15" }
                        ListElement { name: "H16" }
                        ListElement { name: "H17" }
                        ListElement { name: "H18" }
                        ListElement { name: "H19" }
                        ListElement { name: "H20" }
                        ListElement { name: "H21" }
                        ListElement { name: "H22" }
                        ListElement { name: "H23" }
                        ListElement { name: "H24" }
                        ListElement { name: "H25" }
                        ListElement { name: "H26" }
                        ListElement { name: "H27" }
                        ListElement { name: "H28" }
                        ListElement { name: "H29" }
                        ListElement { name: "H30" }
                        ListElement { name: "H31" }
                        ListElement { name: "H32" }
                        ListElement { name: "H33" }
                        ListElement { name: "H34" }
                        ListElement { name: "H35" }
                        ListElement { name: "H36" }
                        ListElement { name: "H37" }
                        ListElement { name: "H38" }
                        ListElement { name: "H39" }
                        ListElement { name: "H40" }
                        ListElement { name: "H41" }
                        ListElement { name: "H42" }
                        ListElement { name: "H43" }
                        ListElement { name: "H44" }
                        ListElement { name: "H45" }
                        ListElement { name: "H46" }
                        ListElement { name: "H47" }
                        ListElement { name: "H48" }
                        ListElement { name: "H49" }
                        ListElement { name: "H50" }

                    }

                    Component {
                        id: nameDelegate
                        Text {
                            color: "#284863"
                            text: model.name
                            font.pixelSize: 34
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: "Akshar"
                            //                        Component.onDestruction:  console.log("Die", model.index,model.name)

                        }
                    }

                    ListView{
                        id: listtt
                        anchors.fill:parent
                        model: nameModel
                        delegate: nameDelegate
                        clip: true
                        cacheBuffer: 1

                        //                Component.onCompleted: console.log(cacheBuffer)
                        //                cacheBuffer:189
                        highlightRangeMode: ListView.StrictlyEnforceRange
                        Component.onCompleted: {
                            //                          console.log(cacheBuffer); // Kaydırma tamamlandığında görünürdeki eleman sayısı
                            var currentIndex = listtt.currentIndex; // Şu anki elemanın indeksi
                            console.log("Current Index:", currentIndex);
                            var firstVisibleItemIndex = currentIndex - cacheBuffer;
                            if(firstVisibleItemIndex+1 === 0){

                                list1.currentIndex = firstVisibleItemIndex+2
                                list2.currentIndex = firstVisibleItemIndex+3
                                list3.currentIndex = 49
                                list4.currentIndex = 50

                            }

                        }
                        onContentYChanged: {
                            var firstVisibleItemIndex = currentIndex - cacheBuffer;
                            console.log("First Visible Item Index:", firstVisibleItemIndex+1);
                            var firstVisibleItemIndex1 = list1.currentIndex - list1.cacheBuffer;
                            var firstVisibleItemIndex2 = list2.currentIndex - list2.cacheBuffer;
                            if(firstVisibleItemIndex+1 === 50){

                                list1.currentIndex = 0
                                list2.currentIndex = 1
                                list3.currentIndex = firstVisibleItemIndex-1
                                list4.currentIndex = firstVisibleItemIndex
                            }
                            else if(firstVisibleItemIndex+1 === 49){


                                list1.currentIndex = firstVisibleItemIndex+2
                                list2.currentIndex = 0

                                list3.currentIndex = firstVisibleItemIndex-1
                                list4.currentIndex = firstVisibleItemIndex
                                //                            ((list2.currentIndex)-(list2.cacheBuffer)) =  (firstVisibleItemIndex+2)
                            }
                            else{
                                list1.currentIndex = firstVisibleItemIndex+2
                                list2.currentIndex = firstVisibleItemIndex+3
                                list3.currentIndex = firstVisibleItemIndex-1
                                list4.currentIndex = firstVisibleItemIndex
                            }

                            if(firstVisibleItemIndex+1 === 0){
                                list3.currentIndex = 49
                                list4.currentIndex = 50
                            }
                            else if(firstVisibleItemIndex+1 === 1){
                                list3.currentIndex = 50
                                list4.currentIndex = 0
                        }
                        }



                    }


                }

                Rectangle {
                    id: cacheRectangle1
                    x: 753
                    y: 83
                    width: 100
                    height: 30
                    color: "#ffffff"
                    ListModel {
                        id: nameModel1
                        ListElement {
                            name: "H0"
                        }

                        ListElement {
                            name: "H1"
                        }

                        ListElement {
                            name: "H2"
                        }

                        ListElement {
                            name: "H3"
                        }

                        ListElement {
                            name: "H4"
                        }

                        ListElement {
                            name: "H5"
                        }

                        ListElement {
                            name: "H6"
                        }

                        ListElement {
                            name: "H7"
                        }

                        ListElement {
                            name: "H8"
                        }

                        ListElement {
                            name: "H9"
                        }

                        ListElement {
                            name: "H10"
                        }

                        ListElement {
                            name: "H11"
                        }

                        ListElement {
                            name: "H12"
                        }

                        ListElement {
                            name: "H13"
                        }

                        ListElement {
                            name: "H14"
                        }

                        ListElement {
                            name: "H15"
                        }

                        ListElement {
                            name: "H16"
                        }

                        ListElement {
                            name: "H17"
                        }

                        ListElement {
                            name: "H18"
                        }

                        ListElement {
                            name: "H19"
                        }

                        ListElement {
                            name: "H20"
                        }

                        ListElement {
                            name: "H21"
                        }

                        ListElement {
                            name: "H22"
                        }

                        ListElement {
                            name: "H23"
                        }

                        ListElement {
                            name: "H24"
                        }

                        ListElement {
                            name: "H25"
                        }

                        ListElement {
                            name: "H26"
                        }

                        ListElement {
                            name: "H27"
                        }

                        ListElement {
                            name: "H28"
                        }

                        ListElement {
                            name: "H29"
                        }

                        ListElement {
                            name: "H30"
                        }

                        ListElement {
                            name: "H31"
                        }

                        ListElement {
                            name: "H32"
                        }

                        ListElement {
                            name: "H33"
                        }

                        ListElement {
                            name: "H34"
                        }

                        ListElement {
                            name: "H35"
                        }

                        ListElement {
                            name: "H36"
                        }

                        ListElement {
                            name: "H37"
                        }

                        ListElement {
                            name: "H38"
                        }

                        ListElement {
                            name: "H39"
                        }

                        ListElement {
                            name: "H40"
                        }

                        ListElement {
                            name: "H41"
                        }

                        ListElement {
                            name: "H42"
                        }

                        ListElement {
                            name: "H43"
                        }

                        ListElement {
                            name: "H44"
                        }

                        ListElement {
                            name: "H45"
                        }

                        ListElement {
                            name: "H46"
                        }

                        ListElement {
                            name: "H47"
                        }

                        ListElement {
                            name: "H48"
                        }

                        ListElement {
                            name: "H49"
                        }

                        ListElement {
                            name: "H50"
                        }
                    }

                    Component {
                        id: nameDelegate1
                        Text {
                            opacity: 0.5
                            color: "#284863"
                            text: model.name
                            font.pixelSize: 24
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: "Akshar"
                        }
                    }

                    ListView {
                        id:list1
                        anchors.fill: parent
                        interactive: false
//                        highlightRangeMode: ListView.StrictlyEnforceRange
                        model: nameModel1
                        delegate: nameDelegate1
//                        cacheBuffer: 1
                        clip: true
                    }
                }

                Rectangle {
                    id: cacheRectangle2
                    x: 753
                    y: 42
                    width: 100
                    height: 20
                    color: "#ffffff"
                    ListModel {
                        id:nameModel2
                        ListElement {
                            name: "H0"
                        }

                        ListElement {
                            name: "H1"
                        }

                        ListElement {
                            name: "H2"
                        }

                        ListElement {
                            name: "H3"
                        }

                        ListElement {
                            name: "H4"
                        }

                        ListElement {
                            name: "H5"
                        }

                        ListElement {
                            name: "H6"
                        }

                        ListElement {
                            name: "H7"
                        }

                        ListElement {
                            name: "H8"
                        }

                        ListElement {
                            name: "H9"
                        }

                        ListElement {
                            name: "H10"
                        }

                        ListElement {
                            name: "H11"
                        }

                        ListElement {
                            name: "H12"
                        }

                        ListElement {
                            name: "H13"
                        }

                        ListElement {
                            name: "H14"
                        }

                        ListElement {
                            name: "H15"
                        }

                        ListElement {
                            name: "H16"
                        }

                        ListElement {
                            name: "H17"
                        }

                        ListElement {
                            name: "H18"
                        }

                        ListElement {
                            name: "H19"
                        }

                        ListElement {
                            name: "H20"
                        }

                        ListElement {
                            name: "H21"
                        }

                        ListElement {
                            name: "H22"
                        }

                        ListElement {
                            name: "H23"
                        }

                        ListElement {
                            name: "H24"
                        }

                        ListElement {
                            name: "H25"
                        }

                        ListElement {
                            name: "H26"
                        }

                        ListElement {
                            name: "H27"
                        }

                        ListElement {
                            name: "H28"
                        }

                        ListElement {
                            name: "H29"
                        }

                        ListElement {
                            name: "H30"
                        }

                        ListElement {
                            name: "H31"
                        }

                        ListElement {
                            name: "H32"
                        }

                        ListElement {
                            name: "H33"
                        }

                        ListElement {
                            name: "H34"
                        }

                        ListElement {
                            name: "H35"
                        }

                        ListElement {
                            name: "H36"
                        }

                        ListElement {
                            name: "H37"
                        }

                        ListElement {
                            name: "H38"
                        }

                        ListElement {
                            name: "H39"
                        }

                        ListElement {
                            name: "H40"
                        }

                        ListElement {
                            name: "H41"
                        }

                        ListElement {
                            name: "H42"
                        }

                        ListElement {
                            name: "H43"
                        }

                        ListElement {
                            name: "H44"
                        }

                        ListElement {
                            name: "H45"
                        }

                        ListElement {
                            name: "H46"
                        }

                        ListElement {
                            name: "H47"
                        }

                        ListElement {
                            name: "H48"
                        }

                        ListElement {
                            name: "H49"
                        }

                        ListElement {
                            name: "H50"
                        }
                    }

                    Component {
                        id:nameDelegate2
                        Text {
                            color: "#284863"
                            text: model.name
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: "Akshar"
                        }
                    }

                    ListView {
                        id:list2
                        opacity: 0.2
                        anchors.fill: parent
                        highlightRangeMode: ListView.StrictlyEnforceRange
                        model: nameModel2
                        delegate: nameDelegate2
                        cacheBuffer: 1
                        clip: true
                        interactive: false
                    }
                }


                Rectangle {
                    id: cacheRectangle3
                    x: 753
                    y: 246
                    width: 100
                    height: 20
                    color: "#ffffff"
                    ListModel {
                        id:nameModel3
                        ListElement {
                            name: "H0"
                        }

                        ListElement {
                            name: "H1"
                        }

                        ListElement {
                            name: "H2"
                        }

                        ListElement {
                            name: "H3"
                        }

                        ListElement {
                            name: "H4"
                        }

                        ListElement {
                            name: "H5"
                        }

                        ListElement {
                            name: "H6"
                        }

                        ListElement {
                            name: "H7"
                        }

                        ListElement {
                            name: "H8"
                        }

                        ListElement {
                            name: "H9"
                        }

                        ListElement {
                            name: "H10"
                        }

                        ListElement {
                            name: "H11"
                        }

                        ListElement {
                            name: "H12"
                        }

                        ListElement {
                            name: "H13"
                        }

                        ListElement {
                            name: "H14"
                        }

                        ListElement {
                            name: "H15"
                        }

                        ListElement {
                            name: "H16"
                        }

                        ListElement {
                            name: "H17"
                        }

                        ListElement {
                            name: "H18"
                        }

                        ListElement {
                            name: "H19"
                        }

                        ListElement {
                            name: "H20"
                        }

                        ListElement {
                            name: "H21"
                        }

                        ListElement {
                            name: "H22"
                        }

                        ListElement {
                            name: "H23"
                        }

                        ListElement {
                            name: "H24"
                        }

                        ListElement {
                            name: "H25"
                        }

                        ListElement {
                            name: "H26"
                        }

                        ListElement {
                            name: "H27"
                        }

                        ListElement {
                            name: "H28"
                        }

                        ListElement {
                            name: "H29"
                        }

                        ListElement {
                            name: "H30"
                        }

                        ListElement {
                            name: "H31"
                        }

                        ListElement {
                            name: "H32"
                        }

                        ListElement {
                            name: "H33"
                        }

                        ListElement {
                            name: "H34"
                        }

                        ListElement {
                            name: "H35"
                        }

                        ListElement {
                            name: "H36"
                        }

                        ListElement {
                            name: "H37"
                        }

                        ListElement {
                            name: "H38"
                        }

                        ListElement {
                            name: "H39"
                        }

                        ListElement {
                            name: "H40"
                        }

                        ListElement {
                            name: "H41"
                        }

                        ListElement {
                            name: "H42"
                        }

                        ListElement {
                            name: "H43"
                        }

                        ListElement {
                            name: "H44"
                        }

                        ListElement {
                            name: "H45"
                        }

                        ListElement {
                            name: "H46"
                        }

                        ListElement {
                            name: "H47"
                        }

                        ListElement {
                            name: "H48"
                        }

                        ListElement {
                            name: "H49"
                        }

                        ListElement {
                            name: "H50"
                        }
                    }

                    Component {
                        id:nameDelegate3
                        Text {
                            color: "#284863"
                            text: model.name
                            font.pixelSize: 18
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: "Akshar"
                        }
                    }

                    ListView {
                        id:list3
                        opacity: 0.2
                        anchors.fill: parent
                        highlightRangeMode: ListView.StrictlyEnforceRange
                        model: nameModel3
                        delegate: nameDelegate3
                        cacheBuffer: 1
                        clip: true
                        interactive: false
                        currentIndex : 49;
                    }
                }



                Rectangle {
                    id: cacheRectangle4
                    x: 753
                    y: 198
                    width: 100
                    height: 30
                    color: "#ffffff"
                    ListModel {
                        id: nameModel4
                        ListElement {
                            name: "H0"
                        }

                        ListElement {
                            name: "H1"
                        }

                        ListElement {
                            name: "H2"
                        }

                        ListElement {
                            name: "H3"
                        }

                        ListElement {
                            name: "H4"
                        }

                        ListElement {
                            name: "H5"
                        }

                        ListElement {
                            name: "H6"
                        }

                        ListElement {
                            name: "H7"
                        }

                        ListElement {
                            name: "H8"
                        }

                        ListElement {
                            name: "H9"
                        }

                        ListElement {
                            name: "H10"
                        }

                        ListElement {
                            name: "H11"
                        }

                        ListElement {
                            name: "H12"
                        }

                        ListElement {
                            name: "H13"
                        }

                        ListElement {
                            name: "H14"
                        }

                        ListElement {
                            name: "H15"
                        }

                        ListElement {
                            name: "H16"
                        }

                        ListElement {
                            name: "H17"
                        }

                        ListElement {
                            name: "H18"
                        }

                        ListElement {
                            name: "H19"
                        }

                        ListElement {
                            name: "H20"
                        }

                        ListElement {
                            name: "H21"
                        }

                        ListElement {
                            name: "H22"
                        }

                        ListElement {
                            name: "H23"
                        }

                        ListElement {
                            name: "H24"
                        }

                        ListElement {
                            name: "H25"
                        }

                        ListElement {
                            name: "H26"
                        }

                        ListElement {
                            name: "H27"
                        }

                        ListElement {
                            name: "H28"
                        }

                        ListElement {
                            name: "H29"
                        }

                        ListElement {
                            name: "H30"
                        }

                        ListElement {
                            name: "H31"
                        }

                        ListElement {
                            name: "H32"
                        }

                        ListElement {
                            name: "H33"
                        }

                        ListElement {
                            name: "H34"
                        }

                        ListElement {
                            name: "H35"
                        }

                        ListElement {
                            name: "H36"
                        }

                        ListElement {
                            name: "H37"
                        }

                        ListElement {
                            name: "H38"
                        }

                        ListElement {
                            name: "H39"
                        }

                        ListElement {
                            name: "H40"
                        }

                        ListElement {
                            name: "H41"
                        }

                        ListElement {
                            name: "H42"
                        }

                        ListElement {
                            name: "H43"
                        }

                        ListElement {
                            name: "H44"
                        }

                        ListElement {
                            name: "H45"
                        }

                        ListElement {
                            name: "H46"
                        }

                        ListElement {
                            name: "H47"
                        }

                        ListElement {
                            name: "H48"
                        }

                        ListElement {
                            name: "H49"
                        }

                        ListElement {
                            name: "H50"
                        }
                    }

                    Component {
                        id: nameDelegate4
                        Text {
                            opacity: 0.5
                            color: "#284863"
                            text: model.name
                            font.pixelSize: 24
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.family: "Akshar"
                        }
                    }

                    ListView {
                        id:list4
                        anchors.fill: parent
                        interactive: false
                        model: nameModel4
                        delegate: nameDelegate4
                        clip: true
                        currentIndex : 50;

                    }
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
                x:5
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
                            rectangler.y = 0; // Tıklanınca y konumunu 0 olarak ayarla
                            rectangler.visible = false;
                        } else {
                            resetExploded();
                            slice.exploded = true;
                            // Tıklanınca y konumunu belirli bir değere ayarla
                            if (index === 0) {
                                rectangler.visible = true;
                                rectangler.y = 8; // İlk dilim için
                            } else if (index === 1) {
                                rectangler.visible = true;
                                rectangler.y = 58; // İkinci dilim için
                            }
                            else if (index === 2) {
                                rectangler.visible = true;
                                rectangler.y = 108; // üçüncü dilim için
                            }
                            else if (index === 3) {
                                rectangler.visible = true;
                                rectangler.y = 158; // dördüncü dilim için
                            }
                            else if (index === 4) {
                                rectangler.visible = true;
                                rectangler.y = 208; // beşinci dilim için
                            }
                            else if (index === 5) {
                                rectangler.visible = true;
                                rectangler.y = 258; // altıncı dilim için
                            }
                            // Diğer dilimler için de benzer şekilde ayarlayabilirsiniz
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
                x: 270
                y: 265
                width: 210
                height: 210
                source: "images/HarmonicVector.svg"
                rotation: 360
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: harmonicTHD
                x: 327
                y: 342
                width: 95
                source: "images/HarmonicTHD.svg"
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: harmonicEllipse217
                x: 285
                y: 280
                width: 180
                source: "images/HarmonicEllipse 217.svg"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                id: cursorHeadersBGForVoltageText4
                x: 304
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
                x: 304
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
                x: 223
                y: 218
                width: 304
                height:  304
                source: "images/HarmonicVector-1.svg"
                rotation: -180
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: forHarmonic
                x: 740
                y: 120
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
                    x: 9
                    y: 41
                    width: 72
                    height: 50
                    color: "#ffffff"
                    text: qsTr("H0")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    x: 21
                    y: 113
                    width: 47
                    height: 47
                    color: "#ffffff"
                    text: qsTr("H1")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    x: 21
                    y: 183
                    width: 47
                    height: 47
                    color: "#ffffff"
                    text: qsTr("H2")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    x: 21
                    y: 251
                    width: 47
                    height: 47
                    color: "#ffffff"
                    text: qsTr("H3")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    x: 21
                    y: 323
                    width: 47
                    height: 47
                    color: "#ffffff"
                    text: qsTr("H4")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Text {
                    x: 21
                    y: 394
                    width: 47
                    height: 47
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
                fillMode: Image.PreserveAspectFit
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

                myFirstBarSet.color="#FC3734"

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

                myFirstBarSet.color="#FCAE18"

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

                myFirstBarSet.color="#217EFD"

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
                myFirstBarSet.color="#4EC040"

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
                x: 18
                y: 15
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
                    harmonicnameslistview.visible=true
                    one.visible=true
                    two.visible=true
                    three.visible=true
                    four.visible=true

                }
                onNonclickedSignal: {
                    harmonic.color = "#284863";

                    harmonicnameslistview.visible=false
                    one.visible=false
                    two.visible=false
                    three.visible=false
                    four.visible=false

                }
            }

            CustomCheckBox {
                id: customcheckbox2
                x: 18
                y: 56
                width: 180
                height: 35
                clip: true
                Text {
                    id: interharmonic
                    x: 30
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

                }
                onNonclickedSignal: {
                    interharmonic.color="#9DA0A9"
                    harmonicnameslistview1.visible=false
                    one1.visible=false
                    two1.visible=false
                    three1.visible=false
                    four1.visible=false

                }
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

                    flickable.contentHeight=flickable.contentHeight+50
                }

            }
            onNonclickedSignal: {
                for6PulseText.color="#284863"
                phase1.color="#98A9BA"

                for (var i = 10; i <= 30; i += 4) {
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
        flickDeceleration: 1000
        maximumFlickVelocity: 5000
        contentHeight: 2600





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
            id: harmonicnames

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    harmonicnames.append({"text": "H" + (i)})
                }
            }
        }

        ListModel {
            id: harmonicnames1

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    harmonicnames1.append({"text": "H" + (i+0.5)})
                }
            }
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

            delegate: Text {
                color: "#284863"
                text: model.text
                font.pixelSize: 18

            }
        }



        ListModel {
            id: listmodel1

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    listmodel1.append({"text": i+200.11 })
                }
            }
        }
        ListModel {
            id: listmodel11

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    listmodel11.append({"text": "199.97" })
                }
            }
        }
        ListModel {
            id: listmodel2

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    listmodel2.append({"text": "2" })
                }
            }
        }
        ListModel {
            id: listmodel21

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    listmodel21.append({"text": "211.22" })
                }
            }
        }

        Rectangle {
            id: rectangler
            x: 1
            y: 58
            width: 365
            height: 30
            visible: false
            color: "#dedede"
        }

        ListModel {
            id: listmodel3

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    listmodel3.append({"text": "3" })
                }
            }
        }

        ListModel {
            id: listmodel31

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    listmodel31.append({"text": "312.99" })
                }
            }
        }




        ListModel {
            id: listmodel4

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    listmodel4.append({"text": "4" })
                }
            }
        }



        ListModel {
            id: listmodel41

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    listmodel41.append({"text": "411.11" })
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
            id: four
            x: 299
            y: 12
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

        ListView {
            id: four1
            x: 299
            y: 35
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
                color: "#9DA0A9"
                text: model.text
                font.pixelSize: 18

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






