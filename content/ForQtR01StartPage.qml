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
    property alias mySwipeView: mySwipeView
    property alias uil_usb: uil_usb
    property alias uil_ethernet: uil_ethernet
    property alias uil_Battery: uil_Battery
    property alias uil_sdCard: uil_sdCard
    property alias uil_external: uil_external
    property alias uil_bluetooth: uil_bluetooth
    property alias uil_intMemory: uil_intMemory
    property alias uil_wifi: uil_wifi
    property alias rootForQtR01StartPage: rootForQtR01StartPage
    property alias ellipse1: ellipse1
    property alias uil_volume: uil_volume
    layer.enabled: true
    property alias text9: text9
    property alias text7: text7
    property int counter:0
    property int counter2: 0
    property int counter3: 0

    property int animationsForCurrentClickedSmallCircle: 150
    property int animationsForcurrentClickedCircle: 1000
    property int animationsForcurrentClickedCircleClosed: 450
    property int animationsForcurrentClickedCircleOpenedClosed: 300

    property real textForVolumeValue: 100.00
//    property real textForVolumeValue1: 100.00
    property int spinBox2ComingFromStart: 500000

    property bool switch1and2CheckedForComm: false

    property string colorCodeRed: String("#FF5555")
    property string colorCodeOrange: String("#FCAE18")
    property string colorCodegGreen: String("#4EC040")
    property string colorCodeGray: String("#ADB1B4")
    property string colorForRec1: String("#00f7f8fa")
    property string colorForRec2: String("#bff7f8fa")
    property string colorForRec3: String("#bff7f8fa")
    property string colorForRec4: String("#bff7f8fa")
    property string colorForRecSum: String("#bff7f8fa")
    property int forRectifierNumber: 1
    property alias stackViewstatus: stackViewStatusForQtR01
    property alias pagenametext: pageNameText.text
    property alias eventRecAnimation:eventRecAnim
    property bool forRecord: true
    property alias loggerRecAnimation:loggerRecAnim
    property bool forLogRecord: true
    property alias text14: text14
    property alias text15: text15


    Rectangle {
        id: rootForQtR01StartPage
        width: 1280
        height: 800
    SwipeView{
        id:mySwipeView
//        currentIndex: 1
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: -72
        anchors.leftMargin: 0
        anchors.topMargin: 72
        clip: true

        Power{}
        PowerAndPowerQuality{}

       onCurrentIndexChanged: {
                 if (mySwipeView.currentIndex === 1) {
                     pageNameText.text = "POWER QUALITY"
                     powerQualityTextClicked.start()
                     powerQualityTextClickedChangeBarWidth.start()
                 } else if (mySwipeView.currentIndex === 0) {
                     pageNameText.text = "POWER"
                     powerTextClickedChangeBarWidth.start()
                     powerTextClickedChangeBarX.start()
                 }
       }
    }

    Component.onCompleted: {
//        stackViewStatusForQtR01.pop()
//        stackViewStatusForQtR01.push("PowerAndPowerQuality.qml")
//        stackViewStatusForQtR01.pop()
        mySwipeView.currentIndex=1
    }



    //    SerialCommunicationWithUART{
    //        id: uartID
    //        Component.onCompleted: {
    //            //uartID.selectData(0)
    //            uartID.selectData(83)
    //            uartID.writeData("write")//when the page clicked
    //        }
    //    }


    //    Item {
    //        Timer {
    //            id:timerID
    //            interval: 500; running: true ; repeat: true
    //            onTriggered:{
    //              counter++;
    //                uartID.setUart_Data("read")
    //                if(counter===2){

    //                text14.text = Qt.formatDateTime(new Date(), "dd.MM.yyyy")
    //                text15.text = Qt.formatDateTime( new Date(Date.now() + 3 * 60 * 60 * 1000), "hh:mm:ss")
    //                    if (forLogRecord === false) {
    //                                counter2++;
    //                                var hours = Math.floor(counter2 / 3600);
    //                                var minutes = Math.floor((counter2 % 3600) / 60);
    //                                var seconds = counter2 % 60;

    //                                text7.text = Qt.formatDateTime(new Date(0, 0, 0, hours, minutes, seconds), "hh:mm:ss");

    //                                if (counter2 === 86399) {  // Bir günün saniye cinsinden tamamı
    //                                    counter2 = 0;
    //                                }
    //                            }
    //                    if (forRecord === false) {
    //                                counter3++;
    //                                var hours2 = Math.floor(counter3 / 3600);
    //                                var minutes2 = Math.floor((counter3 % 3600) / 60);
    //                                var seconds2 = counter3 % 60;

    //                                text9.text = Qt.formatDateTime(new Date(0, 0, 0, hours2, minutes2, seconds2), "hh:mm:ss");

    //                                if (counter3 === 86399) {  // Bir günün saniye cinsinden tamamı
    //                                    counter3 = 0;
    //                                }
    //                            }
    //  //                  if(forRecord===false)
    //  //                  {
    //  //                      text9.text = Qt.formatDateTime( new Date(Date.now() + 3 * 60 * 60 * 1000), "hh:mm:ss")
    //  //                  }
    //                    counter=0;
    //                }
    //             }
    //          }
    //    }

    Item {
        id: contentItem
        x: 0
        y: 0
        width: 1280
        height: 800

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

        AppSettings{
            id:appSettingsComponent
            visible: true
        }

        ForStackView{
            id:stackViewStatusForQtR01
            x: 0
            y:72
            MouseArea {
                id: mouseArea1
                x: 595
                y: -71
                width: 100
                height: 72
                onClicked: {
                    contentItem.grabToImage(function(result) {
                        var fileName = "screenshot_" + new Date().getTime() + ".png";
                        var fileName1 =  new Date().getTime().toString();
                        result.saveToFile(fileName);
                        viewer.visible=true
                        rectanglescreenshotbg.visible=true
                        viewer.source = "file:///" + fileName; /*Bu kısma bizim home ve root'u yazmamız lazım
"file:///home/root/"+ fileName; /*Bu kısma bizim home ve root'u yazmamız lazım
*/
                        var typeTextt = "Screenshot"

                        function saveListModel() {
                            var listData = appSettingsComponent.appSettings.value("listModelData", []);

                            for (var i = 0; i < 1; i++) {
                                var currentDate = new Date(); // Her öğe için ayrı ayrı tarih ve saat bilgisi oluştur
                                function formatDate(date) {
                                    var day = ("0" + date.getDate()).slice(-2);
                                    var month = ("0" + (date.getMonth() + 1)).slice(-2);
                                    var year = date.getFullYear();
                                    return day + "." + month + "." + year;
                                }

                                function formatTime(date) {
                                    var hours = ("0" + date.getHours()).slice(-2);
                                    var minutes = ("0" + date.getMinutes()).slice(-2);
                                    var seconds = ("0" + date.getSeconds()).slice(-2);
                                    return hours + ":" + minutes/* + ":" + seconds;*/
                                }
                                var dateTextt = formatDate(currentDate) + "-" + formatTime(currentDate);
                                var randomNumber = Math.floor(Math.random() * (3000 - 7500 + 1)) + 7500;
                                var randomNumberAsString = randomNumber.toString();
                            }
                            var newScreenshot = {"name": fileName1, "dateText": dateTextt, "typeText": typeTextt, "sizeText":randomNumberAsString };
                            listData.push(newScreenshot);
                            appSettingsComponent.appSettings.setValue("listModelData", listData);
                            listData = appSettingsComponent.appSettings.value("listModelData", []);
                            communicationSettingPage.myListModelMemoryInfo.clear();
                            for (i = 0; i < listData.length; i++) {
                                var itemData = listData[i];
                                communicationSettingPage.myListModelMemoryInfo.append({ "name": itemData.name, "dateText": itemData.dateText, "typeText": itemData.typeText, "sizeText": itemData.sizeText});
                            }
                        }
                        saveListModel();

                    });
                }
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
                        menuTimer.restart(0)
                        statusTextClickedChangeBarX.start()
                        statusTextClickedChangeBarWidth.start()
                        statusBottomBar.x=0
                        statusBottomBar.y=729
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=-200
                        settingsBottomBar.x=0
                        settingsBottomBar.y=-300
                        infoBottomBar.x=0
                        infoBottomBar.y=-400

                        menuTimer.restart()
                        powerQualityTextClicked.start()
                        powerQualityTextClickedChangeBarWidth.start()
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.clear()
                        mySwipeView.enabled = true
                        mySwipeView.currentIndex=1
                        pageNameText.text="POWER QUALITY"
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
                        menuTimer.restart()
                        measurementsTextClickedChangeBarX.start()
                        measurementsTextClickedChangeBarWidth.start()
                        statusBottomBar.x=0
                        statusBottomBar.y=-100
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=729
                        settingsBottomBar.x=0
                        settingsBottomBar.y=-300
                        infoBottomBar.x=0
                        infoBottomBar.y=-400

                        menuTimer.restart()
                        harmonicsTextClickedChangeBarX.start()
                        harmonicsTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="HARMONICS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("HarmonicsForQtR01.qml")
                        mySwipeView.enabled = false
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
                        menuTimer.restart()
                        settingsTextClickedChangeBarX.start()
                        settingsTextClickedChangeBarWidth.start()
                        statusBottomBar.x=0
                        statusBottomBar.y=-100
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=-200
                        settingsBottomBar.x=0
                        settingsBottomBar.y=729
                        infoBottomBar.x=0
                        infoBottomBar.y=-400

                        menuTimer.restart()
                        mainSettingsTextClickedChangeBarX.start()
                        mainSettingsTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="MAIN SETTINGS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("MainSettingsForQtR01.qml")
                        mySwipeView.enabled = false
                    }
                }
            }

            //            Text {
            //                id: helpText
            //                x: 500
            //                y: 0
            //                width: 280/2
            //                height: 140/2
            //                opacity: 1
            //                color: "#284863"
            //                text: qsTr("Info")
            //                font.pixelSize: 45/2
            //                horizontalAlignment: Text.AlignHCenter
            //                verticalAlignment: Text.AlignVCenter
            //                wrapMode: Text.Wrap
            //                font.family: "Abel"
            //                font.styleName: "Regular"
            //                MouseArea {
            //                    id: helpTextMouseArea
            //                    x: 0
            //                    y: -1
            //                    width: parent.width
            //                    height: 71
            //                    onClicked: {
            //                        menuTimer.restart()
            //                        helpTextClickedChangeBarX.start()
            //                        helpTextClickedChangeBarWidth.start()
            //                        statusBottomBar.x=0
            //                        statusBottomBar.y=-100
            //                        measurementsBottomBar.x=0
            //                        measurementsBottomBar.y=-200
            //                        settingsBottomBar.x=0
            //                        settingsBottomBar.y=-300
            //                        bottomMenuChosingStatus.x=1400
            //                        bottomMenuChosingMeasurements.x=1400
            //                        bottomMenuChosingSettings.x=1400
            //                        pageNameText.text="HELP"
            //                        stackViewStatusForQtR01.pop()
            //                        stackViewStatusForQtR01.push("HelpForQtR01.qml")
            //                    }
            //                }
            //            }


            Text {
                id: infoText
                x: 500
                y: 0
                width: 280/2
                height: 140/2
                opacity: 1
                color: "#284863"
                text: qsTr("Info")
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
                        menuTimer.restart()
                        infoTextClickedChangeBarX.start()
                        infoTextClickedChangeBarWidth.start()
                        statusBottomBar.x=0
                        statusBottomBar.y=-100
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=-200
                        settingsBottomBar.x=0
                        settingsBottomBar.y=-300
                        infoBottomBar.x=0
                        infoBottomBar.y=729

                        menuTimer.restart()
                        dataHubTextClickedChangeBarX.start()
                        dataHubTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="DATA HUB"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("DataHUBForQtR01.qml")
                        menuTimer.restart()
                        statusBottomBar.x=0
                        statusBottomBar.y=-100
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=-200
                        settingsBottomBar.x=0
                        settingsBottomBar.y=-300
                        mySwipeView.enabled = false
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
                id: infoTextClickedChangeBarX
                target: topMenuChosing
                property: "x"
                duration: 200
                to: infoText.x+40
            }
            PropertyAnimation {
                id: infoTextClickedChangeBarWidth
                target: topMenuChosing
                property: "width"
                duration: 200
                to: infoText.width
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

        Rectangle {
            id: notificationRect
            x: 977
            y: -height
            // Başlangıçta ekran dışında
            width: 299
            height: 306
            color: "#eff2f6"
            radius: 15
            border.color: "#d6e0e7"
            antialiasing: true

            PropertyAnimation {
                id: notificationActivated
                target: notificationRect
                property: "y"
                duration: 300
                from: -notificationRect.height
                to: 75
            }

            PropertyAnimation {
                id: notificationDeActivated
                target: notificationRect
                property: "y"
                duration: 300
                from: 75
                to: -notificationRect.height
            }

            //                states: [
            //                    State {
            //                        name: "hidden"
            //                        PropertyChanges { target: notificationRect; y: -notificationRect.height }
            //                    },
            //                    State {
            //                        name: "visible"
            //                        PropertyChanges { target: notificationRect; y: 75 }
            //                    }
            //                ]
            //                transitions: [
            //                    Transition {
            //                        from: "hidden"
            //                        to: "visible"
            //                        ParallelAnimation {
            //                            NumberAnimation { target: notificationRect; property: "y"; duration: 300 }
            //                        }
            //                    },
            //                    Transition {
            //                        from: "visible"
            //                        to: "hidden"
            //                        ParallelAnimation {
            //                            NumberAnimation { target: notificationRect; property: "y"; duration: 300 }
            //                        }
            //                    }
            //                ]
            Rectangle {
                id: ellipse1
                x: 24
                y: 17
                width: 47
                height: 47
                color: "#217efd"
                radius: 23.5
                border.color: "#d6e0e7"
                border.width: 0
                antialiasing: true
                MouseArea {
                    id: mouseArea11
                    x: -24
                    y: -11
                    width: 99
                    height: 95
                    onClicked: {
                        if(ellipse1.color=="#617284"){
//                            if (textForVolumeValue1 !== 100.00) {
//                                textForVolumeValue = textForVolumeValue1 // text değerini textForVolumeValue'ye aktar
//                                spinBox2ComingFromStart=textForVolumeValue1*50
//                            }
                            textForVolumeValue=100.00
                            spinBox2ComingFromStart=500000
                            ellipse1.color="#217efd"
                            uil_volume.source="images/uil_volume_On.svg"
                        }
                        else if(ellipse1.color=="#217efd"){

                            textForVolumeValue=0.00
                            spinBox2ComingFromStart=0
                            ellipse1.color="#617284"
                            uil_volume.source="images/uil_volume.svg"
                        }
                    }
                }
                Text {
                    y: 47
                    width: 95
                    height: 37
                    color: "#284863"
                    text: qsTr("Volume")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Regular"
                    font.family: "Abel"
                }
                Image {
                    id: uil_volume
                    width: 59/2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/uil_volume_On.svg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    fillMode: Image.PreserveAspectFit
                    antialiasing: true
                }
            }

            Rectangle {
                id: ellipse4
                x: 24
                y: 112
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                border.color: "#d6e0e7"
                border.width: 0
                MouseArea {
                    x: -24
                    y: -11
                    width: 99
                    height: 95
                    onClicked: {
                        if(ellipse4.color=="#617284"){
                            ellipse4.color="#217efd"
                            switch1and2CheckedForComm=true
                            uil_wifi.source="images/uil_wifi_on.svg"
                        }
                        else if(ellipse4.color=="#217efd"){
                            ellipse4.color="#617284"
                            switch1and2CheckedForComm=false
                            uil_wifi.source="images/uil_wifi.svg"
                        }
                    }
                }

                Text {
                    y: 47
                    width: 95
                    height: 37
                    color: "#284863"
                    text: qsTr("Wifi")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Regular"
                    font.family: "Abel"
                }

                Image {
                    id:uil_wifi
                    width: 56/2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/uil_wifi.svg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
            }

            Rectangle {
                id: ellipse7
                x: 24
                y: 207
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                border.color: "#d6e0e7"
                border.width: 0
                MouseArea {
                    x: -24
                    y: -11
                    width: 99
                    height: 95
                    onClicked: {
                        if(ellipse7.color=="#617284"){
                            ellipse7.color="#217efd"
                            uil_usb.source="images/uil_usb_on.svg"
                        }
                        else if(ellipse7.color=="#217efd"){
                            ellipse7.color="#617284"
                            uil_usb.source="images/uil_usb.svg"
                        }
                    }
                }

                Text {
                    y: 47
                    width: 95
                    height: 37
                    color: "#284863"
                    text: qsTr("USB")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Regular"
                    font.family: "Abel"
                }

                Image {
                    id:uil_usb
                    width: 62/2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/uil_usb.svg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
            }

            Rectangle {
                id: ellipse2
                x: 126
                y: 17
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                border.color: "#d6e0e7"
                border.width: 0
                MouseArea {
                    y: -11
                    width: 99
                    height: 95
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        if(ellipse2.color=="#617284"){
                            ellipse2.color="#217efd"
                            uil_Battery.source="images/uil_Battery_On.svg"
                        }
                        else if(ellipse2.color=="#217efd"){
                            ellipse2.color="#617284"
                            uil_Battery.source="images/uil_Battery.svg"
                        }
                    }
                }

                Text {
                    y: 47
                    width: 95
                    height: 37
                    color: "#284863"
                    text: qsTr("Power Saver")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Regular"
                    font.family: "Abel"
                }

                Image {
                    id:uil_Battery
                    width: 62/2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/uil_Battery.svg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
            }

            Rectangle {
                id: ellipse5
                x: 127
                y: 112
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                border.color: "#d6e0e7"
                border.width: 0
                MouseArea {
                    y: -11
                    width: 99
                    height: 95
                    onClicked: {
                        if(ellipse5.color=="#617284"){
                            ellipse5.color="#217efd"
                            uil_ethernet.source="images/uil_ethernet_on.svg"
                        }
                        else if(ellipse5.color=="#217efd"){
                            ellipse5.color="#617284"
                            uil_ethernet.source="images/uil_ethernet.svg"
                        }

                    }
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    y: 47
                    width: 95
                    height: 37
                    color: "#284863"
                    text: qsTr("Ethernet")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Regular"
                    font.family: "Abel"
                }

                Image {
                    id:uil_ethernet
                    width: 58/2
                    height: 58/2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/uil_ethernet.svg"
                    anchors.verticalCenterOffset: 0
                    anchors.horizontalCenterOffset: 0
                    anchors.horizontalCenter: parent.horizontalCenter
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
            }

            Rectangle {
                id: ellipse8
                x: 127
                y: 207
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                border.color: "#d6e0e7"
                border.width: 0
                MouseArea {
                    y: -11
                    width: 99
                    height: 95
                    onClicked: {
                        if(ellipse8.color=="#617284"){
                            ellipse8.color="#217efd"
                            uil_sdCard.source="images/uil_sdcard_on.svg"

                        }
                        else if(ellipse8.color=="#217efd"){
                            ellipse8.color="#617284"
                            uil_sdCard.source="images/uil_sdcard.svg"
                        }
                    }
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    id: text1
                    y: 47
                    width: 95
                    height: 37
                    color: "#284863"
                    text: qsTr("SD Card")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Regular"
                    font.family: "Abel"
                }

                Image {
                    id:uil_sdCard
                    width: 55/2
                    height: 55/2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/uil_sdcard.svg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
            }

            Rectangle {
                id: ellipse3
                x: 228
                y: 17
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                border.color: "#d6e0e7"
                border.width: 0
                MouseArea {
                    y: -11
                    width: 99
                    height: 95
                    anchors.horizontalCenterOffset: -2
                    onClicked: {
                        if(ellipse3.color=="#617284"){
                            ellipse3.color="#217efd"
                            uil_external.source="images/uil_external_on.svg"
                        }
                        else if(ellipse3.color=="#217efd"){
                            ellipse3.color="#617284"
                            uil_external.source="images/uil_external.svg"
                        }
                    }
                    anchors.horizontalCenter: parent.horizontalCenter
                }

                Text {
                    y: 47
                    width: 95
                    height: 37
                    color: "#284863"
                    text: qsTr("External")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Regular"
                    font.family: "Abel"
                }

                Image {
                    id:uil_external
                    width: 60/2
                    height: 60/2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/uil_external.svg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
            }

            Rectangle {
                id: ellipse6
                x: 228
                y: 112
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                border.color: "#d6e0e7"
                border.width: 0
                MouseArea {
                    y: -11
                    width: 99
                    height: 95
                    onClicked: {
                        if(ellipse6.color=="#617284"){
                            ellipse6.color="#217efd"
                            uil_bluetooth.source="images/uil_bluetooth_on.svg"
                        }
                        else if(ellipse6.color=="#217efd"){
                            ellipse6.color="#617284"
                            uil_bluetooth.source="images/uil_bluetooth.svg"
                        }
                    }
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: -2
                }

                Text {
                    y: 47
                    width: 95
                    height: 37
                    color: "#284863"
                    text: qsTr("Bluetooth")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Regular"
                    font.family: "Abel"
                }

                Image {
                    id:uil_bluetooth
                    width: 59/2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/uil_bluetooth.svg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
            }

            Rectangle {
                id: ellipse9
                x: 228
                y: 207
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                border.color: "#d6e0e7"
                border.width: 0
                MouseArea {
                    y: -11
                    width: 99
                    height: 95
                    onClicked: {
                        if(ellipse9.color=="#617284"){
                            ellipse9.color="#217efd"
                            uil_intMemory.source="images/uil_intmemory_on.svg"
                        }
                        else if(ellipse9.color=="#217efd"){
                            ellipse9.color="#617284"
                            uil_intMemory.source="images/uil_intmemory.svg"
                        }
                    }
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.horizontalCenterOffset: -2
                }

                Text {
                    y: 47
                    width: 95
                    height: 37
                    color: "#284863"
                    text: qsTr("Int Memory")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.horizontalCenter: parent.horizontalCenter
                    font.styleName: "Regular"
                    font.family: "Abel"
                }

                Image {
                    id:uil_intMemory
                    width: 60/2
                    anchors.verticalCenter: parent.verticalCenter
                    source: "images/uil_intmemory.svg"
                    anchors.horizontalCenter: parent.horizontalCenter
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
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
            x: 144
            y: 0
            width: 477/2
            source: "images/Menu-4.svg"
            fillMode: Image.PreserveAspectFit
        }


        Image {
            id: menu
            x: 1138
            y: 0
            width: 285/2
            source: "images/ClockMenu.svg"
            fillMode: Image.PreserveAspectFit
        }


        Text {
            id: pageNameText
            x: 150
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

        CustomButtonHeaderBlackBG{
            x:1131
            y:0
            width: 148
            height: 72
            clip: true

        }

        Text {
            id: text14
            x: 1158
            y: 13
            width: 120
            height: 60/2
            color: "#ffffff"
            text: qsTr("05.01.2024")
            font.letterSpacing: -3
            font.pixelSize: 45/2
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Akshar"
        }


        Image {
            id: time
            x: 1158
            y: 45
            width: 42/2
            source: "images/Time.svg"
            layer.enabled: true
            layer.effect: ColorOverlayEffect {
                id: colorOverlay
                color: "#ffffff"
            }
            fillMode: Image.PreserveAspectFit
        }


        Text {
            id: text15
            x: 1186
            y: 43
            width: 100
            height: 51/2
            color: "#ffffff"
            text: qsTr("21:00")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Akshar"
        }

        MouseArea {
            id: menuMouseArea
            x: 979
            y: 0
            width: 300
            height: 75
            onClicked:{
                if(notificationRect.state =="visible"){
                    notificationRect.state = "hidden"
                    notificationDeActivated.start()
                }
                else {
                    notificationRect.state = "visible"
                    notificationActivated.start()
                }
            }

            //                hoverEnabled: true
            //                      onEntered: {
            //                        notificationRect.state = "visible"
            //                      }
            //                      onExited: {
            //                        notificationRect.state = "hidden"
            //                      }

        }



        Image {
            id: menu1
            x: 976
            y: 0
            width: 160/2
            source: "images/Group 8733.svg"
            fillMode: Image.PreserveAspectFit
        }



        Image {
            id: menu2
            x: 1056
            y: 0
            width: 160/2
            source: "images/Group 8733-1.svg"
            fillMode: Image.PreserveAspectFit
        }



        Text {
            id: text13
            x: 1056
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
            x: 974
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
            SequentialAnimation{
                id:loggerRecAnim
                NumberAnimation {
                    target: loggerRec
                    property: "visible"
                    from:0
                    to:1
                    loops: -1
                    duration: 1000
                }
                NumberAnimation {
                    target: loggerRec
                    property: "opacity"
                    duration: 1000
                    from:0
                    to:1
                    loops: -1
                }
            }

            Image {
                id: loggerRec
                x: 353
                y: 22
                width: 24/2
                source: "images/Ellipse 157.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: ellipse158
                x: 348
                y: 17
                width: 44/2
                source: "images/Ellipse 158.svg"
                antialiasing: true
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
                width: 80
                height: 51/2
                color: "#284863"
                text: qsTr("00:00:00")
                font.letterSpacing: -2
                font.pixelSize: 20
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Abel"
            }

            SequentialAnimation{
                id:eventRecAnim
                NumberAnimation {
                    target: eventRec
                    property: "visible"
                    from:0
                    to:1
                    loops: -1
                    duration: 1000
                }
                NumberAnimation {
                    target: eventRec
                    property: "opacity"
                    duration: 1000
                    from:0
                    to:1
                    loops: -1
                }
            }
            Image {
                id: eventRec
                x: 472
                y: 22
                width: 24/2
                visible: true
                source: "images/Ellipse 157.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: ellipse160
                x: 467
                y: 17
                width: 44/2
                source: "images/Ellipse 158.svg"
                antialiasing: true
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
                width: 80
                height: 51/2
                color: "#284863"
                text: qsTr("00:00:00")
                font.letterSpacing: -2
                font.pixelSize: 20
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
                id: group9584
                x: 50
                y: 63
                source: "images/Group 9584.svg"
                fillMode: Image.PreserveAspectFit
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay10
                    color: colorForRec1
                }
                MouseArea {
                    id: mouseArea2
                    x: -50
                    y: -17
                    width: 144
                    height: 120
                    onClicked: {
                        colorForRec1="#00f7f8fa"
                        colorForRec2="#bff7f8fa"
                        colorForRec3="#bff7f8fa"
                        colorForRec4="#bff7f8fa"
                        colorForRecSum="#bff7f8fa"
                        menuTimer.restart()
                        forRectifierNumber=1
                    }
                }
            }

            Image {
                id: group9585
                x: 50
                y: 543
                source: "images/Group 9585.svg"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay8
                    color: colorForRecSum
                }
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: mouseArea6
                    x: -50
                    y: -17
                    width: 144
                    height: 120
                    onClicked: {
                        colorForRec1="#bff7f8fa"
                        colorForRec2="#bff7f8fa"
                        colorForRec3="#bff7f8fa"
                        colorForRec4="#bff7f8fa"
                        colorForRecSum="#00f7f8fa"
                        menuTimer.restart()
                        forRectifierNumber=5
                    }
                }
            }

            Image {
                id: group9583
                x: 50
                y: 183
                source: "images/Group 9583.svg"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay2
                    color: colorForRec2
                }
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: mouseArea3
                    x: -50
                    y: -17
                    width: 144
                    height: 120
                    onClicked: {
                        colorForRec1="#bff7f8fa"
                        colorForRec2="#00f7f8fa"
                        colorForRec3="#bff7f8fa"
                        colorForRec4="#bff7f8fa"
                        colorForRecSum="#bff7f8fa"
                        menuTimer.restart()
                        forRectifierNumber=2
                    }
                }
            }

            Image {
                id: group9581
                x: 50
                y: 303
                source: "images/Group 9581.svg"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay1
                    color: colorForRec3
                }
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: mouseArea4
                    x: -50
                    y: -17
                    width: 144
                    height: 120
                    onClicked: {
                        colorForRec1="#bff7f8fa"
                        colorForRec2="#bff7f8fa"
                        colorForRec3="#00f7f8fa"
                        colorForRec4="#bff7f8fa"
                        colorForRecSum="#bff7f8fa"
                        menuTimer.restart()
                        forRectifierNumber=3
                    }
                }
            }

            Image {
                id: group9582
                x: 50
                y: 423
                source: "images/Group 9582.svg"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay7
                    color: colorForRec4
                }
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: mouseArea5
                    x: -50
                    y: -17
                    width: 144
                    height: 120
                    onClicked: {
                        colorForRec1="#bff7f8fa"
                        colorForRec2="#bff7f8fa"
                        colorForRec3="#bff7f8fa"
                        colorForRec4="#00f7f8fa"
                        colorForRecSum="#bff7f8fa"
                        menuTimer.restart()
                        forRectifierNumber=4
                    }
                }
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
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay9
                    color: colorForRec1
                }
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Medium"
                font.family: "Akshar"
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
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay3
                    color: colorForRec2
                }
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
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay4
                    color: colorForRec3
                }
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
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay5
                    color: colorForRec4
                }
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
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay6
                    color: colorForRecSum
                }
                z: 1
                font.styleName: "Medium"
                font.family: "Akshar"
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
                        menuTimer.restart()
                        mainSettingsTextClickedChangeBarX.start()
                        mainSettingsTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="MAIN SETTINGS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("MainSettingsForQtR01.qml")
                        mySwipeView.enabled = false
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
                        menuTimer.restart()
                        eventSettingsTextClickedChangeBarX.start()
                        eventSettingsTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="EVENT SETTINGS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("EventSettingsForQtR01.qml")
                        mySwipeView.enabled = false
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
                        menuTimer.restart()
                        loggerSettingsTextClickedChangeBarX.start()
                        loggerSettingsTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="LOGGER SETTINGS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("LoggerSettingsForQtR01.qml")
                        mySwipeView.enabled = false
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
                        menuTimer.restart()
                        communicationSettingsTextClickedChangeBarX.start()
                        communicationSettingsTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="COMMMUNICATION SETTINGS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("CommunicationSettingsForQtR01.qml")
                        mySwipeView.enabled = false
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
                        menuTimer.restart()
                        singleLineDiagramSettingsTextClickedChangeBarX.start()
                        singleLineDiagramSettingsTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="SINGLE LINE DIAGRAM SETTINGS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("SingleLineDiagramSettingsForQtR01.qml")
                        mySwipeView.enabled = false
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
                        menuTimer.restart()
                        locationSettingsTextClickedChangeBarX.start()
                        locationTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="LOCATION SETTINGS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("LocationSettingsForQtR01.qml")
                        mySwipeView.enabled = false
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
                        menuTimer.restart()
                        interfaceSettingsTextClickedChangeBarX.start()
                        interfaceTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="INTERFACE SETTINGS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("InterfaceSettingsForQtR01.qml")
                        mySwipeView.enabled = false

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
            id: infoBottomBar
            x: 0
            y: -599
            width: 1280
            height: 71
            color: "#f7f8fa"

            Text {
                id:dataText
                x: 395
                y: 1
                width: 280/2
                height: 140/2
                color: "#284863"
                text: qsTr("DATA HUB")
                font.pixelSize: 45/2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Abel"
                MouseArea {
                    x: 0
                    y: -1
                    width: parent.width
                    height: 71
                    onClicked: {
                        menuTimer.restart()
                        dataHubTextClickedChangeBarX.start()
                        dataHubTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="DATA HUB"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("DataHUBForQtR01.qml")
                        menuTimer.restart()
                        statusBottomBar.x=0
                        statusBottomBar.y=-100
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=-200
                        settingsBottomBar.x=0
                        settingsBottomBar.y=-300
                        mySwipeView.enabled = false

                    }
                }

            }

            Text {
                id:screenshotsText
                x: 545
                y: 1
                width: 200
                height: 140/2
                color: "#284863"
                text: qsTr("SCREENSHOTS")
                font.pixelSize: 45/2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Abel"
                MouseArea {
                    x: 0
                    y: -1
                    width: parent.width
                    height: 71
                    onClicked: {
                        menuTimer.restart()
                        screenshotsTextClickedChangeBarX.start()
                        screenshotsTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="SCREENSHOTS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("ScreenshotsForQtR01.qml")
                        menuTimer.restart()
                        statusBottomBar.x=0
                        statusBottomBar.y=-100
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=-200
                        settingsBottomBar.x=0
                        settingsBottomBar.y=-300
                        mySwipeView.enabled = false
                    }
                }
            }

            Text {
                id: helpText
                x: 735
                y: 1
                width: 300/2
                height: 140/2
                color: "#284863"
                text: qsTr("HELP")
                font.pixelSize: 45/2
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Abel"
                MouseArea {
                    x: 0
                    y: -1
                    width: parent.width
                    height: 71
                    onClicked: {
                        menuTimer.restart()
                        helpTextClickedChangeBarX.start()
                        helpTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="HELP"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("HelpForQtR01.qml")
                        menuTimer.restart()
                        statusBottomBar.x=0
                        statusBottomBar.y=-100
                        measurementsBottomBar.x=0
                        measurementsBottomBar.y=-200
                        settingsBottomBar.x=0
                        settingsBottomBar.y=-300
                        mySwipeView.enabled = false
                    }
                }
            }

            PropertyAnimation {
                target: bottomMenuChosingMeasurements
                property: "x"
                duration: 200
                to: harmonicsText.x
            }

            PropertyAnimation {
                target: bottomMenuChosingMeasurements
                property: "width"
                duration: 200
                to: harmonicsText.width
            }

            Rectangle {
                id: bottomMenuChosingInfo
                x: 1282
                y: 0
                width: 140
                height: 8
                color: "#217efd"
            }

            PropertyAnimation {
                target: bottomMenuChosingMeasurements
                property: "x"
                duration: 200
                to: eventsText.x+20
            }

            PropertyAnimation {
                target: bottomMenuChosingMeasurements
                property: "width"
                duration: 200
                to: eventsText.width-40
            }

            PropertyAnimation {
                target: bottomMenuChosingMeasurements
                property: "x"
                duration: 200
                to: graphsText.x+20
            }

            PropertyAnimation {
                target: bottomMenuChosingMeasurements
                property: "width"
                duration: 200
                to: graphsText.width-40
            }

            PropertyAnimation {
                target: bottomMenuChosingMeasurements
                property: "x"
                duration: 200
                to: unbalanceText.x+5
            }

            PropertyAnimation {
                target: bottomMenuChosingMeasurements
                property: "width"
                duration: 200
                to: unbalanceText.width-10
            }

            PropertyAnimation {
                target: bottomMenuChosingMeasurements
                property: "x"
                duration: 200
                to: loggerDataText.x
            }

            PropertyAnimation {
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
                        menuTimer.restart()
                        harmonicsTextClickedChangeBarX.start()
                        harmonicsTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="HARMONICS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("HarmonicsForQtR01.qml")
                        mySwipeView.enabled = false
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
                        menuTimer.restart()
                        eventsTextClickedChangeBarX.start()
                        eventsTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="EVENTS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("EventsForQtR01.qml")
                        mySwipeView.enabled = false
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
                        menuTimer.restart()
                        graphsTextClickedChangeBarX.start()
                        graphsTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="GRAPHS"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("GraphsForQtR01.qml")
                        mySwipeView.enabled = false
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
                        menuTimer.restart()
                        unbalanceTextClickedChangeBarX.start()
                        unbalanceTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="UNBALANCE"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("UnbalanceForQtR01.qml")
                        mySwipeView.enabled = false
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
                        menuTimer.restart()
                        loggerDataTextClickedChangeBarX.start()
                        loggerDataTextClickedChangeBarWidth.start()
                        bottomMenuChosingStatus.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="LOGGER DATA"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.push("LoggerDataForQtR01.qml")
                        mySwipeView.enabled = false
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
                id: screenshotsTextClickedChangeBarX
                target: bottomMenuChosingInfo
                property: "x"
                duration: 200
                to: screenshotsText.x+20
            }

            PropertyAnimation {
                id: screenshotsTextClickedChangeBarWidth
                target: bottomMenuChosingInfo
                property: "width"
                duration: 200
                to: screenshotsText.width-40
            }


            PropertyAnimation {
                id: helpTextClickedChangeBarX
                target: bottomMenuChosingInfo
                property: "x"
                duration: 200
                to: helpText.x+20
            }

            PropertyAnimation {
                id: helpTextClickedChangeBarWidth
                target: bottomMenuChosingInfo
                property: "width"
                duration: 200
                to: helpText.width-40
            }

            PropertyAnimation {
                id: dataHubTextClickedChangeBarX
                target: bottomMenuChosingInfo
                property: "x"
                duration: 200
                to: dataText.x+20
            }

            PropertyAnimation {
                id: dataHubTextClickedChangeBarWidth
                target: bottomMenuChosingInfo
                property: "width"
                duration: 200
                to: dataText.width-40
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
                id:powerText
                x: 490
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
                    id: mouseAreaPowerQualityText
                    x: 0
                    y: -1
                    width: parent.width
                    height: 71
                    onClicked: {
                        menuTimer.restart()
                        powerTextClickedChangeBarX.start()
                        powerTextClickedChangeBarWidth.start()
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        pageNameText.text="POWER"
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.clear()
                        mySwipeView.enabled = true
                        mySwipeView.currentIndex=0
                    }
                }
            }

            Text {
                id:powerQualityText
                x: 630
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
                    id: mouseAreaPowerText
                    x: 0
                    y: -1
                    width: parent.width
                    height: 71
                    onClicked: {
                        menuTimer.restart()
                        powerQualityTextClicked.start()
                        powerQualityTextClickedChangeBarWidth.start()
                        bottomMenuChosingMeasurements.x=1400
                        bottomMenuChosingSettings.x=1400
                        bottomMenuChosingInfo.x=1400
                        stackViewStatusForQtR01.pop()
                        stackViewStatusForQtR01.clear()
                        mySwipeView.enabled = true
                        mySwipeView.currentIndex=1
                        pageNameText.text="POWER QUALITY"
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
    }

    Rectangle {
        id: rectangle2
        x: 72
        y: 0
        width: 72
        height: 72
        opacity: 1
        color: "#617284"
        ParallelAnimation{
            id:menuButtonClicked
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
        }

        ParallelAnimation{
            id:menuButtonNonClicked

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
        //        Timer {
        //            id:timerID
        //            interval: 500; running: true ; repeat: true
        //            onTriggered:{
        //              counter2++;
        //                if(counter2===2){

        //                    var hours = Math.floor(counter2 / 3600);
        //                    var minutes = Math.floor((counter2 % 3600) / 60);
        //                    var seconds = counter2 % 60;

        //                    text7.text = Qt.formatDateTime(new Date(0, 0, 0, hours, minutes, seconds), "hh:mm:ss");

        ////                    if (counter2 === 86399) {  // Bir günün saniye cinsinden tamamı

        ////                    }
        //                    counter2 = 0;
        //                }
        //             }
        //          }



        Item {
            Timer {
                id:menuTimer
                interval: 4000; running: true; repeat: false
                onTriggered:{
                    menuButtonNonClicked.start()
                    topMenuBarnonClickedMenu.start()
                    topSubMenu.x=360
                    topSubMenu.y=-500
                    statusBottomBar.x=0
                    statusBottomBar.y=-100
                    measurementsBottomBar.x=0
                    measurementsBottomBar.y=-200
                    settingsBottomBar.x=0
                    settingsBottomBar.y=-300
                    infoBottomBar.x=0
                    infoBottomBar.y=-400
                    //                    bottomMenuChosingMeasurements.x=1400
                    rectifierMenuClosed.start()
                }

            }
        }

        MouseArea {
            id: mouseAreaForMenu
            x: 0
            y: 0
            width: 293
            height: 72
            onClicked: {
                menuTimer.start()

                if(rectangle7.x===27){
                    menuButtonClicked.start()
                    topMenuBarClickedMenu.start()
                    rectifierMenuOpened.start()
                    menuTimer.restart()

                    if(pageNameText.text==="POWER QUALITY")
                    {
                        statusBottomBar.x=0
                        statusBottomBar.y=729
                        powerQualityTextClickedChangeBarWidth.start()
                        powerQualityTextClicked.start()
//                        powerTextClickedChangeBarWidth.start()
//                        powerTextClickedChangeBarX.start()
                        statusTextClickedChangeBarX.start()
                        statusTextClickedChangeBarWidth.start()

                    }
                    else if(pageNameText.text==="POWER")
                    {
                        statusBottomBar.x=0
                        statusBottomBar.y=729
                        powerTextClickedChangeBarWidth.start()
                        powerTextClickedChangeBarX.start()
//                        powerQualityTextClickedChangeBarWidth.start()
//                        powerQualityTextClicked.start()
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
                    else if(pageNameText.text==="DATA HUB")
                    {
                        infoBottomBar.x=0
                        infoBottomBar.y=729
                        infoTextClickedChangeBarX.start()
                        infoTextClickedChangeBarWidth.start()
                    }
                    else if(pageNameText.text==="SCREENSHOTS")
                    {
                        infoBottomBar.x=0
                        infoBottomBar.y=729
                        infoTextClickedChangeBarX.start()
                        infoTextClickedChangeBarWidth.start()
                    }
                    else if(pageNameText.text==="HELP")
                    {
//                        statusBottomBar.x=0
//                        statusBottomBar.y=-100
//                        measurementsBottomBar.x=0
//                        measurementsBottomBar.y=-200
//                        settingsBottomBar.x=0
//                        settingsBottomBar.y=-300
                        infoBottomBar.x=0
                        infoBottomBar.y=729
                        infoTextClickedChangeBarX.start()
                        infoTextClickedChangeBarWidth.start()
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
                    menuTimer.restart()
                    menuButtonNonClicked.start()
                    topMenuBarnonClickedMenu.start()
                    topSubMenu.x=360
                    topSubMenu.y=-500
                    statusBottomBar.x=0
                    statusBottomBar.y=-100
                    measurementsBottomBar.x=0
                    measurementsBottomBar.y=-200
                    settingsBottomBar.x=0
                    settingsBottomBar.y=-300
                    infoBottomBar.x=0
                    infoBottomBar.y=-400
                    //                    bottomMenuChosingMeasurements.x=1400
                    rectifierMenuClosed.start()
                }
            }
        }
    }


    Rectangle {
        id: rectangle12
        x: 0
        y: 800
        width: 2351
        height: 1484
        color: "#000000"
    }

    Rectangle {
        id: rectangle
        x: 1278
        y: 0
        width: 2351
        height: 2284
        color: "#000000"
    }


    Rectangle {
        id: rectanglescreenshotbg
        x: 1079
        y: 599
        width: 200
        height: 200
        visible: false
        color: "#eff2f6"
        border.color: "#000000"
        border.width: 1
    }

    Image {
        id: viewer
        x: 1080
        y: 600
        z:1
        width: 200
        height: 200
        visible: false
        source: ""
        anchors.rightMargin: 0
        anchors.bottomMargin: 0

        Image {
            id: save
            x: 20
            y: -86
            source: "images/save.svg"
            width: 114/2
            fillMode: Image.PreserveAspectFit
        }


        Image {
            id: delete1
            x: 125
            y: -85
            width: 114/2
            source: "images/delete.svg"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: mouseArea
            x: 0
            y: -101
            width: 200
            height: 100
            onClicked: {
                viewer.visible=false
                rectanglescreenshotbg.visible=false
            }
        }
    }

}
}



