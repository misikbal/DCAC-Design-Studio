import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15


Rectangle {
    id: rectangle12
    width: 1280
    height: 728
    color: "#ffffff"
    border.color: "#ffffff"
    property alias spinBox2: spinBox2
    property int numberForListView: 60
    property string colorOverlayColorIS: String("#00bfbfbf")
    property string colorOverlayColorIS1: String("#55bfbfbf")
    property string colorOverlayColorIS2: String("#00bfbfbf")
    property int numberForTimeSleep: 3000

    property bool isDialogOpen11: false

    Component.onCompleted:
    {
        chosenText24.text="Power"
        chosenText24.text="Power Quality"
        startPageHere.mySwipeView.enabled = true
        startPageHere.mySwipeView.currentIndex=1
        sleepModeSwitch.rectangle1.x=48
        sleepModeSwitch.rectangle.color= "#4EC040"
        sleepModeSwitch.clickedSignal("kerem");
    }

//    Image {
//        id: unbalance
//        x: 0
//        y: 0
//        width: 2560/2
//        source: "images/InterfaceSettings.svg"
//        fillMode: Image.PreserveAspectFit

        Rectangle {
            x: 365
            y: 29
            width: 529
            height: 330

            ForQtR01StartPage {
                id:startPageHere
                anchors.centerIn: parent
                scale: Math.min(parent.width / 1280, parent.height / 728)
                enabled:false
            }
        }
//    }
        Rectangle {
            id: rectangleForRightMenu
            x: 931
            y: 0
            width: 696/2
            height: 1456/2
            color: "#f7f8fa"
            border.color: "#e1e5ea"
        }

    Rectangle {
        id: rectangleForLeftMenu
        x: 0
        y: 0
        width: 696/2
        height: 1456/2
        color: "#f7f8fa"
        border.color: "#e1e5ea"

        GroupItem {
            id:volumeControl
            x: 19
            y: 200
            enabled: false
            layer.enabled: true
            layer.effect: ColorOverlayEffect {
                id: colorOverlay3
                color: colorOverlayColorIS2
            }

        SpinBox {
        id: spinBox2
        x: 0
        y: 0
        width: 322
        height: 40
        value: spinBox2ComingFromStart
        valueFromText: function(text) {
            return parseFloat(text) * 100; // Text'i ondalık değere dönüştürüp, 100 ile çarp
        }
        stepSize: 10000
        onValueChanged: {
            customslider2.handleRect.x=150+0.000425 * spinBox2.value - width / 2
            textForVolumeValue2.x=200+0.000425 * spinBox2.value - width / 2
            textForVolumeValue2.text=(((spinBox2.value)/100000)*20).toFixed(2)
//            textForVolumeValue1=textForVolumeValue2.text

            if (textForVolumeValue2.text === "0.00") {
                        uil_volume.source = "images/uil_volume.svg";
                        ellipse1.color = "#617284"
                    }
            else if (parseFloat(textForVolumeValue2.text) > 0.00 && parseFloat(textForVolumeValue2.text) < 45.00) {
                        uil_volume.source = "images/uil_volume_1.svg";
                        ellipse1.color = "#217efd"
                    }
            else if (parseFloat(textForVolumeValue2.text) >= 45.00 && parseFloat(textForVolumeValue2.text) < 90.00) {
                        uil_volume.source = "images/uil_volume_2.svg";
                        ellipse1.color = "#217efd"
                    }
            else if (parseFloat(textForVolumeValue2.text) >= 90.00 && parseFloat(textForVolumeValue2.text) <= 100.00) {
                        uil_volume.source = "images/uil_volume_On.svg";
                        ellipse1.color = "#217efd"
                    }
        }
        textFromValue: function(value) {
            return (value / 100).toFixed(2); // Değeri 100'e bölüp, iki ondalık basamakla göster
        }
        font.pointSize: 1
        to: 500000
        from: 1
        }

        CustomSliderForCurrent {
        id: customslider2
        x: 38
        y: 2
        width: 245
        height: 35
        onClickedSignal: {
            spinBox2.value=customslider2.slider.value
        }
        }


         Text {
            id: textForVolumeValue2
            x: 237
            y: 43
            color: "#bfbfbf"
            text: textForVolumeValue.toFixed(2)
            font.pixelSize: 20
        }

        Binding {
            target: textForVolumeValue2
            property: "text"
            value: textForVolumeValue.toFixed(2)
        }

        Binding {
            target: customslider2.slider
            property: "value"
            value: textForVolumeValue
        }

        Binding {
            target: spinBox2
            property: "value"
            value: textForVolumeValue
        }
        Binding {
            target: spinBox2
            property: "value"
            value: spinBox2ComingFromStart
        }


//        Binding {
//            target: customslider2.handleRect
//            property: "x"
//            value: 0.000425 * customslider2.slider.value - width / 2
//        }


//        Binding {
//            target: spinBox2
//            property: "value"
//            value: customslider2.slider.value
//        }


        Image {
        x: 283
        y: -16
        width: 77/2
        source: "images/increase.svg"
        fillMode: Image.PreserveAspectFit
        }

        Image {
        x: 1
        y: -17
        width: 76/2
        source: "images/decrease.svg"
        fillMode: Image.PreserveAspectFit
        }
        }


        Text {
            x: 16
            y: 18
            width: 300
            height: 41
            color: "#284863"
            text: qsTr("LANGUAGE SETTINGS")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            x: 20
            y: 58
            width: 76
            height: 40
            color: "#284863"
            text: qsTr("Language")
            font.letterSpacing: -0.5
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 5
        }

        Text {
            x: 16
            y: 115
            width: 300
            height: 41
            color: "#284863"
            text: qsTr("SOUND SETTINGS")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }











        Text {
            x: 20
            y: 155
            width: 76
            height: 40
            color: "#284863"
            text: qsTr("Beep")
            font.letterSpacing: -0.5
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 5
        }

        Rectangle {
            x: 159
            y: 153
            width: 182
            height: 40
            color: "#ffffff"
            border.color: "#e1e5ea"

            CustomSwitchForPhaseN
            {
                id:customSwitch
                x: 49
                y: 2
                width: 85
                height: 40
                onClickedSignal: {
                    colorOverlayColorIS2="#00bfbfbf"
                    volumeControl.enabled=true
                    textForVolumeValue2.color="#284863"
                    spinBox2.value=500000
                }

                onNonclickedSignal: {
                    colorOverlayColorIS2="#55bfbfbf"
                    volumeControl.enabled=false
                    textForVolumeValue2.color="#bfbfbf"
                    spinBox2.value=0
                }
                Component.onCompleted: {
                    clickedSignal("kerem")
                    customSwitch.rectangle1.x=48
                    customSwitch.rectangle.color= "#4EC040"
                }

            }

            Text {
                x: 0
                y: 7
                width: 70
                height: 25
                color: "#284863"
                text: qsTr("Off")
                font.letterSpacing: -0.5
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 5
            }

            Text {
                x: 119
                y: 7
                width: 63
                height: 25
                color: "#284863"
                text: qsTr("On")
                font.letterSpacing: -0.5
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 5
            }
        }




        Text {
            x: 20
            y: 313
            width: 100
            height: 40
            color: "#284863"
            text: qsTr("Start Screen")
            font.letterSpacing: -0.5
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 5
        }

        Text {
            x: 16
            y: 273
            width: 300
            height: 41
            color: "#284863"
            text: qsTr("STARTUP SETTINGS")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }


        Text {
            x: 16
            y: 367
            width: 300
            height: 41
            color: "#284863"
            text: qsTr("SLEEP SETTINGS")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }




        Text {
            x: 20
            y: 407
            width: 100
            height: 40
            color: "#284863"
            text: qsTr("Sleep Mode")
            font.letterSpacing: -0.5
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 5
        }

        Text {
            id:textAfter
            x: 20
            y: 452
            width: 76
            height: 40
            color: "#bfbfbf"
            text: qsTr("After")
            font.letterSpacing: -0.5
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 5
        }

        Rectangle {
            x: 159
            y: 405
            width: 182
            height: 40
            color: "#ffffff"
            border.color: "#e1e5ea"
            CustomSwitchForPhaseN {
                x: 49
                y: 2
                width: 85
                height: 40
                onClickedSignal: {
                    textAfter.color="#284863"
                    colorOverlayColorIS1="#00bfbfbf"
                    mouseAreaForAfter.enabled=true
                    inactivityTimer.restart()
                }
                onNonclickedSignal: {
                    textAfter.color="#bfbfbf"
                    colorOverlayColorIS1="#55bfbfbf"
                    mouseAreaForAfter.enabled=false
                    inactivityTimer.stop()
                    okUp26.rotation=0
                    backgroundList26.visible=false
                    listView26.visible=false
                }
            }

            Text {
                x: 0
                y: 7
                width: 70
                height: 25
                color: "#284863"
                text: qsTr("Off")
                font.letterSpacing: -0.5
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 5
            }

            Text {
                x: 119
                y: 7
                width: 63
                height: 25
                color: "#284863"
                text: qsTr("On")
                font.letterSpacing: -0.5
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 5
            }
        }

        Text {
            x: 16
            y: 508
            width: 300
            height: 41
            color: "#284863"
            text: qsTr("DATE & TIME SETTINGS")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        Text {
            id:dateTextIS
            x: 20
            y: 593
            width: 100
            height: 40
            color: "#284863"
            text: qsTr("Date")
            font.letterSpacing: -0.5
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 5
        }

        Text {
            id:timeTextIS
            x: 20
            y: 638
            width: 76
            height: 40
            color: "#284863"
            text: qsTr("Time")
            font.letterSpacing: -0.5
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 5
        }

        Rectangle {
            id:dateRect
            x: 159
            y: 595
            width: 182
            height: 40
            color: "#f9f9f9"
            border.color: "#e1e5ea"
            layer.enabled: true
            layer.effect: ColorOverlayEffect {
                id: colorOverlay
                color: colorOverlayColorIS
            }
            Rectangle {
                id: rectangle1
                x: 0
                y: 0
                width: 60
                height: 40
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textInput1
                    x: 5
                    y: 0
                    width: 55
                    height: 41
                    color: "#284863"
                    text: qsTr("30")
                    anchors.right: parent.right
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    maximumLength: 2
                    anchors.rightMargin: 1
                    clip: true
                    inputMask: "99" // Sadece rakam girişini zorunlu kılar

                    validator: IntValidator {
                        bottom: 1
                        top: 31
                    }
                    onTextChanged: {
                        var enteredValue = parseInt(text);

                        // Eğer sayı değilse veya sınırlar dışında bir değer ise, sınırlar içinde güncelle
                        //                    if (isNaN(enteredValue)) {
                        //                        text = "1"; // Geçersiz değer girilirse 1 yap
                        //                    }
                        if (enteredValue > 31) {
                            text = "31"; // 31'den büyükse 31 yap
                        }
                       text14.text=textInput1.text + "." + textInput2.text + "." + textInput3.text
                    }
                }

            }

            Rectangle {
                id: rectangle2
                x: 61
                y: 0
                width: 60
                height: 40
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textInput2
                    x: 5
                    y: 0
                    width: 55
                    height: 41
                    color: "#284863"
                    text: qsTr("10")
                    anchors.right: parent.right
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    validator: IntValidator {
                        bottom: 1
                        top: 31
                    }
                    maximumLength: 2
                    inputMask: "99"
                    clip: true
                    onTextChanged: {
                        // Girilen değeri sayıya çevir
                        var enteredValue = parseInt(text);

                        if (enteredValue > 12) {
                            text = "12"; // 31'den büyükse 31 yap
                        }
                        text14.text=textInput1.text + "." + textInput2.text + "." + textInput3.text
                    }
                    anchors.rightMargin: 1
                }
            }

            Rectangle {
                id: rectangle3
                x: 122
                y: 0
                width: 60
                height: 40
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textInput3
                    x: 5
                    y: 0
                    width: 55
                    height: 41
                    color: "#284863"
                    text: qsTr("2024")
                    anchors.right: parent.right
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    validator: IntValidator {
                        bottom: 1
                        top: 9999
                    }
                    maximumLength: 4
                    inputMask: "9999"
                    clip: true
                    onTextChanged: {
                        // Girilen değeri sayıya çevir
                        var enteredValue = parseInt(text);

                        if (enteredValue > 9999) {
                            text = "9999";
                        }
                        text14.text=textInput1.text + "." + textInput2.text + "." + textInput3.text
                    }


                    anchors.rightMargin: 1
                }
            }
        }

        Rectangle {
            x: 159
            y: 642
            width: 182
            height: 40
            color: "#f9f9f9"
            border.color: "#e1e5ea"
            layer.enabled: true
            layer.effect: ColorOverlayEffect {
                id: colorOverlay1
                color: colorOverlayColorIS
            }
            Rectangle {
            id: __multi__selection__
            Text {
            x: 84
            y: 7
            width: 14
            height: 25
            color: "#284863"
            text: qsTr(":")
            font.letterSpacing: -0.5
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 5
            }
            Rectangle {
                x: 24
                y: 0
                width: 60
                height: 40
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textInput4
                    x: 5
                    y: 0
                    width: 55
                    height: 41
                    color: "#284863"
                    text: qsTr("23")
                    anchors.right: parent.right
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    validator: IntValidator {
                    bottom: 1
                    top: 31
                    }
                    maximumLength: 2
                    inputMask: "99"
                    clip: true
                    onTextChanged: {
                        var enteredValue = parseInt(text);
                        if (enteredValue > 23) {
                            text = "23";
                        }
                        text15.text=textInput4.text + ":" + textInput5.text
                    }

                anchors.rightMargin: 1
                }
            }

            Rectangle {
                x: 98
                y: 0
                width: 60
                height: 40
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textInput5
                    x: 5
                    y: 0
                    width: 55
                    height: 41
                    color: "#284863"
                    text: qsTr("10")
                    anchors.right: parent.right
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    validator: IntValidator {
                    bottom: 1
                    top: 31
                }
                maximumLength: 2
                inputMask: "99"
                clip: true
                onTextChanged: {
                    var enteredValue = parseInt(text);
                    if (enteredValue > 59) {
                        text = "59";
                    }
                    text15.text=textInput4.text + ":" + textInput5.text
                }
                anchors.rightMargin: 1
                }
                }
                }
        }

        Text {
            x: 20
            y: 548
            width: 100
            height: 40
            color: "#284863"
            text: qsTr("Automatically")
            font.letterSpacing: -0.5
            font.pixelSize: 18
            verticalAlignment: Text.AlignVCenter
            anchors.leftMargin: 5
        }


        Rectangle {
            id:parentRectangle
            x: 159
            y: 548
            width: 182
            height: 40
            color: "#ffffff"
            border.color: "#e1e5ea"
            CustomSwitchForPhaseN {
                id:sleepModeSwitch
                x: 49
                y: 2
                width: 85
                height: 40
                onClickedSignal: {
                    dateTextIS.color="#bfbfbf"
                    timeTextIS.color="#bfbfbf"
                    colorOverlayColorIS="#55bfbfbf"
                    textInput1.readOnly=true
                    textInput2.readOnly=true
                    textInput3.readOnly=true
                    textInput4.readOnly=true
                    textInput5.readOnly=true
                }
                onNonclickedSignal: {
                    dateTextIS.color="#284863"
                    timeTextIS.color="#284863"
                    colorOverlayColorIS="#00bfbfbf"
                    textInput1.readOnly=false
                    textInput2.readOnly=false
                    textInput3.readOnly=false
                    textInput4.readOnly=false
                    textInput5.readOnly=false
                    text14.text=textInput1.text + "." + textInput2.text + "." + textInput3.text
                    text15.text=textInput4.text + ":" + textInput5.text
                }
            }

            Text {
                x: 0
                y: 7
                width: 70
                height: 25
                color: "#284863"
                text: qsTr("Off")
                font.letterSpacing: -0.5
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 5
            }

            Text {
                x: 119
                y: 7
                width: 63
                height: 25
                color: "#284863"
                text: qsTr("On")
                font.letterSpacing: -0.5
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.leftMargin: 5
            }
        }

        Rectangle {
            id: rectangle125
            x: 159
            y: 452
            width: 182
            height: 40
            color: "#ffffff"
            border.color: "#d9d9d9"
            border.width: 1
            layer.enabled: true
            layer.effect: ColorOverlayEffect {
                id: colorOverlay2
                color: colorOverlayColorIS1
            }
            Image {
                id:okUp26
                x: 163
                y: 16
                width: 14
                source: "images/okUp22.svg"
                fillMode: Image.PreserveAspectFit
                rotation: 0
            }

            Text {
                id:chosenText26
                color: "#284863"
                text: qsTr("3 second")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                font.pixelSize: 16
                anchors.leftMargin: 5

                onTextChanged: {
                    var value = parseInt(text.split(" ")[0]); // İlk değeri rakam olarak al
                    var unit = text.split(" ")[1]; // İkinci değeri birim olarak al

                    if (unit === "second") {
                        helpForSecText.text = value * 1000; // Saniyeyi milisaniyeye çevir
                    } else if (unit === "minute") {
                        helpForSecText.text = value * 60000; // Dakikayı milisaniyeye çevir
                    }
                }
            }

            MouseArea {
                id:mouseAreaForAfter
                enabled: false
                anchors.fill: parent
                anchors.topMargin: -5
                anchors.bottomMargin: -5
                anchors.leftMargin: -5
                onClicked: {

                    if(okUp26.rotation===180)
                    {
                        okUp26.rotation=0
                        backgroundList26.visible=false
                        listView26.visible=false
                    }
                    else
                    {
                        okUp26.rotation=180
                        backgroundList26.visible=true
                        listView26.visible=true
                    }
                }
                anchors.rightMargin: -1
            }

            Text {
                id: helpForSecText
                x: -7
                y: -7
                opacity: 1
                color: "#284863"
                text: "3000"
                visible: false
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                font.pixelSize: 16
                anchors.verticalCenterOffset: 0
                anchors.leftMargin: 100
                onTextChanged: {
                numberForTimeSleep=helpForSecText.text
                }
            }
        }

        Rectangle {
            id: backgroundList26
            x: 159
            y: 491
            width: 182
            height: listView26.height
            visible: false
            color: "#ffffff"
            border.color: "#d9d9d9"
            border.width: 1
        }

        ListView {
            id: listView26
            x: 159
            y: 498
            width: rectangle122.width
            height: 190
            visible: false
            model: ListModel {
                ListElement {
                    name: "3 second"
                }

                ListElement {
                    name: "5 second"
                }

                ListElement {
                    name: "30 second"
                }

                ListElement {
                    name: "1 minute"
                }

                ListElement {
                    name: "3 minute"
                }

                ListElement {
                    name: "5 minute"
                }

                ListElement {
                    name: "10 minute"
                }

                ListElement {
                    name: "30 minute"
                }
            }
            clip: true
            delegate: Item {
                width: listView26.width
                height: 60
                Rectangle {
                    width: parent.width
                    height: 50
                    color: "#eff2f6"
                    Text {
                        text: model.name
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            chosenText26.text = model.name
                        }
                    }
                }
            }
        }

        Item {
            signal chosenTextChanged(string newText)  // Yeni sinyal tanımlaması

        Rectangle {
            id: rectangle123
            x: 159
            y: 313
            width: 182
            height: 40
            color: "#ffffff"
            border.color: "#d9d9d9"
            border.width: 1
            Image {
                id:okUp24
                x: 163
                y: 16
                width: 14
                source: "images/okUp22.svg"
                fillMode: Image.PreserveAspectFit
                rotation: 0
            }

            Text {
                id:chosenText24
                color: "#284863"
                text: qsTr("Power Quality")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                font.pixelSize: 16
                anchors.leftMargin: 5
                onTextChanged: {
                    if(chosenText24.text==="Power Quality"){
                        startPageHere.mySwipeView.currentIndex=1
                    }
                    else if(chosenText24.text==="Power"){
                        startPageHere.mySwipeView.currentIndex=0
                    }
                }
            }

            MouseArea {
                anchors.fill: parent
                anchors.topMargin: -5
                anchors.bottomMargin: -5
                anchors.leftMargin: -5
                anchors.rightMargin: -5
                onClicked: {

                    if(okUp24.rotation===180)
                    {
                        okUp24.rotation=0
                        backgroundList24.visible=false
                        listView24.visible=false
                    }
                    else
                    {
                        okUp24.rotation=180
                        backgroundList24.visible=true
                        listView24.visible=true
                    }
                }
            }
        }

        Rectangle {
            id: backgroundList24
            x: 159
            y: 352
            width: 182
            height: listView24.height
            visible: false
            color: "#ffffff"
            border.color: "#d9d9d9"
            border.width: 1
        }

        ListView {
            id: listView24
            x: 159
            y: 352
            width: rectangle122.width
            height: numberForListView*2
            visible: false
            model: ListModel {
                ListElement {
                    name: "Power Quality"
                }

                ListElement {
                    name: "Power"
                }

            }
            clip: true
            delegate: Item {
                width: listView24.width
                height: numberForListView
                Rectangle {
                    width: parent.width
                    height: 50
                    color: "#eff2f6"
                    Text {
                        text: model.name
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            chosenText24.text = model.name
//                            if(chosenText24.text==="Power"){
//                                forQtR01StartPage1.mySwipeView.currentIndex=0

//                            }
//                            else if(chosenText24.text==="Power Quality"){
//                                forQtR01StartPage1.mySwipeView.currentIndex=1

//                            }
                            }
                        }
                    }
                }
            }
        }




        Rectangle {
            id:rectangle122
            x: 159
            y: 58
            width: 182
            height: 40
            color: "#ffffff"
            border.color: "#d9d9d9"
            border.width: 1
            Image {
                id:okUp23
                x: 163
                y: 16
                width: 14
                source: "images/okUp22.svg"
                fillMode: Image.PreserveAspectFit
                rotation: 0
            }

            Text {
                id:chosenText23
                color: "#284863"
                text: qsTr("English")
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                font.pixelSize: 16
                anchors.leftMargin: 5
            }

            MouseArea {
                anchors.fill: parent
                anchors.leftMargin: -5
                anchors.topMargin: -5
                anchors.rightMargin: -5
                anchors.bottomMargin: -5
                onClicked: {

                    if(okUp23.rotation===180)
                    {
                        okUp23.rotation=0
                        backgroundList23.visible=false
                        listView23.visible=false
                    }
                    else
                    {
                        okUp23.rotation=180
                        backgroundList23.visible=true
                        listView23.visible=true
                    }
                }
            }
        }






        Rectangle {
            id: backgroundList23
            x: 159
            y: 97
            width: 182
            height: listView23.height
            visible: false
            color: "#ffffff"
            border.color: "#d9d9d9"
            border.width: 1
        }






        ListView {
            id:listView23
            x: 159
            y: 97
            width: rectangle122.width
            height: numberForListView*3
            visible: false
            delegate: Item {
                width: listView23.width
                height: numberForListView
                Rectangle {
                    width: parent.width
                    height: 50
                    color: "#eff2f6"
                    Text {
                        text: model.name
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            chosenText23.text = model.name
                        }
                    }
                }
            }
            clip: true
            model: ListModel {
                ListElement {
                    name: "English"
                }

                ListElement {
                    name: "Turkish"
                }

                ListElement {
                    name: "Arabic"
                }

                ListElement {
                    name: "German"
                }
            }
        }



    }

    Timer {
        id: inactivityTimer
        interval: numberForTimeSleep // Kullanıcının seçtiği parametreye göre
        repeat: false
        onTriggered: goToSleepMode()
    }

    function goToSleepMode() {
        //        console.log("Ekran uyku moduna geçiyor.")
        screenDimmer.visible = true
        screenDimmer.opacity = 0.5
        sleepModeMouseArea.visible = true
        sleepModeText.visible = true
        screenMouseArea.enabled = true
    }

    function wakeUpFromSleepMode() {
        screenDimmer.visible = false
        sleepModeMouseArea.visible = false
        sleepModeText.visible = false
        inactivityTimer.restart()
        screenMouseArea.enabled = false
    }


    MouseArea {
        id: screenMouseArea
        anchors.fill: parent
        hoverEnabled: true
        enabled:false
        // Kullanıcı fareyi hareket ettirdiğinde timer'ı yeniden başlat
        //        onPositionChanged:
        //        {
        //            inactivityTimer.restart()
        //            wakeUpFromSleepMode()
        //        }
        Keys.onPressed: {
            inactivityTimer.restart()
            wakeUpFromSleepMode()
        }
        // Ekrana tıklandığında timer'ı yeniden başlat
        onClicked: inactivityTimer.restart()
        onPressed: inactivityTimer.restart()
        onReleased: inactivityTimer.restart()
        focus: true
    }


    MouseArea {
        id: sleepModeMouseArea
        anchors.fill: parent
        visible: false
        onClicked: wakeUpFromSleepMode()
    }





    Rectangle {
        id: rectangle
        x: 367
        y: 363
        width: 333
        height: 232
        visible: rectangle12.isDialogOpen11
        color: "#ffffff"
    }

    ButtonGroup {
        id: radioButtonGroup
    }


    Flickable {
        id: flickable
        x: 928
        y: 450
//        visible: rectangle12.isDialogOpen11
        visible: true
        width: 335
        height: 250
        ScrollBar.vertical: ScrollBar {
            x: 355
            width: 10
            height: 650
            policy: ScrollBar.AlwaysOn
            size: flickable.height / flickable.contentHeight
            position: flickable.contentY / flickable.contentHeight
            contentItem: Rectangle {
                implicitHeight: parent.height / 2
                implicitWidth: parent.width
                color: "gray"
                radius: 5
            }
        }

        Column {
            id: column
            x: 10
            y: 50
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.topMargin: 10
            Repeater {
                id: repeater
                anchors.fill: parent
                model: ListModel {
                    id: myListModel
                    ListElement {
                        name: "INTERFACE 1"
                    }
                    function containsElement(elementName) {
                        for (var i = 0; i < count; i++) {
                            if (get(i).name === elementName) {
                                return true;
                            }
                        }
                        return false;
                    }

                    function createListElement() {
                        return {
                            "name": toDoTextInput.text
                        }
                    }

                }
                Rectangle {
                    id: toDoItem
                    x: 0
                    y: 26
                    width: flickable.width
                    height: 55
                    color: "#00eff2f6"
                    radius: 0
                    RadioButton {
                        id: checkBox
                        text: name
                        anchors.left: parent.left
                        anchors.top: parent.top
                        anchors.bottom: parent.bottom
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        font.family: "Akshar"
                        anchors.bottomMargin: 0
                        anchors.topMargin: 0
                        anchors.leftMargin: 55
                        ButtonGroup.group: radioButtonGroup
                        contentItem: Label {
                            text: checkBox.text
                            color: "#284863" // Metin rengini burada ayarlıyoruz
                            font.pixelSize: checkBox.font.pixelSize
                            anchors.verticalCenterOffset: 10
                            font.family: checkBox.font.family
                            font.letterSpacing: checkBox.font.letterSpacing
                            anchors.verticalCenter: parent.verticalCenter // Dikey olarak ortalar
                            anchors.left: parent.left // RadioButton'un sağında konumlanır
                            anchors.leftMargin: 53 // Sağdaki mesafeyi ayarlıyoruz
                        }
//                        onClicked: {
//                            // Tıklanan radioButton'ın metnini al ve bir işlevi çağır
//                            clickedText.text=""+text;
//                            clickedText2.text=""+text;
//                            clickedText.color="#284863"
//                            rectangle12.isDialogOpen11 = false;
//                            warningText.visible=false
//                        }
                    }
                    MouseArea {
                        id: itemMouseArea
                        anchors.fill: parent
                        onClicked: {
                            checkBox.checked = true
                            clickedText.text=""+checkBox.text;
                            clickedText2.text=""+checkBox.text;
                            clickedText.color="#284863"
                            rectangle12.isDialogOpen11 = false;
                            warningText.visible=false
                        }
                    }

                    Text {
                        width: 100
                        height: 40
                        color: "#284863"
                        text: index
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.letterSpacing: -0.5
                        font.pixelSize: 22
                        verticalAlignment: Text.AlignVCenter
                        anchors.verticalCenterOffset: -1
                        anchors.leftMargin: 20
                    }
                }
                clip: true
            }
            anchors.rightMargin: 15
            anchors.leftMargin: 0
            clip: false
            spacing: 10
        }


        clip: true
        contentHeight: 400
    }



    Image {
        id: bgForHeader3
        x: 373
        y: 649
        width: 326
        height: 55
        source: "images/BGHeader.svg"
        Text {
            x: 5
            y: -32
            width: 121
            height: 44
            color: "#284863"
            text: qsTr("Record Name")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        CustomButtonHeaderBlackBG {
            x: 268
            y: 6
            width: 57
            height: 46
            clip: true
        }

        Image {
            id:okUp1
            x: 290
            y: 24
            width: 28/2
            source: "images/OkUp.svg"
            fillMode: Image.PreserveAspectFit
            rotation: 0
        }
        RowLayout {
        x: 335
        y: -12
        width: 188
        height: 80
        anchors.leftMargin: 5
        spacing: 5
        anchors.rightMargin: 5

        Button {
        id: cancelButton
        height: 46
        layer.enabled: true
        layer.effect: ColorOverlayEffect {
        id: colorOverlay222
        color: "#617284"
        Text {
        id: cancel
        x: 0
        y: 0
        width: 91
        height: 40
        color: "#ffffff"
        text: qsTr("Cancel")
        font.letterSpacing: -2
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Akshar"
        }
        }
        Layout.minimumHeight: 45
        icon.color: "#eff2f6"
        Connections {
        target: cancelButton
        onClicked: {
                                rectangle12.isDialogOpen11 = false
                                //                        rectangle2.visible = false
                                warningText.visible=false
                            }
        }

        Connections {
        target: cancelButton
        onClicked: toDoTextInput.text = ""
        }
        Layout.fillWidth: true
        }

        Button {
        id: addButton
        height: 46
        layer.enabled: true
        layer.effect: ColorOverlayEffect {
        id: colorOverlay1222
        color: "#617284"
        Text {
        id: add
        x: 0
        y: 0
        width: 91
        height: 40
        color: "#ffffff"
        text: qsTr("Add")
        font.letterSpacing: -2
        font.pixelSize: 18
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.family: "Akshar"
        }
        }
        Layout.minimumHeight: 45
        Connections {
        target: addButton
        }

        Connections {
        target: addButton
        onClicked: {
                                if (toDoTextInput.text.trim() === "") {
                                    warningText.text = qsTr("An empty value cannot be entered, please enter at least 1 character.");
                                    warningText.visible = true;
                                    //                            rectangle2.visible = true;
                                }
                                else if (myListModel.containsElement(toDoTextInput.text.trim())) {
                                    console.log("girdi")
                                    warningText.text = qsTr("This name is already on the list.");
                                    warningText.visible = true;
                                    //                            rectangle2.visible = true;
                                    toDoTextInput.text = ""; // Bu satırı ekleyin.
                                }
                                else {
                                    warningText.visible = false; // Uyarı mesajını gizle
                                    //                            rectangle2.visible = false;
                                    flickable.contentHeight += 65;
                                    myListModel.append(myListModel.createListElement());
        //                            communicationSettings.myListModelMemoryInfo.append(communicationSettings.myListModelMemoryInfo.createListElement(toDoTextInput.text));
                                    toDoTextInput.text = ""; // Bu satırı ekleyin.

                                    saveListModel();

                                }
                            }
        }
        Layout.fillWidth: true
        }
        }

        Rectangle {
            id: rectangle222
            x: 0
            y: 6
            width: 268
            height: 46
            color: "#ffffff"
            border.color: "#d9d9d9"
            border.width: 1

            Text {
            id: clickedText2
            x: 7
            y: 0
            width: 261
            height: 46
            color: "#284863"
            text: qsTr("INTERFACE 1")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
            }

            Text {
                color: "#284863"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                font.pixelSize: 18
                anchors.leftMargin: 10
            }

            MouseArea {
                anchors.fill: parent
                anchors.topMargin: -5
                anchors.bottomMargin: -5
                anchors.leftMargin: -5
                onClicked: {

                    if(okUp1.rotation===180)
                    {
                        okUp1.rotation=0
                        rectangle12.isDialogOpen11 = !rectangle12.isDialogOpen11
                        warningText.visible=false
                    }
                    else
                    {
                        okUp1.rotation=180
                        rectangle12.isDialogOpen11 = !rectangle12.isDialogOpen11
                        warningText.visible=false
                    }
                }
                anchors.rightMargin: -60
            }
        }
        fillMode: Image.Pad
    }


    Rectangle {
        id: addToDoDialog
        x: 373
        y: 553
        width: 326
        height: 100
        visible: rectangle12.isDialogOpen11
        color: "#EFF2F6"
        radius: 0
        TextField {
            id: toDoTextInput
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            font.pixelSize: 18
            anchors.bottomMargin: 25
            font.styleName: "Light"
            font.family: "Akshar"
            placeholderText: qsTr("Please enter record name")
            anchors.topMargin: 25
            anchors.rightMargin: 25
            anchors.leftMargin: 25
            maximumLength: 24
        }
    }


    Text {
        id: warningText
        x: 379
        y: 505
        width: 319
        height: 50
        // Yerleşimini ayarlayın
        color: "red"
        font.pointSize: 14
        visible: false // Başlangıçta gizli olacak
        text: qsTr("An empty value cannot be entered, please enter at least 1 character.")
        wrapMode: Text.Wrap
    }


    Text {
        id: clickedText
        x:951
        y: 19
        width: 325
        height: 50
        color: "#284863"
        text: qsTr("INTERFACE 1")
        font.letterSpacing: -2
        font.pixelSize: 19
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Akshar"
        font.styleName: "Bold"
    }


    Text {
        x: 928
        y: 401
        width: 52
        height: 50
        color: "#284863"
        text: qsTr("No")
        font.letterSpacing: -2
        font.pixelSize: 19
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Akshar"
        font.styleName: "Bold"
    }


    Text {
        x: 980
        y: 401
        width: 43
        height: 50
        color: "#284863"
        text: qsTr("Use")
        font.letterSpacing: -2
        font.pixelSize: 19
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Akshar"
        font.styleName: "Bold"
    }


    Text {
        x: 1023
        y: 401
        width: 78
        height: 50
        color: "#284863"
        text: qsTr("Name")
        font.letterSpacing: -2
        font.pixelSize: 19
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Akshar"
        font.styleName: "Bold"
    }



    Text {
        x: 942
        y: 361
        width: 208
        height: 40
        color: "#284863"
        text: qsTr("SAVED INTERFACES")
        font.letterSpacing: -2
        font.pixelSize: 19
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Akshar"
        font.styleName: "Bold"
    }





    Rectangle {
        id: screenDimmer
        anchors.fill: parent
        color: "black"
        opacity: 0
        visible: false
    }
    Text {
        id: sleepModeText
        text: "Sleep Mode"
        anchors.centerIn: parent
        font.pixelSize: 24
        color: "white"
        visible: false
    }
}
