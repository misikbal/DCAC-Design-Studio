import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15

import Qt.labs.calendar 1.0
import Qt.labs.folderlistmodel 2.15
import QtQuick.LocalStorage 2.15
import Qt.labs.settings 1.1


Rectangle {
    id: rectangle1
    width: 1280
    height: 728
    color: "#f7f8fa"
    border.color: "#ffffff"
    property alias recordForNow: recordForNow
    property alias kerem: kerem

    property bool isDialogOpen: false

    Component.onCompleted: {
        customCheckBox.checkBoxOn.visible=true
        customCheckBox.checkBoxOFF.source="images/CheckBoxONBG.svg"
        customCheckBox2.checkBoxOn.visible=true
        customCheckBox2.checkBoxOFF.source="images/CheckBoxONBG.svg"
        customCheckBox6.checkBoxOn.visible=true
        customCheckBox6.checkBoxOFF.source="images/CheckBoxONBG.svg"
        customCheckBox10.checkBoxOn.visible=true
        customCheckBox10.checkBoxOFF.source="images/CheckBoxONBG.svg"
    }

    Image {
        id: loggerSettingsLeft
        x: 0
        y: 0
        width: 696/2
        source: "images/LoggerSettingsLeft.svg"
        //        layer.enabled: true
        //        layer.effect: ColorOverlayEffect {
        //            id: colorOverlay2
        //            color: "#cab9b9b9"
        //        }
        fillMode: Image.PreserveAspectFit

        CustomCheckBox {
            id: customCheckBox
            x: 66
            y: 73
            onClickedSignal: {
                if(customCheckBox.checkBoxOn.visible===true && customCheckBox1.checkBoxOn.visible===true && customCheckBox2.checkBoxOn.visible===true){
                    customCheckBox3.checkBoxOn.visible=true
                    customCheckBox3.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                rectangleArea1.visible = true;
                forPowerText.text=forPowerText.text+" Min "
                beginDateForNow.visible=true
                endDateForNow.visible=true

            }
            onNonclickedSignal: {
                customCheckBox3.checkBoxOn.visible=false
                customCheckBox3.checkBoxOFF.source="images/CheckBoxOFF.svg"
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false) {
                    rectangleArea1.visible = false;
                }
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                    beginDateForNow.visible=false
                    endDateForNow.visible=false
                }
                forPowerText.text = forPowerText.text.replace(" Min ", "")

            }


        }

        CustomCheckBox {
            id: customCheckBox1
            x: 66
            y: 108
            onClickedSignal: {
                if(customCheckBox.checkBoxOn.visible===true && customCheckBox1.checkBoxOn.visible===true && customCheckBox2.checkBoxOn.visible===true){
                    customCheckBox3.checkBoxOn.visible=true
                    customCheckBox3.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                rectangleArea1.visible = true;
                forPowerText.text=forPowerText.text+" Avg "
                beginDateForNow.visible=true
                endDateForNow.visible=true
            }
            onNonclickedSignal: {
                customCheckBox3.checkBoxOn.visible=false
                customCheckBox3.checkBoxOFF.source="images/CheckBoxOFF.svg"
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false) {
                    rectangleArea1.visible = false;
                }
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                    beginDateForNow.visible=false
                    endDateForNow.visible=false
                }
                forPowerText.text = forPowerText.text.replace(" Avg ", "")
            }

        }

        CustomCheckBox {
            id: customCheckBox2
            x: 66
            y: 143
            onClickedSignal: {
                if(customCheckBox.checkBoxOn.visible===true && customCheckBox1.checkBoxOn.visible===true && customCheckBox2.checkBoxOn.visible===true){
                    customCheckBox3.checkBoxOn.visible=true
                    customCheckBox3.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                rectangleArea1.visible = true;
                forPowerText.text=forPowerText.text+" Max "
                beginDateForNow.visible=true
                endDateForNow.visible=true
            }
            onNonclickedSignal: {
                customCheckBox3.checkBoxOn.visible=false
                customCheckBox3.checkBoxOFF.source="images/CheckBoxOFF.svg"
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false) {
                    rectangleArea1.visible = false;
                }
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                    beginDateForNow.visible=false
                    endDateForNow.visible=false
                }
                forPowerText.text = forPowerText.text.replace(" Max ", "")

            }

        }

        CustomCheckBox {
            id: customCheckBox3
            x: 66
            y: 178
            onClickedSignal: {
                if(customCheckBox3.checkBoxOn.visible===true){
                    customCheckBox.checkBoxOn.visible=true
                    customCheckBox1.checkBoxOn.visible=true
                    customCheckBox2.checkBoxOn.visible=true
                    customCheckBox.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    customCheckBox1.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    customCheckBox2.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                rectangleArea1.visible = true;
                forPowerText.text=" Min  Avg  Max "
                beginDateForNow.visible=true
                endDateForNow.visible=true
            }
            onNonclickedSignal: {
                if(customCheckBox3.checkBoxOn.visible===false){
                    customCheckBox.checkBoxOn.visible=false
                    customCheckBox1.checkBoxOn.visible=false
                    customCheckBox2.checkBoxOn.visible=false
                    customCheckBox.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    customCheckBox1.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    customCheckBox2.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false) {
                        rectangleArea1.visible = false;
                    }
                    if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                        beginDateForNow.visible=false
                        endDateForNow.visible=false
                    }
                    forPowerText.text=""
                }
            }
        }


        CustomCheckBox {
            id: customCheckBox4
            x: 66
            y: 238
            onClickedSignal: {
                if(customCheckBox4.checkBoxOn.visible===true && customCheckBox5.checkBoxOn.visible===true && customCheckBox6.checkBoxOn.visible===true){
                    customCheckBox7.checkBoxOn.visible=true
                    customCheckBox7.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                forHarmonicText.text=forHarmonicText.text+" Min "
                rectangleArea2.visible = true;
                beginDateForNow.visible=true
                endDateForNow.visible=true
            }
            onNonclickedSignal: {
                customCheckBox7.checkBoxOn.visible=false
                customCheckBox7.checkBoxOFF.source="images/CheckBoxOFF.svg"
                if (customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false) {
                    rectangleArea2.visible = false;
                }
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                    beginDateForNow.visible=false
                    endDateForNow.visible=false
                }
                forHarmonicText.text = forHarmonicText.text.replace(" Min ", "")
            }
        }

        CustomCheckBox {
            id: customCheckBox5
            x: 66
            y: 273
            onClickedSignal: {
                if(customCheckBox4.checkBoxOn.visible===true && customCheckBox5.checkBoxOn.visible===true && customCheckBox6.checkBoxOn.visible===true){
                    customCheckBox7.checkBoxOn.visible=true
                    customCheckBox7.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                forHarmonicText.text=forHarmonicText.text+" Avg "
                rectangleArea2.visible = true;
                beginDateForNow.visible=true
                endDateForNow.visible=true
            }
            onNonclickedSignal: {
                customCheckBox7.checkBoxOn.visible=false
                customCheckBox7.checkBoxOFF.source="images/CheckBoxOFF.svg"
                if (customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false) {
                    rectangleArea2.visible = false;
                }
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                    beginDateForNow.visible=false
                    endDateForNow.visible=false
                }
                forHarmonicText.text = forHarmonicText.text.replace(" Avg ", "")
            }
        }

        CustomCheckBox {
            id: customCheckBox6
            x: 66
            y: 308
            onClickedSignal: {
                if(customCheckBox4.checkBoxOn.visible===true && customCheckBox5.checkBoxOn.visible===true && customCheckBox6.checkBoxOn.visible===true){
                    customCheckBox7.checkBoxOn.visible=true
                    customCheckBox7.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                forHarmonicText.text=forHarmonicText.text+" Max "
                rectangleArea2.visible = true;
                beginDateForNow.visible=true
                endDateForNow.visible=true
            }
            onNonclickedSignal: {
                customCheckBox7.checkBoxOn.visible=false
                customCheckBox7.checkBoxOFF.source="images/CheckBoxOFF.svg"
                if (customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false) {
                    rectangleArea2.visible = false;
                }
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                    beginDateForNow.visible=false
                    endDateForNow.visible=false
                }
                forHarmonicText.text = forHarmonicText.text.replace(" Max ", "")
            }
        }

        CustomCheckBox {
            id: customCheckBox7
            x: 66
            y: 343
            onClickedSignal: {
                if(customCheckBox7.checkBoxOn.visible===true){
                    customCheckBox4.checkBoxOn.visible=true
                    customCheckBox5.checkBoxOn.visible=true
                    customCheckBox6.checkBoxOn.visible=true
                    customCheckBox4.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    customCheckBox5.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    customCheckBox6.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                rectangleArea2.visible = true;
                forHarmonicText.text=" Min  Avg  Max "
                beginDateForNow.visible=true
                endDateForNow.visible=true
            }
            onNonclickedSignal: {
                if(customCheckBox7.checkBoxOn.visible===false){
                    customCheckBox4.checkBoxOn.visible=false
                    customCheckBox5.checkBoxOn.visible=false
                    customCheckBox6.checkBoxOn.visible=false
                    customCheckBox4.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    customCheckBox5.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    customCheckBox6.checkBoxOFF.source="images/CheckBoxOFF.svg"
                }
                if (customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false) {
                    rectangleArea2.visible = false;
                }
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                    beginDateForNow.visible=false
                    endDateForNow.visible=false
                }
                forHarmonicText.text=""
            }
        }


        CustomCheckBox {
            id: customCheckBox8
            x: 66
            y: 404
            onClickedSignal: {
                if(customCheckBox8.checkBoxOn.visible===true && customCheckBox9.checkBoxOn.visible===true && customCheckBox10.checkBoxOn.visible===true){
                    customCheckBox11.checkBoxOn.visible=true
                    customCheckBox11.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                forHarmonicText1.text=forHarmonicText1.text+" Min "
                rectangleArea3.visible = true;
                beginDateForNow.visible=true
                endDateForNow.visible=true
            }
            onNonclickedSignal: {
                customCheckBox11.checkBoxOn.visible=false
                customCheckBox11.checkBoxOFF.source="images/CheckBoxOFF.svg"
                if (customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false) {
                    rectangleArea3.visible = false;
                }
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                    beginDateForNow.visible=false
                    endDateForNow.visible=false
                }
                forHarmonicText1.text = forHarmonicText1.text.replace(" Min ", "")
            }
        }

        CustomCheckBox {
            id: customCheckBox9
            x: 66
            y: 439
            onClickedSignal: {
                if(customCheckBox8.checkBoxOn.visible===true && customCheckBox9.checkBoxOn.visible===true && customCheckBox10.checkBoxOn.visible===true){
                    customCheckBox11.checkBoxOn.visible=true
                    customCheckBox11.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                forHarmonicText1.text=forHarmonicText1.text+" Avg "
                rectangleArea3.visible = true;
                beginDateForNow.visible=true
                endDateForNow.visible=true
            }
            onNonclickedSignal: {
                customCheckBox11.checkBoxOn.visible=false
                customCheckBox11.checkBoxOFF.source="images/CheckBoxOFF.svg"
                if (customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false) {
                    rectangleArea3.visible = false;
                }
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                    beginDateForNow.visible=false
                    endDateForNow.visible=false
                }
                forHarmonicText1.text = forHarmonicText1.text.replace(" Avg ", "")
            }
        }

        CustomCheckBox {
            id: customCheckBox10
            x: 66
            y: 474
            onClickedSignal: {
                if(customCheckBox8.checkBoxOn.visible===true && customCheckBox9.checkBoxOn.visible===true && customCheckBox10.checkBoxOn.visible===true){
                    customCheckBox11.checkBoxOn.visible=true
                    customCheckBox11.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                forHarmonicText1.text=forHarmonicText1.text+" Max "
                rectangleArea3.visible = true;
                beginDateForNow.visible=true
                endDateForNow.visible=true
            }
            onNonclickedSignal: {
                customCheckBox11.checkBoxOn.visible=false
                customCheckBox11.checkBoxOFF.source="images/CheckBoxOFF.svg"
                if (customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false) {
                    rectangleArea3.visible = false;
                }
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                    beginDateForNow.visible=false
                    endDateForNow.visible=false
                }
                forHarmonicText1.text = forHarmonicText1.text.replace(" Max ", "")
            }
        }

        CustomCheckBox {
            id: customCheckBox11
            x: 66
            y: 509
            onClickedSignal: {
                if(customCheckBox11.checkBoxOn.visible===true){
                    customCheckBox8.checkBoxOn.visible=true
                    customCheckBox9.checkBoxOn.visible=true
                    customCheckBox10.checkBoxOn.visible=true
                    customCheckBox8.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    customCheckBox9.checkBoxOFF.source="images/CheckBoxONBG.svg"
                    customCheckBox10.checkBoxOFF.source="images/CheckBoxONBG.svg"
                }
                rectangleArea3.visible = true;
                forHarmonicText1.text = " Min  Avg  Max "
                //                beginDateForNow.visible=true
                endDateForNow.visible=true
            }
            onNonclickedSignal: {
                if(customCheckBox11.checkBoxOn.visible===false){
                    customCheckBox8.checkBoxOn.visible=false
                    customCheckBox9.checkBoxOn.visible=false
                    customCheckBox10.checkBoxOn.visible=false
                    customCheckBox8.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    customCheckBox9.checkBoxOFF.source="images/CheckBoxOFF.svg"
                    customCheckBox10.checkBoxOFF.source="images/CheckBoxOFF.svg"
                }
                if (customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false) {
                    rectangleArea3.visible = false;
                }
                if (customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false && customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false && customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false ) {
                    //                    beginDateForNow.visible=false
                    endDateForNow.visible=false
                }
                forHarmonicText1.text = ""
            }
        }
    }










    Text {
        x: 22
        y: 1
        width: 255
        height: 44
        color: "#284863"
        text: qsTr("RECORDING TYPE")
        font.letterSpacing: -2
        font.pixelSize: 18
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Bold"
        font.family: "Akshar"
    }
    Rectangle{
        x: 263
        y: 8
        width: 62
        height: 38
        color: "#00ffffff"

        Image {
            id: on_button_fill110
            x: 5
            y: 8
            width: 50/2
            visible: true
            source: "images/On_button_fill.svg"
            fillMode: Image.PreserveAspectFit
            antialiasing: false
        }

        Image {
            id: on_button_fill112
            x: 35
            y: 8
            width: 50/2
            source: "images/On_button_fill-2.svg"
            fillMode: Image.PreserveAspectFit
            antialiasing: true
        }

        Image {
            id: on_button_fill111
            x: 35
            y: 8
            width: 50/2
            visible: false
            source: "images/On_button_fill-1.svg"
            layer.enabled: true
            layer.effect: ColorOverlayEffect {
                id: colorOverlay3
                color: "#d800abff"
            }
            fillMode: Image.PreserveAspectFit
            antialiasing: true
        }

        MouseArea {
            id:pst
            x: -13
            y: 0
            width: 86
            height: 38
            onClicked: {
                if(on_button_fill110.visible===true){
                    on_button_fill110.visible=false
                    on_button_fill111.visible=true
                    on_button_fill112.x=5
                    type.text="Now"
                    middleForCalendar.visible=false


                    middleForNow.visible=true
                    recordWithCalendarImage.layer.enabled=true
                    recordNowImage.layer.enabled=false
                    kerem.enabled=false
                    recordForNow.enabled=true
                    //                loggerSettingsLeft.layer.enabled=true
                    //                loggerSettingsLeft.enabled=false

                }
                else{
                    on_button_fill110.visible=true
                    on_button_fill111.visible=false
                    on_button_fill112.x=35
                    type.text="With Calendar"
                    middleForCalendar.visible=true
                    middleForNow.visible=false
                    recordWithCalendarImage.layer.enabled=false
                    recordNowImage.layer.enabled=true
                    kerem.enabled=true
                    recordForNow.enabled=false
                    //                loggerSettingsLeft.layer.enabled=false
                    //                loggerSettingsLeft.enabled=true
                }
            }
        }

    }





    Rectangle {
        id: middleForNow
        x: 355
        y: 0
        width: 552
        height: 728
        visible: false
        color: "#ffffff"


                Rectangle {
                    id: mainForm
                    x:35
                    y:50
                    height: cellSize * 12
                    width: cellSize * 9.6
                    property double mm: 5
                    property double cellSize: mm *10
                    property int fontSizePx: cellSize * 0.54
                    property var date: new Date(calendar.currentYear, calendar.currentMonth, calendar.currentDay);
                    clip: true
            //        signal ok
            //        signal cancel

                    QtObject {
                        id: palette
                        property color primary: "#217EFD"
                        property color primary_dark: "#217EFD"
                        property color primary_light: "#B2EBF2"
                        property color accent: "#FF5722"
                        property color primary_text: "#212121"
                        property color secondary_text: "#757575"
                        property color icons: "#FFFFFF"
                        property color divider: "#BDBDBD"
                    }

                    Rectangle {
                        id: titleOfDate
                        anchors {
                            top: parent.top
                            horizontalCenter: parent.horizontalCenter
                        }
                        height: 2.5 * mainForm.cellSize
                        width: parent.width
                        color:"#217EFD"
                        z: 2
                        Rectangle {
                            id: selectedYear
                            anchors {
                                top: parent.top
                                left: parent.left
                                right: parent.right
                            }
                            height: mainForm.cellSize * 1
                            color: parent.color
                            Text {
                                id: yearTitle
                                anchors.fill: parent
                                leftPadding: mainForm.cellSize * 0.5
                                topPadding: mainForm.cellSize * 0.5
                                horizontalAlignment: Text.AlignLeft
                                verticalAlignment: Text.AlignVCenter
                                font.pixelSize: mainForm.fontSizePx * 1.7
                                opacity: yearsList.visible ? 1 : 0.7
                                color: "white"
                                text: calendar.currentYear
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    yearsList.show();

                                }
                            }
                        }
                        Text {
                            id: selectedWeekDayMonth
                            anchors {
                                left: parent.left
                                right: parent.right
                                top: selectedYear.bottom
                                bottom: parent.bottom
                            }
                            leftPadding: mainForm.cellSize * 0.5
                            verticalAlignment: Text.AlignVCenter
                            font.pixelSize: height * 0.5
                            text: calendar.weekNames[calendar.week].slice(0, 3) + ", " + calendar.currentDay + " " + calendar.months[calendar.currentMonth].slice(0, 3)
                            color: "white"
                            opacity: yearsList.visible ? 0.7 : 1
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    yearsList.hide();

                                }
                            }
                        }

                    }

                    ListView {
                        id: calendar
                        anchors {
                            top: titleOfDate.bottom
                            left: parent.left
                            right: parent.right
                            leftMargin: mainForm.cellSize * 0.1
                            rightMargin: mainForm.cellSize * 0.1
                        }
                        height: mainForm.cellSize * 8
                        visible: true
                        z: 1

                        snapMode: ListView.SnapToItem
                        orientation: ListView.Horizontal
                        spacing: mainForm.cellSize
                        model: CalendarModel {
                            id: calendarModel
        //                    from: new Date(new Date().getFullYear(), 0, 1);
        //                    to: new Date(new Date().getFullYear(), 11, 31);
                            from: new Date(2023, 0, 1);  // Start from January 1, 2023
                            to: new Date(2024, 11, 31);  // End at December 31, 2024

                            function  setYear(newYear) {
                                if (calendarModel.from.getFullYear() > newYear) {
                                    calendarModel.from = new Date(newYear, 0, 1);
                                    calendarModel.to = new Date(newYear, 11, 31);
                                } else {
                                    calendarModel.to = new Date(newYear, 11, 31);
                                    calendarModel.from = new Date(newYear, 0, 1);
                                }
                                calendar.currentYear = newYear;
                                calendar.goToLastPickedDate();
                                mainForm.setCurrentDate();
                            }
                        }

                        property int currentDay: new Date().getDate()
                        property int currentMonth: new Date().getMonth()
                        property int currentYear: new Date().getFullYear()
                        property int week: new Date().getDay()
                        property var months: ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
                        property var weekNames: ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

                        delegate: Rectangle {
                            id:backgroundColorForCalendar
                            height: mainForm.cellSize * 8.5 //6 - на строки, 1 на дни недели и 1.5 на подпись
                            width: mainForm.cellSize * 9


                            Rectangle {
                                id: monthYearTitle
                                anchors {
                                    top: parent.top
                                }
                                height: mainForm.cellSize * 1.3
                                width: parent.width

                                Text {
                                    anchors.centerIn: parent
                                    font.pixelSize: mainForm.fontSizePx * 1.2
                                    text: calendar.months[model.month] + " " + model.year;
                                }
                            }

                            DayOfWeekRow {
                                id: weekTitles
                                Layout.column: 1
                                locale: monthGrid.locale
                                anchors {
                                    top: monthYearTitle.bottom
                                }
                                height: mainForm.cellSize
                                width: parent.width
                                delegate: Text {
                                    text: model.shortName
                                    horizontalAlignment: Text.AlignHCenter
                                    verticalAlignment: Text.AlignVCenter
                                    font.pixelSize: mainForm.fontSizePx
                                }
                            }




                            MonthGrid {
                                id: monthGrid
                                month: model.month
                                year: model.year
                                spacing: 0
                                anchors {
                                    top: weekTitles.bottom
                                }
                                width: mainForm.cellSize * 9
                                height: mainForm.cellSize * 6

                                locale: Qt.locale("en_US")
                                delegate: Rectangle {
                                    height: mainForm.cellSize
                                    width: mainForm.cellSize
                                    radius: height * 0.5
        //                            property bool isBetweenBeginAndEndDates: {
        //                                   var currentDate = new Date(calendar.currentYear, calendar.currentMonth, model.day);
        //                                   return currentDate >= beginDateForNow.date && currentDate <= endDateForNow.date;
        //                               }
                                    property bool isDayInMonth: model.month === monthGrid.month

                                         property bool isInRange: isDayInMonth && isDateInRange(model.date, parseDate(beginDateForNow.text), parseDate(endDateForNow.text))

                                    property bool highlighted: enabled && model.day === calendar.currentDay && model.month === calendar.currentMonth
                                    enabled: model.month === monthGrid.month



        //                            color: enabled && highlighted ? "#217EFD": "white"


        //                            function isBetweenBeginAndEndDates() {
        //                                 var beginDay = parseInt(beginDateForNow.text);
        //                                 var endDay = parseInt(endDateForNow.text);
        //                                 var currentDay = model.day;

        //                                 return currentDay >= beginDay && currentDay <= endDay;
        //                             }

        //                             color: isBetweenBeginAndEndDates() ? "#284863" : (enabled && highlighted ? "#217EFD" : "white")






        //                            property bool isInRange: isDateInRange(model.date, new Date(2023, 9, 20), new Date(2024, 0, 5))

                                          color: isInRange ? "#217efd" : "#ffffff"


        //                            function isBetweenBeginAndEndDates() {
        //                                 var beginDateParts = beginDateForNow.text.split(".");
        //                                 var endDateParts = endDateForNow.text.split(".");
        //                                 var currentDay = model.day;

        //                                 // Ayrıştırılan parçaları kullanarak Date nesnesi oluştur
        //                                 var beginDate = new Date(beginDateParts[2], beginDateParts[1] - 1, beginDateParts[0]);
        //                                 var endDate = new Date(endDateParts[2], endDateParts[1] - 1, endDateParts[0]);
        //                                 var currentDate = new Date(calendar.currentYear, calendar.currentMonth, currentDay);

        //                                 // Tarih karşılaştırmasını gerçekleştir
        //                                 return currentDate >= beginDate && currentDate <= endDate;
        //                             }
        //                             color: isBetweenBeginAndEndDates() ? "#284863" :  "white"



                                    Text {
                                        anchors.centerIn: parent
                                        text: model.day
                                        font.pixelSize: mainForm.fontSizePx
        //                                scale: highlighted ? 1.25 : 1
                                        Behavior on scale { NumberAnimation { duration: 150 } }
                                        visible: parent.enabled
        //                                color: parent.highlighted ? "white" : "black"

                                        color:"#000000"
                                    }
        //                            MouseArea {
        //                                anchors.fill: parent
        //                                onClicked: {
        //                                    calendar.currentDay = model.date.getDate();
        //                                    calendar.currentMonth = model.date.getMonth();
        //                                    calendar.week = model.date.getDay();
        //                                    calendar.currentYear = model.date.getFullYear();
        //                                    mainForm.setCurrentDate();
        ////                                    startTime1.text=calendar.weekNames[calendar.week].slice(0, 3) + ", " + calendar.currentDay + " " + calendar.months[calendar.currentMonth].slice(0, 3) + " - 00:24:10:400"
        ////                                    endTime1.text=calendar.weekNames[calendar.week].slice(0, 3) + ", " + calendar.currentDay + " " + calendar.months[calendar.currentMonth].slice(0, 3) + " - 23:24:10:400"
        ////                                    startTime2.text=calendar.weekNames[calendar.week].slice(0, 3) + ", " + calendar.currentDay + " " + calendar.months[calendar.currentMonth].slice(0, 3) + " - 00:24:10:400"
        ////                                    endTime2.text=calendar.weekNames[calendar.week].slice(0, 3) + ", " + calendar.currentDay + " " + calendar.months[calendar.currentMonth].slice(0, 3) + " - 23:24:10:400"

        //                                }
        //                            }
                                }
                            }






                            function parseDate(dateString) {
                                var dateParts = dateString.split(".");
                                return new Date(dateParts[2], dateParts[1] - 1, dateParts[0]);
                            }

                            function isDateInRange(currentDate, startDate, endDate) {
                                return currentDate >= startDate && currentDate <= endDate;
                            }
                        }


                        Component.onCompleted: goToLastPickedDate()
                        function goToLastPickedDate() {
                            positionViewAtIndex(calendar.currentMonth, ListView.SnapToItem)
                        }
                    }

                    ListView {
                        id: yearsList
                        anchors.fill: calendar
                        orientation: ListView.Vertical
                        visible: false
                        z: calendar.z

                        property int currentYear
        //                property int startYear: 1940
        //                property int endYear : new Date().getFullYear();

                        property int startYear: 2023  // Start year for the list
                        property int endYear: 2026    // End year for the list

                        model: ListModel {
                            id: yearsModel
                        }

                        delegate: Rectangle {
                            width: parent.width
                            height: mainForm.cellSize * 1.5
                            Text {
                                anchors.centerIn: parent
                                font.pixelSize: mainForm.fontSizePx * 1.5
                                text: name
                                scale: index === yearsList.currentYear - yearsList.startYear ? 1.5 : 1
                                color: palette.primary_dark
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    calendarModel.setYear(yearsList.startYear + index);
                                    yearsList.hide();
                                }
                            }
                        }

                        Component.onCompleted: {
                            for (var year = startYear; year <= endYear; year ++)
                                yearsModel.append({name: year});
                        }
                        function show() {
                            visible = true;
                            calendar.visible = false
                            currentYear = calendar.currentYear
                            yearsList.positionViewAtIndex(currentYear - startYear, ListView.SnapToItem);
                        }
                        function hide() {
                            visible = false;
                            calendar.visible = true;
                        }
                    }

                    Rectangle {
                        height: mainForm.cellSize * 1.5
                        anchors {
                            top: calendar.bottom
                            right: parent.right
                            rightMargin: mainForm.cellSize * 0.5
                        }
                        z: titleOfDate.z
                        color: "black"
                        Row {
                            layoutDirection: "RightToLeft"
                            anchors {
                                right: parent.right
                            }
                            height: parent.height

            //                Rectangle {
            //                    id: okBtn
            //                    height: parent.height
            //                    width: okBtnText.contentWidth + mainForm.cellSize
            //                    Text {
            //                        id: okBtnText
            //                        anchors.centerIn: parent
            //                        font.pixelSize: mainForm.fontSizePx * 1.8
            //                        color: palette.primary_dark
            //                        text: "OK"
            //                    }
            //                    MouseArea {
            //                        anchors.fill: parent
            //                        onClicked: {
            //                            mainForm.ok();
            //                        }
            //                    }
            //                }
            //                Rectangle {
            //                    id: cancelBtn
            //                    height: parent.height
            //                    width: cancelBtnText.contentWidth + mainForm.cellSize
            //                    Text {
            //                        id: cancelBtnText
            //                        anchors.centerIn: parent
            //                        font.pixelSize: mainForm.fontSizePx * 1.8
            //                        color: palette.primary_dark
            //                        text: "CANCEL"
            //                    }
            //                    MouseArea {
            //                        anchors.fill: parent
            //                        onClicked: {
            //                            mainForm.cancel();
            //                        }
            //                    }
            //                }
                        }
                    }

                    function setCurrentDate() {
                        mainForm.date = new Date(calendar.currentYear, calendar.currentMonth, calendar.currentDay);
                    }

                }

















//        //        Rectangle {
//        //            id: rectangleTotalArea
//        //            x: 110
//        //            y: 149
//        //            width:baseWidth + checkBoxWidthIncrement
//        //            height: 92
//        //            gradient: Gradient {
//        //                orientation: Gradient.Horizontal
//        //                GradientStop {
//        //                    position: 0
//        //                    color: "#6090ec"
//        //                }

//        //                GradientStop {
//        //                    position: 1
//        //                    color: "#2042bf"
//        //                }
//        //            }
//        //        }

//        //        Image {
//        //            id: leftBottomChamp
//        //            x: 8
//        //            width: 96
//        //            visible:rectangleArea1.visible
//        //            anchors.right: rectangleArea1.left
//        //            anchors.top: rectangleArea1.bottom
//        //            source: "images/LeftBottomChamp.svg"
//        //            anchors.topMargin: 0
//        //            anchors.rightMargin: 0
//        //            antialiasing: true
//        //            fillMode: Image.PreserveAspectFit
//        //        }

//        //        Image {
//        //            id: leftTopChamp
//        //            x: 8
//        //            y: 133
//        //            width: 96
//        //            visible: beginDateForNow.visible
//        //            anchors.right: rectangleTotalArea.left
//        //            anchors.bottom: rectangleTotalArea.top
//        //            source: "images/LeftTopChamp.svg"
//        //            anchors.rightMargin: 0
//        //            anchors.bottomMargin: 0
//        //            antialiasing: true
//        //            fillMode: Image.PreserveAspectFit
//        //        }

//        //        Image {
//        //            id: rightBottomChamp
//        //            width: 96
//        //            visible: rectangleArea3.visible
//        //            anchors.left: rectangleArea3.right
//        //            anchors.top: rectangleArea3.bottom
//        //            source: "images/RightBottomChamp.svg"
//        //            anchors.topMargin: 0
//        //            anchors.leftMargin: 0
//        //            antialiasing: true
//        //            fillMode: Image.PreserveAspectFit
//        //        }

//        //        Image {
//        //            id: rightTopChamp
//        //            y: 134
//        //            width: 96
//        //            visible: endDateForNow.visible
//        //            anchors.left: rectangleTotalArea.right
//        //            anchors.bottom: rectangleTotalArea.top
//        //            source: "images/RightTopChamp.svg"
//        //            anchors.bottomMargin: 0
//        //            anchors.leftMargin: 0
//        //            antialiasing: true
//        //            fillMode: Image.PreserveAspectFit
//        //        }

        Text {
            id:beginDateForNow
            x: 1000
            y: 46
            width: 78
            height: 25
            color: "#284863"
            //            text: qsTr("04.01.2024")
            text: forclock.text14.text
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Akshar"
        }
        ForQtR01StartPage{
            id:forclock
            visible: false
        }

        Text {
            id: beginTimeForNow
            x: 1000
            y: 10
            width: 150
            height: 30
            color: "#284863"
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            text: forclock.text15.text
        }

        Text {
            id:endDateForNow
            x: 1142
            y: 343
            width: 78
            height: 25
            color: "#284863"
            text:"15.10.2024"
            //                if(comboBox1.displayText==="Day"){
            //                     (parseInt(beginDateForNow.text.split(".")[0]) + spinBox.value).toString() + "." +
            //                             (parseInt(beginDateForNow.text.split(".")[1])).toString()+ "." +
            //                             (parseInt(beginDateForNow.text.split(".")[2])).toString()
            //                 }
            //                 else {
            //                     beginDateForNow.text
            //                 }
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Akshar"
        }

        Text {
            id:endTimeForNow
            x: 1142
            y: 370
            width: 78
            height: 25
            visible: endDateForNow.visible
            color: "#284863"
            text:if(comboBox1.displayText==="Hour"){
                     (parseInt(beginTimeForNow.text.split(":")[0]) + spinBox.value) + ":" +
                             ( (beginTimeForNow.text.split(":")[1]))

                 }
                 else if(comboBox1.displayText==="Min."){
                     ( (beginTimeForNow.text.split(":")[0])) + ":" +
                             (parseInt(beginTimeForNow.text.split(":")[1])+ spinBox.value)

                 }
                 else{
                     beginTimeForNow.text
                 }
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Regular"
            font.family: "Akshar"
        }

        //        Rectangle {
        //            id: middleBottomChamp
        //            width: 75
        //            height: 2
        //            visible: rectangleArea2.visible
        //            color: "#617284"
        //            anchors.top: rectangleArea2.bottom
        //            anchors.topMargin: 71
        //            anchors.horizontalCenterOffset: 0
        //            anchors.horizontalCenter: rectangleArea2.horizontalCenter
        //        }

        Rectangle {
            id: rectangle11
            x: -346
            y: 608
            width: 326
            height: 55
            color: "#f7f8fa"


            Text {
                id:chosenText21
                width: 147
                height: 55
                color: "#284863"
                text: "Time Interval"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                font.letterSpacing: -2
                font.pixelSize: 16
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                anchors.verticalCenterOffset: -59
                font.styleName: "Bold"
                font.family: "Akshar"
                anchors.leftMargin: 8
            }

            //            ComboBox {

            //                x: 255
            //                y: 8
            //                width: 70
            //                height: 40
            //                font.pixelSize: 14
            //                model: ["MB", "GB" ]
            //                currentIndex: 0
            //            }


            Text {
                id: comboBox
                x: 263
                y: -1
                width: 73
                height: 57
                color: "#284863"
                text: qsTr("MB")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }


            SpinBox {
                id: spinBox2
                x: 155
                y: 8
                width: 120
                height: 40
                editable: true
                value: 100

                //                    if(comboBox1.displayText==="150 cycle" ){
                //                           (spinBox.value*8000)/20
                //                       }

                //                       else if(comboBox1.displayText==="Hour"){
                //                           (spinBox.value*8)/23
                //                       }
                //                       else if(comboBox1.displayText==="Day"){
                //                           (spinBox.value*8)/30
                //                       }


                antialiasing: true
                to: 8192

                //                    if(comboBox1.displayText==="Min."){
                //                        8000
                //                    }
                //                    else if(comboBox1.displayText==="Hour"){
                //                        8
                //                    }
                //                    else if(comboBox1.displayText==="Day"){
                //                        8
                //                    }
                from: 1
                onValueChanged: {
                    // spinBox2'nin değeri değiştiğinde tetiklenir
                    var totalMinutes = spinBox2.value;
                    var daysToAdd = Math.floor(totalMinutes / (24 * 60)); // Toplam dakikaları günlere çevir
                    totalMinutes = totalMinutes % (24 * 60); // Günlük dakikaları al
                    var hoursToAdd = Math.floor(totalMinutes / 60); // Saatlik dakikaları saate çevir
                    var minutesToAdd = totalMinutes % 60; // Saat dışındaki dakikaları al


                    var formattedHours = hoursToAdd < 10 ? "0" + hoursToAdd : hoursToAdd;
                    var formattedMinutes = minutesToAdd < 10 ? "0" + minutesToAdd : minutesToAdd;
                    var formattedTime = qsTr("%1:%2").arg(formattedHours).arg(formattedMinutes);
                    if(comboBox1.displayText==="150 cycle" || comboBox1.displayText==="1 second" || comboBox1.displayText==="3 second" || comboBox1.displayText==="15 second"){
                        minutesToAdd=spinBox2.value
                        totalMinutes = totalMinutes % (24 * 60); // Günlük dakikaları al
                        minutesToAdd = totalMinutes % 60; // Saat dışındaki dakikaları al

                        endTimeForNow.text = formattedTime;
                    }
                    else if(comboBox1.displayText==="30 second" || comboBox1.displayText==="1 minute" || comboBox1.displayText==="5 minute" || comboBox1.displayText==="10 minute"){
                        hoursToAdd=spinBox2.value
                        //                        totalMinutes = hoursToAdd % (24); // Günlük dakikaları al
                        //                        hoursToAdd = Math.floor(totalMinutes); // Saatlik dakikaları saate çevir
                        if(hoursToAdd < 24){

                            // Saat ve dakika değerlerini formatla
                            formattedHours = hoursToAdd < 10 ? "0" + hoursToAdd : hoursToAdd;
                            formattedMinutes = "00"; // Dakika değeri sabit olarak 00

                            formattedTime = qsTr("%1:%2").arg(formattedHours).arg(formattedMinutes);

                            // beginTimeForNow text'ini güncelle
                            endTimeForNow.text = formattedTime;
                        }

                        else  if (hoursToAdd >= 24) {
                            daysToAdd = Math.floor(hoursToAdd / 24);
                            hoursToAdd = hoursToAdd % 24;

                            // Günleri ve saatleri ekleyerek tarihi güncelle
                            var currentDate = new Date();
                            currentDate.setDate(currentDate.getDate() + daysToAdd);
                            currentDate.setMinutes(0); // Dakikayı sıfırla
                            currentDate.setHours(0); // Saati sıfırla
                            currentDate.setHours(currentDate.getHours() + hoursToAdd);

                            // Saat ve dakika değerlerini formatla
                            formattedHours = currentDate.getHours() < 10 ? "0" + currentDate.getHours() : currentDate.getHours();
                            formattedMinutes = "00"; // Dakika değeri sabit olarak 00

                            formattedTime = qsTr("%1:%2").arg(formattedHours).arg(formattedMinutes);

                            // beginTimeForNow text'ini güncelle
                            endTimeForNow.text = formattedTime;
                        }

                    }
                    else if(comboBox1.displayText==="15 minute" || comboBox1.displayText==="30 minute" || comboBox1.displayText==="1 hour" || comboBox1.displayText==="2 hour")
                    {
                        daysToAdd=spinBox2.value
                    }

                    // Saat ve dakika değerlerini formatla


                    // beginTimeForNow text'ini güncelle
                    //                        beginTimeForNow.text = formattedTime;

                    // beginDateForNow text'ini güncelle
                    currentDate = Qt.formatDateTime(new Date(), "dd.MM.yyyy");
                    var currentDateObject = new Date(parseInt(currentDate.split(".")[2]), parseInt(currentDate.split(".")[1]) - 1, parseInt(currentDate.split(".")[0]));

                    currentDateObject.setDate(currentDateObject.getDate() + daysToAdd);
                    currentDateObject.setHours(currentDateObject.getHours() + hoursToAdd);
                    currentDateObject.setMinutes(currentDateObject.getMinutes() + minutesToAdd);

                    var formattedDate = Qt.formatDateTime(currentDateObject, "dd.MM.yyyy");
                    endDateForNow.text = qsTr(formattedDate);


                    //                    backgroundColorForCalendar.color=isBetweenBeginAndEndDates ? "#284863" : "white"
                }
                //                property bool isBetweenBeginAndEndDates: {
                //                     var currentDate = new Date(calendar.currentYear, calendar.currentMonth, model.day);
                //                     return currentDate >= beginDateForNow.date && currentDate <= endDateForNow.date;
                //                 }




            }



            Text {
                id:chosenText22
                width: 144
                height: 55
                color: "#284863"
                text: "Logger Memory Space"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                font.letterSpacing: -2
                font.pixelSize: 16
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
                anchors.leftMargin: 8
                MouseArea {
                    anchors.fill: parent
                    anchors.topMargin: -2
                    anchors.bottomMargin: -2
                    anchors.leftMargin: -5
                    onClicked: {

                        if(okUp22.rotation===180)
                        {
                            okUp22.rotation=0
                            forLoggerChosing.visible=true

                        }
                        else
                        {
                            okUp22.rotation=180
                            forLoggerChosing.visible=false

                        }
                    }
                    anchors.rightMargin: 0
                }
            }

            Image {
                id: okUp22
                x: 135
                y: 24
                width: 14
                source: "images/okUp22.svg"
                rotation: 180
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id: rectangle12
            x: -346
            y: 549
            width: 326
            height: 55
            color: "#f7f8fa"

            Text {
                width: 147
                height: 55
                color: "#284863"
                text: "Time Interval"
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                font.letterSpacing: -2
                font.pixelSize: 16
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                anchors.leftMargin: 8
                font.family: "Akshar"
            }
        }

     }







    Rectangle {
        id: middleForCalendar
        width: 1280
        height: 728
        visible: true
        color: "#00ffffff"


        ButtonGroup {
            id: radioButtonGroup
        }


        Rectangle {
            id: rectangle3
            x: 355
            y: 1
            width: 570
            height: 728
            color: "#f7f8fa"

        }



        Image {
            id: loggerSettingsMiddle1
            x: 355
            y: 0
            width: 1104/2
            source: "images/LoggerSettingsMiddle1.svg"
            anchors.horizontalCenterOffset: -9
            anchors.horizontalCenter: rectangle3.horizontalCenter
            fillMode: Image.PreserveAspectFit


        }

        Rectangle {
            id: rectangleMonday
            x: 425
            y: 51
            width: 68
            height: 671
            visible: true
            color: "#00ffffff"
            RangeSlider {
                id:rangeSliderMonday
                x: -301
                y: 305
                width: 670
                height: 60
                rotation: 90
                background: Rectangle {
                    width: parent.width
                    height: 4
                    color: "#00d3d3d3"
                    radius: 2
                    Rectangle {
                        x: rangeSliderMonday.first.value * parent.width
                        width: (rangeSliderMonday.second.value - rangeSliderMonday.first.value) * parent.width
                        height: rangeSliderMonday.height
                        color: "#217efd"
                        radius: 2
                    }
                }
                first.value: 0.25
                first.handle: Item {
                    implicitHeight: 0
                    implicitWidth: 0
                }
                second.handle: Item {
                    implicitHeight: 0
                    implicitWidth: 0
                }
                second.value: 0.75
            }

            Text {
                id:mondayText1
                x: 8
                y: rangeSliderMonday.first.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime(rangeSliderMonday.first.value)
                font.pixelSize: 20
            }

            Text {
                id:mondayText2
                x: 8
                y: rangeSliderMonday.second.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime(rangeSliderMonday.second.value)
                font.pixelSize: 20
            }
        }




        Rectangle {
            id: rectangleTuesday
            x: 494
            y: 51
            width: 68
            height: 671
            visible: false
            color: "#00ffffff"
            RangeSlider {
                id:rangeSliderTuesday
                x: -301
                y: 305
                width: 670
                height: 60
                rotation: 90
                background: Rectangle {
                    width: parent.width
                    height: 4
                    color: "#00d3d3d3"
                    radius: 2
                    Rectangle {
                        x: rangeSliderTuesday.first.value * parent.width
                        width: (rangeSliderTuesday.second.value - rangeSliderTuesday.first.value) * parent.width
                        height: rangeSliderTuesday.height
                        color: "#217efd"
                        radius: 2
                    }
                }
                first.value: 0.25
                first.handle: Item {
                    implicitHeight: 0
                    implicitWidth: 0
                }
                second.handle: Item {
                    implicitHeight: 0
                    implicitWidth: 0
                }
                second.value: 0.75
            }

            Text {
                id:tuesdayText1
                x: 8
                y: rangeSliderTuesday.first.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime(rangeSliderTuesday.first.value)
                font.pixelSize: 20
            }

            Text {
                id:tuesdayText2
                x: 8
                y: rangeSliderTuesday.second.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime(rangeSliderTuesday.second.value)
                font.pixelSize: 20
            }
        }




        Rectangle {
            id: rectangleWednesday
            x: 563
            y: 51
            width: 68
            height: 671
            visible: true
            color: "#00ffffff"
            RangeSlider {
                id: rangesliderWednesday
                x: -301
                y: 305
                width: 670
                height: 60
                rotation: 90
                first.value: 0.25
                second.handle: Item {
                    implicitWidth: 0
                    implicitHeight: 0
                }
                second.value: 0.75
                background: Rectangle {
                    width: parent.width
                    height: 4
                    color: "#00d3d3d3"
                    radius: 2
                    Rectangle {
                        x: rangesliderWednesday.first.value * parent.width
                        width: (rangesliderWednesday.second.value - rangesliderWednesday.first.value) * parent.width
                        height: rangesliderWednesday.height
                        color: "#217efd"
                        radius: 2
                    }
                }
                first.handle: Item {
                    implicitWidth: 0
                    implicitHeight: 0
                }
            }

            Text {
                id:wednesdayText1
                x: 8
                y: rangesliderWednesday.first.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime(rangesliderWednesday.first.value)
                font.pixelSize: 20
            }

            Text {
                id:wednesdayText2
                x: 8
                y: rangesliderWednesday.second.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime(rangesliderWednesday.second.value)
                font.pixelSize: 20
            }
        }



        Rectangle {
            id: rectangleThursday
            x: 632
            y: 51
            width: 68
            height: 671
            visible: false
            color: "#00ffffff"


            RangeSlider {
                id: rangeSliderThursday
                x: -301
                y: 305
                width: 670
                height: 60
                rotation: 90
                first.value: 0.25
                second.value: 0.75

                first.handle: Item {
                    implicitWidth: 0
                    implicitHeight: 0
                }

                second.handle: Item {
                    implicitWidth: 0
                    implicitHeight: 0
                }
                background: Rectangle {
                    width: parent.width
                    height: 4
                    color: "#00d3d3d3"
                    radius: 2

                    Rectangle {
                        width: (rangeSliderThursday.second.value - rangeSliderThursday.first.value) * parent.width
                        height: rangeSliderThursday.height
                        x: rangeSliderThursday.first.value * parent.width
                        color: "#217efd"
                        radius: 2

                    }
                }
            }
            Text {
                id:thursdayText1
                x: 8
                y: rangeSliderThursday.first.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                text: valueToTime(rangeSliderThursday.first.value)
                font.pixelSize: 20
                color: "black"
            }

            Text {
                id:thursdayText2
                x: 8
                y: rangeSliderThursday.second.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                text: valueToTime(rangeSliderThursday.second.value)
                font.pixelSize: 20
                color: "black"
            }
        }


        Rectangle {
            id: rectangleFriday
            x: 701
            y: 51
            width: 68
            height: 671
            visible: false
            color: "#00ffffff"
            RangeSlider {
                id:rangesliderFriday
                x: -301
                y: 305
                width: 670
                height: 60
                rotation: 90
                background: Rectangle {
                    width: parent.width
                    height: 4
                    color: "#00d3d3d3"
                    radius: 2
                    Rectangle {
                        x: rangesliderFriday.first.value * parent.width
                        width: (rangesliderFriday.second.value - rangesliderFriday.first.value) * parent.width
                        height: rangesliderFriday.height
                        color: "#217efd"
                        radius: 2
                    }
                }
                first.value: 0.25
                first.handle: Item {
                    implicitHeight: 0
                    implicitWidth: 0
                }
                second.handle: Item {
                    implicitHeight: 0
                    implicitWidth: 0
                }
                second.value: 0.75
            }

            Text {
                id:fridayText1
                x: 8
                y: rangesliderFriday.first.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime( rangesliderFriday.first.value)
                font.pixelSize: 20
            }

            Text {
                id:fridayText2
                x: 8
                y: rangesliderFriday.second.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime( rangesliderFriday.second.value)
                font.pixelSize: 20
            }
        }



        Rectangle {
            id: rectangleSaturday
            x: 770
            y: 51
            width: 68
            height: 671
            visible: false
            color: "#00ffffff"
            RangeSlider {
                id:rangeSliderSaturday
                x: -301
                y: 305
                width: 670
                height: 60
                rotation: 90
                background: Rectangle {
                    width: parent.width
                    height: 4
                    color: "#00d3d3d3"
                    radius: 2
                    Rectangle {
                        x: rangeSliderSaturday.first.value * parent.width
                        width: (rangeSliderSaturday.second.value - rangeSliderSaturday.first.value) * parent.width
                        height: rangeSliderSaturday.height
                        color: "#217efd"
                        radius: 2
                    }
                }
                first.value: 0.25
                first.handle: Item {
                    implicitHeight: 0
                    implicitWidth: 0
                }
                second.handle: Item {
                    implicitHeight: 0
                    implicitWidth: 0
                }
                second.value: 0.75
            }

            Text {
                id:saturdayText1
                x: 8
                y: rangeSliderSaturday.first.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime( rangeSliderSaturday.first.value)
                font.pixelSize: 20
            }

            Text {
                id:saturdayText2
                x: 8
                y: rangeSliderSaturday.second.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime( rangeSliderSaturday.second.value)
                font.pixelSize: 20
            }
        }


        Rectangle {
            id: rectangleSunday
            x: 839
            y: 51
            width: 68
            height: 671
            visible: true
            color: "#00ffffff"
            RangeSlider {
                id:rangeSliderSunday
                x: -301
                y: 305
                width: 670
                height: 60
                rotation: 90
                background: Rectangle {
                    width: parent.width
                    height: 4
                    color: "#00d3d3d3"
                    radius: 2
                    Rectangle {
                        x: rangeSliderSunday.first.value * parent.width
                        width: (rangeSliderSunday.second.value - rangeSliderSunday.first.value) * parent.width
                        height: rangeSliderSunday.height
                        color: "#217efd"
                        radius: 2
                    }
                }
                first.value: 0.25
                first.handle: Item {
                    implicitHeight: 0
                    implicitWidth: 0
                }
                second.handle: Item {
                    implicitHeight: 0
                    implicitWidth: 0
                }
                second.value: 0.75
            }

            Text {
                id:sundayText1
                x: 8
                y: rangeSliderSunday.first.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime( rangeSliderSunday.first.value)
                font.pixelSize: 20
            }

            Text {
                id:sundayText2
                x: 8
                y: rangeSliderSunday.second.value*650
                function valueToTime(value) {
                    var totalMinutes = Math.round(value * 1439);
                    var hours = Math.floor(totalMinutes / 60);
                    var minutes = totalMinutes % 60;
                    return (hours < 10 ? "0" + hours : hours) + ":" + (minutes < 10 ? "0" + minutes : minutes);
                }
                color: "#000000"
                text: valueToTime( rangeSliderSunday.second.value)
                font.pixelSize: 20
            }
        }


        MouseArea {
            id: mouseArea
            x: 425
            y: 1
            width: 68
            height: 50
            onClicked: {
                if(rectangleMonday.visible===true){
                    rectangleMonday.visible=false
                    rectangle4.color="#617284"
//                    header1.text = header1.text.replace("Monday ", "")
                    textforMonday.visible=false
                }
                else{
                    rectangleMonday.visible=true
                    rectangle4.color="#217EFD"
//                    header1.text+="Monday "
                    textforMonday.visible=true
                }
            }
        }





        MouseArea {
            id: mouseArea1
            x: 494
            y: 1
            width: 68
            height: 50
            onClicked: {
                if(rectangleTuesday.visible===true){
                    rectangleTuesday.visible=false
                    rectangle5.color="#617284"
//                    header1.text = header1.text.replace("Tuesday ", "")
                    textforTuesday.visible=false
                }
                else{
                    rectangleTuesday.visible=true
                    rectangle5.color="#217EFD"
//                    header1.text+="Tuesday "
                    textforTuesday.visible=true
                }
            }

        }







        MouseArea {
            id: mouseArea2
            x: 563
            y: 0
            width: 68
            height: 50
            onClicked: {
                if(rectangleWednesday.visible===true){
                    rectangleWednesday.visible=false
                    rectangle6.color="#617284"
//                    header1.text = header1.text.replace("Wednesday ", "")
                    textforWednesday.visible=false
                }
                else{
                    rectangleWednesday.visible=true
                    rectangle6.color="#217EFD"
//                    header1.text+="Wednesday "
                    textforWednesday.visible=true
                }
            }
        }

        MouseArea {
            id: mouseArea3
            x: 632
            y: 0
            width: 68
            height: 50
            onClicked: {
                if(rectangleThursday.visible===true){
                    rectangleThursday.visible=false
                    rectangle7.color="#617284"
//                    header1.text = header1.text.replace("Thursday ", "")
                    textforThursday.visible=false
                }
                else{
                    rectangleThursday.visible=true
                    rectangle7.color="#217EFD"
//                    header1.text+="Thursday "
                    textforThursday.visible=true
                }
            }
        }

        MouseArea {
            id: mouseArea4
            x: 701
            y: 0
            width: 68
            height: 50
            onClicked: {
                if(rectangleFriday.visible===true){
                    rectangleFriday.visible=false
                    rectangle8.color="#617284"
//                    header1.text = header1.text.replace("Friday ", "")
                    textforFriday.visible=false
                }
                else{
                    rectangleFriday.visible=true
                    rectangle8.color="#217EFD"
//                    header1.text+="Friday "
                    textforFriday.visible=true
                }
            }
        }




        MouseArea {
            id: mouseArea5
            x: 770
            y: 0
            width: 68
            height: 50
            onClicked: {
                if(rectangleSaturday.visible===true){
                    rectangleSaturday.visible=false
                    rectangle9.color="#617284"
//                    header1.text = header1.text.replace("Saturday ", "")
                    textforSaturday.visible=false
                }
                else{
                    rectangleSaturday.visible=true
                    rectangle9.color="#217EFD"
//                    header1.text+="Saturday "
                    textforSaturday.visible=true
                }
            }
        }




        MouseArea {
            id: mouseArea6
            x: 839
            y: 1
            width: 68
            height: 50
            onClicked: {
                if(rectangleSunday.visible===true){
                    rectangleSunday.visible=false
                    rectangle10.color="#617284"
//                    header1.text = header1.text.replace("Sunday ", "")
                    textforSunday.visible=false
                }
                else{
                    rectangleSunday.visible=true
                    rectangle10.color="#217EFD"
//                    header1.text+="Sunday "
                    textforSunday.visible=true
                }
            }
        }

        Rectangle {
            id: rectangle10
            x: 838
            y: 0
            width: 69
            height: 50
            color: "#217EFD"
        }







        Rectangle {
            id: rectangle9
            x: 769
            y: 0
            width: 69
            height: 50
            color: "#617284"
        }

        Rectangle {
            id: rectangle8
            x: 700
            y: 0
            width: 69
            height: 50
            color: "#617284"
        }

        Rectangle {
            id: rectangle7
            x: 631
            y: 0
            width: 69
            height: 50
            color: "#617284"
        }

        Rectangle {
            id: rectangle6
            x: 562
            y: 0
            width: 69
            height: 50
            color: "#217EFD"
        }

        Rectangle {
            id: rectangle5
            x: 493
            y: 0
            width: 69
            height: 50
            color: "#617284"
        }

        Rectangle {
            id: rectangle4
            x: 424
            y: 0
            width: 69
            height: 50
            color: "#217EFD"
        }






        Image {
            id: sunday
            x: 852
            y: 18
            width: 85/2
            antialiasing: true
            source: "images/Sunday.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: saturday
            x: 778
            y: 18
            width: 103/2
            antialiasing: true
            source: "images/Saturday.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: friday
            x: 718
            y: 18
            antialiasing: true
            width: 70/2
            source: "images/Friday.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: thursday
            x: 639
            y: 18
            width: 107/2
            source: "images/Thursday.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: wednesday
            x: 564
            y: 18
            width: 132/2
            source: "images/Wednesday.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: tuesday
            x: 505
            y: 18
            width: 94/2
            antialiasing: true
            source: "images/Tuesday.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: monday
            x: 437
            y: 18
            width: 89/2
            source: "images/Monday.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        SpinBox {
            id: spinBox1
            x: 164
            y: 616
            width: 120
            height: 40
            editable: true
            antialiasing: true
            to: 48
            from: 1

            onValueChanged: {
                var weeksToAdd = spinBox1.value; // Haftalık değeri al

                // spinBox1 değeri 7'den büyükse günleri, ayları ve yılları güncelle
                if (weeksToAdd >= 7) {
                    var daysToAdd = weeksToAdd *10;
                    var currentDate = new Date();

                    // Günleri ve tarihi ekleyerek tarihi güncelle
                    currentDate.setDate(currentDate.getDate() + daysToAdd);

                    // Saat ve dakika değerlerini formatla
                    var formattedHours = currentDate.getHours() < 10 ? "0" + currentDate.getHours() : currentDate.getHours();
                    var formattedMinutes = "00"; // Dakika değeri sabit olarak 00

                    var formattedTime = qsTr("%1:%2").arg(formattedHours).arg(formattedMinutes);

                    // beginTimeForNow text'ini güncelle
                    endTimeForNow.text = formattedTime;

                    // Tarihi formatla
                    var formattedDate = Qt.formatDateTime(currentDate, "dd.MM.yyyy");
                    endDateForNow.text = qsTr(formattedDate);
                } else {
                    // Günleri, ayları ve yılları güncellemeden sadece günleri güncelle
                    daysToAdd = weeksToAdd *10;
                    currentDate = new Date();

                    currentDate.setDate(currentDate.getDate() + daysToAdd);

                    // Saat ve dakika değerlerini formatla
                    formattedHours = currentDate.getHours() < 10 ? "0" + currentDate.getHours() : currentDate.getHours();
                    formattedMinutes = "00"; // Dakika değeri sabit olarak 00

                    formattedTime = qsTr("%1:%2").arg(formattedHours).arg(formattedMinutes);

                    // beginTimeForNow text'ini güncelle
                    endTimeForNow.text = formattedTime;

                    // Tarihi formatla
                    formattedDate = Qt.formatDateTime(currentDate, "dd.MM.yyyy");
                    endDateForNow.text = qsTr(formattedDate);
                }
            }
        }

        Text {
            x: 285
            y: 607
            width: 45
            height: 57
            color: "#284863"
            text: qsTr("Times")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }


    }




    Rectangle {
        id: rectangle
        x: 13
        y: 1
        width: 333
        height: 531
        visible: rectangle1.isDialogOpen
        color: "#ffffff"
    }

    Rectangle{
        id:forLoggerChosing
        x: 8
        y: 505
        width: 156
        height: 100
        visible: false


        ListView {
            id:listView2
            x: 0
            y:0
            width: parent.width
            height: parent.height
            visible: true
            spacing: 5
            delegate: Item {
                width: listView2.width
                height: 50
                Rectangle {
                    width: parent.width
                    height: 50
                    color: "#eff2f6"
                    Text {
                        color: "#284863"
                        text: model.name
                        wrapMode: Text.Wrap
                        width: 144
                        anchors.centerIn: parent
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {
                            chosenText22.text=model.name
                            if(chosenText22.text==="Logger Memory Space"){
                                if(comboBox1.displayText==="150 cycle" || comboBox1.displayText==="1 second" || comboBox1.displayText==="3 second" || comboBox1.displayText==="15 second" || comboBox1.displayText==="30 second"){
                                    comboBox.text="GB"
                                    spinBox2.to=8
                                }
                                else {
                                    comboBox.text="MB"
                                    spinBox2.to=8192
                                }
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                if(comboBox1.displayText==="150 cycle"){
                                    comboBox.text="Minute"
                                    spinBox2.to=15
                                }
                                else if(comboBox1.displayText==="1 second"){
                                    comboBox.text="Minute"
                                    spinBox2.to=30
                                }
                                else if(comboBox1.displayText==="3 second"){
                                    comboBox.text="Minute"
                                    spinBox2.to=90
                                }
                                else if(comboBox1.displayText==="15 second"){
                                    comboBox.text="Minute"
                                    spinBox2.to=450
                                }
                                else if(comboBox1.displayText==="30 second"){
                                    comboBox.text="Hour"
                                    spinBox2.to=15
                                }
                                else if(comboBox1.displayText==="1 minute"){
                                    comboBox.text="Hour"
                                    spinBox2.to=30
                                }
                                else if(comboBox1.displayText==="5 minute"){
                                    comboBox.text="Hour"
                                    spinBox2.to=150
                                }
                                else if(comboBox1.displayText==="10 minute" ){
                                    comboBox.text="Hour"
                                    spinBox2.to=300
                                }
                                else if(comboBox1.displayText==="15 minute" ){
                                    comboBox.text="Day"
                                    spinBox2.to=25
                                }
                                else if(comboBox1.displayText==="30 minute" ){
                                    comboBox.text="Day"
                                    spinBox2.to=50
                                }
                                else if(comboBox1.displayText==="1 hour" ){
                                    comboBox.text="Day"
                                    spinBox2.to=100
                                }
                                else if(comboBox1.displayText==="2 hour" ){
                                    comboBox.text="Day"
                                    spinBox2.to=200
                                }

                            }

                        }
                    }
                }
            }
            anchors.topMargin: 40
            model: ListModel {
                ListElement {
                    name: "Logger Record Time"
                }

                ListElement {
                    name: "Logger Memory Space"
                }


            }
            anchors.bottomMargin: 50
        }
    }




    Text {
        id:type
        x: 22
        y: 17
        width: 255
        height: 44
        color: "#284863"
        text: qsTr("With Calendar")
        font.letterSpacing: -2
        font.pixelSize: 16
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "SemiBold"
        font.family: "Akshar"
    }




    //    Rectangle {
    //        id: rectangle2
    //        x: 8
    //        y: 277
    //        width: 319
    //        height: 200
    //        visible: false
    //        color: "#ffffff"
    //    }


    //    Button {
    //        id: addToDoButton
    //        x: -240
    //        y: 346
    //        height: 25
    //        text: qsTr("Add New Station")
    //        Connections {
    //            target: addToDoButton
    //            onClicked: rectangle1.isDialogOpen = !rectangle1.isDialogOpen
    //        }
    //    }

    MouseArea{
        id:recordForNow
        x:1098
        y:606
        width: 184
        height: 124
        enabled: false
        onClicked: {
            if(forLogRecord===true){
                loggerRecAnimation.start()
                forLogRecord=false
                            }
            else{
                loggerRecAnimation.stop()
                forLogRecord=true
            }
        }
    }



    MouseArea{
        id:kerem
        x:914
        y:606
        enabled: true
        width: 184
        height: 124
        onClicked: {
            if(forLogRecord===true){
                loggerRecAnimation.start()
                forLogRecord=false
            }
            else{
                loggerRecAnimation.stop()
                forLogRecord=true
            }
        }


    }






    Image {
        id: recordNowImage
        x: 1101
        y: 618
        width: 364/2
        source: "images/RecordNowImage.svg"
        layer.enabled: true
        layer.effect: ColorOverlayEffect {
            id: colorOverlay4
            color: "#de8e8e8e"
        }
        fillMode: Image.PreserveAspectFit
    }


    Image {
        id: recordWithCalendarImage
        x: 914
        y: 618
        width: 364/2
        source: "images/RecordWithCalendarImage.svg"
        layer.enabled: false
        layer.effect: ColorOverlayEffect {
            id: colorOverlay2
            color: "#de8e8e8e"
        }
        fillMode: Image.PreserveAspectFit
    }


    Image {
        id: loggerSettingsRightMenuBG
        x: 913
        y: -6
        width: 734/2
        height: 617
        source: "images/LoggerSettingsRightMenuBG.svg"
        fillMode: Image.PreserveAspectFit

        Text {
            id: memoryUsage
            x: 18
            y: 321
            width: 342
            height: 74
            color: "#284863"
            text: "According to these set values; It covers " + (8*(((rectangleArea1.width + rectangleArea2.width + rectangleArea3.width)*100)/327).toFixed(2)/100).toFixed(2) +"GB of the total 8GB space."
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }
        Flickable {
            id: flickable1
            x: 0
            y: 32
            width: 367
            height: 253
            contentY: 0
            clip: true

            //            ScrollBar.vertical: ScrollBar {
            //                x: 355
            //                width: 10
            //                height: 650
            //                policy: ScrollBar.AlwaysOn
            //                size: flickable1.height / flickable1.contentHeight
            //                position: flickable1.contentY / flickable1.contentHeight
            //                contentItem: Rectangle {
            //                    implicitHeight: parent.height / 2
            //                    implicitWidth: parent.width
            //                    color: "gray"
            //                    radius: 5
            //                }
            //            }
            Rectangle {
                id: detailsMonday
                x: 0
                y: 0
                width: 351
                height:  220
                color: "#ffffff"
                clip: false
                Text {
                    id: header1
                    x: 16
                    y: 2
                    width: 95
                    height: 147
                    visible: if(rectangleMonday.visible===false && rectangleTuesday.visible===false && rectangleWednesday.visible===false && rectangleThursday.visible===false && rectangleFriday.visible===false && rectangleSaturday.visible===false && rectangleSunday.visible===false){
                                 false
                             }
                             else{
                                 true
                             }
                    color: "#284863"
                    text:"Monday Tuesday Wednesday Thursday Friday Saturday Sunday "
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1.1
                    wrapMode: Text.Wrap
                    font.styleName: "Bold"
                    font.family: "Akshar"
                }
                Text {
                    id: header2
                    x: 16
                    y: 24
                    width: 101
                    height: 44
                    visible: if(type.text==="Now"){
                                 true
                             }
                             else{
                                 false
                             }
                    color: "#284863"
                    text:"Time Range"
                    font.letterSpacing: -2
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    font.styleName: "Bold"
                    font.family: "Akshar"
                }

                Text {
                    id: mondayHeader1
                    x: 16
                    y: 152
                    width: 113
                    height: 200
                    color: "#284863"
                    text: qsTr("Power      Harmonics      Inter Harmonics  Logger Record")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1.2
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }

                Text {
                    id: mondayHeader2
                    x: 223
                    y: 23
                    width: 118
                    height: 74
                    visible: if(type.text==="Now"){
                                 true
                             }
                             else{
                                 false
                             }
                    color: "#284863"
                    text: beginDateForNow.text + " " + beginTimeForNow.text + " - " + endDateForNow.text + " " + endTimeForNow.text
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }

                Text {
                    id: power
                    x: 220
                    y: 152
                    width: 147
                    height: 36
                    color: "#284863"
                    text: forPowerText.text
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1.5
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
                Text {
                    id: harmonics
                    x: 220
                    y: 177
                    width: 147
                    height: 36
                    color: "#284863"
                    text: forHarmonicText.text
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1.5
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
                Text {
                    id: interharmonics
                    x: 220
                    y: 203
                    width: 147
                    height: 36
                    color: "#284863"
                    text: forHarmonicText1.text
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1.5
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }

                Text {
                    id: mondayHeader6
                    x: 220
                    y: 227
                    width: 147
                    height: 36
                    color: "#284863"
                    text: clickedText.text
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    lineHeight: 1.5
                    wrapMode: Text.Wrap
                    font.styleName: "Regular"
                    font.family: "Akshar"
                }
                Rectangle{
                    x:203
                    y: -6
                    width: 170
                    height: 150
                    color: "#00ffffff"
                    visible: if(type.text==="Now"){
                                 false
                             }
                             else{
                                 true
                             }

                    Text {
                        id: textforMonday
                        x: 20
                        y: 8
                        width: 130
                        height: 21
                        visible: true
                        color: "#284863"
                        text:mondayText1.text + " - " + mondayText2.text
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforTuesday
                        x: 20
                        y: 29
                        width: 130
                        height: 21
                        visible: false
                        color: "#284863"
                        text: tuesdayText1.text + " - " + tuesdayText2.text
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforWednesday
                        x: 20
                        y: 50
                        width: 130
                        height: 21
                        visible: true
                        color: "#284863"
                        text: wednesdayText1.text + " - " + wednesdayText2.text
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforThursday
                        x: 20
                        y: 71
                        width: 130
                        height: 21
                        visible: false
                        color: "#284863"
                        text: thursdayText1.text + " - " + thursdayText2.text
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforFriday
                        x: 20
                        y: 92
                        width: 130
                        height: 21
                        visible: false
                        color: "#284863"
                        text: fridayText1.text + " - " + fridayText2.text
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforSaturday
                        x: 20
                        y: 113
                        width: 130
                        height: 21
                        visible: false
                        color: "#284863"
                        text: saturdayText1.text + " - " + saturdayText2.text
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforSunday
                        x: 20
                        y: 134
                        width: 130
                        height: 21
                        visible: true
                        color: "#284863"
                        text: sundayText1.text + " - " + sundayText2.text
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforMonday1
                        x: 20
                        y: 8
                        width: 130
                        height: 21
                        visible: if(textforMonday.visible===true){
                                     false
                                 }
                                 else{
                                     true
                                 }
                        color: "#284863"
                        text: "- "
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforTuesday1
                        x: 20
                        y: 29
                        width: 130
                        height: 21
                        visible: if(textforTuesday.visible===true){
                                     false
                                 }
                                 else{
                                     true
                                 }
                        color: "#284863"
                        text: "- "
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforWednesday1
                        x: 20
                        y: 50
                        width: 130
                        height: 21
                        visible: if(textforWednesday.visible===true){
                                     false
                                 }
                                 else{
                                     true
                                 }
                        color: "#284863"
                        text: "- "
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforThursday1
                        x: 20
                        y: 71
                        width: 130
                        height: 21
                        visible: if(textforThursday.visible===true){
                                     false
                                 }
                                 else{
                                     true
                                 }
                        color: "#284863"
                        text: "- "
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforFriday1
                        x: 20
                        y: 92
                        width: 130
                        height: 21
                        visible: if(textforFriday.visible===true){
                                     false
                                 }
                                 else{
                                     true
                                 }
                        color: "#284863"
                        text: "- "
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforSaturday1
                        x: 20
                        y: 113
                        width: 130
                        height: 21
                        visible: if(textforSaturday.visible===true){
                                     false
                                 }
                                 else{
                                     true
                                 }
                        color: "#284863"
                        text: "- "
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }

                    Text {
                        id: textforSunday1
                        x: 20
                        y: 134
                        width: 130
                        height: 21
                        visible: if(textforSunday.visible===true){
                                     false
                                 }
                                 else{
                                     true
                                 }
                        color: "#284863"
                        text: "- "
                        font.letterSpacing: -2
                        font.pixelSize: 16
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.styleName: "Light"
                        font.family: "Akshar"
                    }
                }
            }

            //            Rectangle {
            //                id: detailsTuesday
            //                x: 0
            //                width: 351
            //                height: if(rectangleTuesday.visible===true){
            //                            309
            //                        }
            //                        else{
            //                            0
            //                        }
            //                color: "#ffffff"
            //                anchors.top: detailsMonday.bottom
            //                anchors.topMargin: -1
            //                Text {
            //                    x: 16
            //                    y: 0
            //                    width: 255
            //                    height: 44
            //                    visible: true
            //                    color: "#284863"
            //                    text: qsTr("Tuesday")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 16
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignVCenter
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Bold"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 16
            //                    y: 50
            //                    width: 113
            //                    height: 250
            //                    color: "#284863"
            //                    text: qsTr("Hour range  Power      Harmonics      Inter Harmonics  Event Record")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 2.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 35
            //                    width: 147
            //                    height: 74
            //                    color: "#284863"
            //                    text: beginDateForNow.text + " " + beginTimeForNow.text + " - " + endDateForNow.text + " " + endTimeForNow.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 103
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forPowerText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 155
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 208
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText1.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                Text {
            //                    x: 219
            //                    y: 260
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: clickedText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                clip: true
            //            }

            //            Rectangle {
            //                id: detailsWednesday
            //                x: 0
            //                width: 351
            //                height: if(rectangleWednesday.visible===true){
            //                            309
            //                        }
            //                        else{
            //                            0
            //                        }
            //                color: "#ffffff"
            //                anchors.top: detailsTuesday.bottom
            //                anchors.topMargin: -1
            //                Text {
            //                    x: 16
            //                    y: 0
            //                    width: 255
            //                    height: 44
            //                    visible: true
            //                    color: "#284863"
            //                    text: qsTr("Wednesday")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 16
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignVCenter
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Bold"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 16
            //                    y: 50
            //                    width: 113
            //                    height: 250
            //                    color: "#284863"
            //                    text: qsTr("Hour range  Power      Harmonics      Inter Harmonics  Event Record")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 2.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 35
            //                    width: 147
            //                    height: 74
            //                    color: "#284863"
            //                    text: beginDateForNow.text + " " + beginTimeForNow.text + " - " + endDateForNow.text + " " + endTimeForNow.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 103
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forPowerText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 155
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 208
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText1.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                Text {
            //                    x: 219
            //                    y: 260
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: clickedText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                clip: true
            //            }


            //            Rectangle {
            //                id: detailsThursday
            //                x: 0
            //                width: 351
            //                height: if(rectangleThursday.visible===true){
            //                            309
            //                        }
            //                        else{
            //                            0
            //                        }
            //                color: "#ffffff"
            //                anchors.top: detailsWednesday.bottom
            //                anchors.topMargin: -1
            //                Text {
            //                    x: 16
            //                    y: 0
            //                    width: 255
            //                    height: 44
            //                    visible: true
            //                    color: "#284863"
            //                    text: qsTr("Thursday")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 16
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignVCenter
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Bold"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 16
            //                    y: 50
            //                    width: 113
            //                    height: 250
            //                    color: "#284863"
            //                    text: qsTr("Hour range  Power      Harmonics      Inter Harmonics  Event Record")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 2.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 35
            //                    width: 147
            //                    height: 74
            //                    color: "#284863"
            //                    text: beginDateForNow.text + " " + beginTimeForNow.text + " - " + endDateForNow.text + " " + endTimeForNow.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 103
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forPowerText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 155
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 208
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText1.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                Text {
            //                    x: 219
            //                    y: 260
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: clickedText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                clip: true
            //            }


            //            Rectangle {
            //                id: detailsFriday
            //                x: 0
            //                width: 351
            //                height: if(rectangleFriday.visible===true){
            //                            309
            //                        }
            //                        else{
            //                            0
            //                        }
            //                color: "#ffffff"
            //                anchors.top: detailsThursday.bottom
            //                anchors.topMargin: -1
            //                Text {
            //                    x: 16
            //                    y: 0
            //                    width: 255
            //                    height: 44
            //                    visible: true
            //                    color: "#284863"
            //                    text: qsTr("Friday")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 16
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignVCenter
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Bold"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 16
            //                    y: 50
            //                    width: 113
            //                    height: 250
            //                    color: "#284863"
            //                    text: qsTr("Hour range  Power      Harmonics      Inter Harmonics  Event Record")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 2.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 35
            //                    width: 147
            //                    height: 74
            //                    color: "#284863"
            //                    text: beginDateForNow.text + " " + beginTimeForNow.text + " - " + endDateForNow.text + " " + endTimeForNow.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 103
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forPowerText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 155
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 208
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText1.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                Text {
            //                    x: 219
            //                    y: 260
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: clickedText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                clip: true
            //            }


            //            Rectangle {
            //                id: detailsSaturday
            //                x: 0
            //                width: 351
            //                height: if(rectangleSaturday.visible===true){
            //                            309
            //                        }
            //                        else{
            //                            0
            //                        }
            //                color: "#ffffff"
            //                anchors.top: detailsFriday.bottom
            //                anchors.topMargin: -1
            //                Text {
            //                    x: 16
            //                    y: 0
            //                    width: 255
            //                    height: 44
            //                    visible: true
            //                    color: "#284863"
            //                    text: qsTr("Saturday")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 16
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignVCenter
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Bold"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 16
            //                    y: 50
            //                    width: 113
            //                    height: 250
            //                    color: "#284863"
            //                    text: qsTr("Hour range  Power      Harmonics      Inter Harmonics  Event Record")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 2.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 35
            //                    width: 147
            //                    height: 74
            //                    color: "#284863"
            //                    text: beginDateForNow.text + " " + beginTimeForNow.text + " - " + endDateForNow.text + " " + endTimeForNow.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 103
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forPowerText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 155
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 208
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText1.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                Text {
            //                    x: 219
            //                    y: 260
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: clickedText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                clip: true
            //            }

            //            Rectangle {
            //                id: detailsSunday
            //                x: 0
            //                width: 351
            //                height: if(rectangleSunday.visible===true){
            //                            309
            //                        }
            //                        else{
            //                            0
            //                        }
            //                color: "#ffffff"
            //                anchors.top: detailsSaturday.bottom
            //                anchors.topMargin: -1
            //                Text {
            //                    x: 16
            //                    y: 0
            //                    width: 255
            //                    height: 44
            //                    visible: true
            //                    color: "#284863"
            //                    text: qsTr("Sunday")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 16
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignVCenter
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Bold"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 16
            //                    y: 50
            //                    width: 113
            //                    height: 250
            //                    color: "#284863"
            //                    text: qsTr("Hour range  Power      Harmonics      Inter Harmonics  Event Record")
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 2.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 35
            //                    width: 147
            //                    height: 74
            //                    color: "#284863"
            //                    text: beginDateForNow.text + " " + beginTimeForNow.text + " - " + endDateForNow.text + " " + endTimeForNow.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 103
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forPowerText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 155
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }

            //                Text {
            //                    x: 219
            //                    y: 208
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: forHarmonicText1.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                Text {
            //                    x: 219
            //                    y: 260
            //                    width: 147
            //                    height: 36
            //                    color: "#284863"
            //                    text: clickedText.text
            //                    font.letterSpacing: -2
            //                    font.pixelSize: 17
            //                    horizontalAlignment: Text.AlignLeft
            //                    verticalAlignment: Text.AlignTop
            //                    lineHeight: 1.5
            //                    wrapMode: Text.Wrap
            //                    font.styleName: "Regular"
            //                    font.family: "Akshar"
            //                }
            //                clip: true
            //            }



        }

        Rectangle {
            id: rectangleTotal
            width: 329
            height: 82
            color: "#77a8b8ff"
            border.color: "#217efd"
            x: 19
            y: 405

            Rectangle {
                id: rectangleArea1
                x: 1
                y: 1
                width:
                    if(customCheckBox.checkBoxOn.visible===false && customCheckBox1.checkBoxOn.visible===false && customCheckBox2.checkBoxOn.visible===false && customCheckBox3.checkBoxOn.visible===false){
                        0
                    }
                    else if(type.text==="Now"){
                        if(comboBox1.displayText==="150 cycle"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="3 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/90) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/90) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/90) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="15 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/450) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/450) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/450) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="30 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="5 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/150) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/150) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/150) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="10 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/300) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/300) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/300) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="15 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/25) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/25) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/25) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="30 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/50) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/50) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/50) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 hour"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/100) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/100) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/100) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="2 hour"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/200) : 0) +
                                        (customCheckBox1.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/200) : 0) +
                                        (customCheckBox2.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/200) : 0)
                            }
                        }

                    }

                    else if(type.text==="With Calendar"){
                        (customCheckBox.checkBoxOn.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (customCheckBox1.checkBoxOn.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (customCheckBox2.checkBoxOn.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleMonday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleTuesday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleWednesday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleThursday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleFriday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleSaturday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleSunday.visible ? (109*1/10)*(spinBox1.value/48) : 0)
                    }

                height: 80
                visible: true

                gradient: Gradient {
                    orientation: Gradient.Horizontal
                    GradientStop {
                        position: 0
                        color: "#65e438"
                    }

                    GradientStop {
                        position: 1
                        color: "#32741a"
                    }
                }
            }

            Rectangle {
                id: rectangleArea2
                x: 1
                y: 1
                width:
                    if(customCheckBox4.checkBoxOn.visible===false && customCheckBox5.checkBoxOn.visible===false && customCheckBox6.checkBoxOn.visible===false && customCheckBox7.checkBoxOn.visible===false){
                        0
                    }
                    else if(type.text==="Now"){
                        if(comboBox1.displayText==="150 cycle"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="3 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/90) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/90) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/90) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="15 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/450) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/450) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/450) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="30 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="5 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/150) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/150) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/150) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="10 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/300) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/300) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/300) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="15 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/25) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/25) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/25) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="30 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/50) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/50) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/50) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 hour"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/100) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/100) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/100) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="2 hour"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox4.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/200) : 0) +
                                        (customCheckBox5.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/200) : 0) +
                                        (customCheckBox6.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/200) : 0)
                            }
                        }
                    }

                    else if(type.text==="With Calendar"){
                        (customCheckBox4.checkBoxOn.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (customCheckBox5.checkBoxOn.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (customCheckBox6.checkBoxOn.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleMonday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleTuesday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleWednesday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleThursday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleFriday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleSaturday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleSunday.visible ? (109*1/10)*(spinBox1.value/48) : 0)
                    }


                height: 80
                anchors.left: rectangleArea1.right
                gradient: Gradient {
                    orientation: Gradient.Horizontal
                    GradientStop {
                        position: 0
                        color: "#f3e13d"
                    }

                    GradientStop {
                        position: 1
                        color: "#988b1a"
                    }
                }
                anchors.leftMargin: 0
            }

            Rectangle {
                id: rectangleArea3
                x: 1
                y: 1
                width:
                    if(customCheckBox8.checkBoxOn.visible===false && customCheckBox9.checkBoxOn.visible===false && customCheckBox10.checkBoxOn.visible===false && customCheckBox11.checkBoxOn.visible===false){
                        0
                    }
                    else if(type.text==="Now"){
                        if(comboBox1.displayText==="150 cycle"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="3 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/90) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/90) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/90) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="15 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/450) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/450) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/450) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="30 second"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/15) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/30) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="5 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/150) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/150) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/150) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="10 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/300) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/300) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/300) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="15 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/25) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/25) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/25) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="30 minute"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/50) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/50) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/50) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="1 hour"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/100) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/100) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/100) : 0)
                            }
                        }

                        else if(comboBox1.displayText==="2 hour"){
                            if(chosenText22.text==="Logger Memory Space"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/8192) : 0)
                            }
                            else if(chosenText22.text==="Logger Record Time"){
                                (customCheckBox8.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/200) : 0) +
                                        (customCheckBox9.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/200) : 0) +
                                        (customCheckBox10.checkBoxOn.visible ? (109*1/3)*(spinBox2.value/200) : 0)
                            }
                        }
                    }

                    else if(type.text==="With Calendar"){
                        (customCheckBox8.checkBoxOn.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (customCheckBox9.checkBoxOn.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (customCheckBox10.checkBoxOn.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleMonday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleTuesday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleWednesday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleThursday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleFriday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleSaturday.visible ? (109*1/10)*(spinBox1.value/48) : 0) +
                                (rectangleSunday.visible ? (109*1/10)*(spinBox1.value/48) : 0)
                    }

                height: 80
                anchors.left: rectangleArea2.right
                gradient: Gradient {
                    orientation: Gradient.Horizontal
                    GradientStop {
                        position: 0
                        color: "#9255ff"
                    }

                    GradientStop {
                        position: 1
                        color: "#4710a9"
                    }

                }
                anchors.leftMargin: 0
            }

            Text {
                id: forPower
                x: 417
                y: 59
                width: 78
                height: 25
                visible:rectangleArea1.visible
                color: "#284863"
                text: qsTr("Power")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: forPowerText
                x: 416
                y: 77
                width: 34
                height: 70
                visible:rectangleArea1.visible
                color: "#284863"
                text: qsTr(" Min  Max ")
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: forharmonic
                x: 470
                y: 62
                width: 80
                height: 20
                visible: rectangleArea2.visible
                color: "#284863"
                text: qsTr("Harmonics")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: forHarmonicText
                x: 510
                y: 83
                width: 34
                height: 70
                color: "#284863"
                visible: rectangleArea2.visible
                text: qsTr(" Max ")
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: forHarmonicText1
                x: 590
                y: 83
                width: 34
                height: 70
                color: "#284863"
                visible: rectangleArea3.visible
                text: qsTr(" Max ")
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: forharmonic1
                x: 564
                y: 56
                width: 80
                height: 20
                color: "#284863"
                visible: rectangleArea3.visible
                text: qsTr("Inter Harmonics")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }
            Rectangle{
            x:2
            y:177
            width: 17
            height: 17
            color: "#65e438"
            }
            Rectangle{
            x:97
            y:177
            width: 17
            height: 17
            color: "#f3e13d"
            }
            Rectangle{
            x:211
            y:177
            width: 17
            height: 17
            color: "#9255ff"
            }

            Text {
                id: forPowerParametersPerc
                x: 2
                y: 176
                width: 94
                height: 24
                visible: true
                color: "#284863"
                text: "% " + ((rectangleArea1.width)*100/327).toFixed(2)
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: forUsage
                x: -1
                y: 116
                width: 99
                height: 24
                visible: true
                color: "#284863"
                text: "% " + (((rectangleArea1.width + rectangleArea2.width + rectangleArea3.width)*100)/327).toFixed(2)
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: forUsageHeader
                x: -1
                y: 92
                width: 99
                height: 24
                visible: true
                color: "#284863"
                text: "Used Space"
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: forUsable
                x: 230
                y: 116
                width: 99
                height: 24
                visible: true
                color:
                    if(forUsable.text==="% -0.00"){
                        "#ff5555"
                    }
                    else if(forUsable.text==="% 0.00"){
                    "#ff5555"
                    }
                    else{
                        "#284863"
                    }
                text: "% " + (((327-(rectangleArea1.width + rectangleArea2.width + rectangleArea3.width))*100)/327).toFixed(2)
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: forUsableHeader
                x: 230
                y: 92
                width: 99
                height: 24
                visible: true
                color:
                    if(forUsable.text==="% -0.00"){
                        "#ff5555"
                    }
                    else if(forUsable.text==="% 0.00"){
                    "#ff5555"
                    }
                    else{
                        "#284863"
                    }

                text: "Free Space"
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: whichMemoryArea
                x: 0
                y: -24
                width: 200
                height: 24
                visible: true
                color: "#284863"
                text: "Internal Memory"
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignLeft
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id: forPowerParametersPerc1
                x: 97
                y: 176
                width: 94
                height: 24
                visible: true
                color: "#284863"
                text: "% " + ((rectangleArea2.width)*100/327).toFixed(2)
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: forPowerParametersPerc2
                x: 211
                y: 176
                width: 94
                height: 24
                visible: true
                color: "#284863"
                text:"% " + ((rectangleArea3.width)*100/327).toFixed(2)
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                wrapMode: Text.Wrap
                font.styleName: "Regular"
                font.family: "Akshar"
            }

            Text {
                id: forUsageHeader1
                x: 0
                y: 152
                width: 354
                height: 24
                visible: true
                color: "#284863"
                text: "Power              Harmonics          Inter Harmonics"
                font.letterSpacing: -2
                font.pixelSize: 16
                horizontalAlignment: Text.AlignLeft
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
        }
    }


    ComboBox {
        id: comboBox1
        x: 165
        y: 557
        width: 169
        height: 40
        font.pixelSize: 14
        baselineOffset: 0
        rightPadding: 0
        model: ["150 cycle", "1 second" , "3 second", "15 second", "30 second", "1 minute", "5 minute", "10 minute", "15 minute" , "30 minute" , "1 hour" , "2 hour"]
        currentIndex: 7
        onDisplayTextChanged: {
            if(comboBox1.displayText==="150 cycle"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="GB"
                    spinBox2.to=8
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Minute"
                    spinBox2.to=15
                }
            }
            else if(comboBox1.displayText==="1 second"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="GB"
                    spinBox2.to=8
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Minute"
                    spinBox2.to=30
                }
            }
            else if(comboBox1.displayText==="3 second"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="GB"
                    spinBox2.to=8
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Minute"
                    spinBox2.to=90
                }
            }
            else if(comboBox1.displayText==="15 second"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="GB"
                    spinBox2.to=8
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Minute"
                    spinBox2.to=450
                }
            }
            else if(comboBox1.displayText==="30 second"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="GB"
                    spinBox2.to=8
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Hour"
                    spinBox2.to=15
                }
            }
            else if(comboBox1.displayText==="1 minute"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="MB"
                    spinBox2.to=8192
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Hour"
                    spinBox2.to=30
                }
            }

            else if(comboBox1.displayText==="5 minute"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="MB"
                    spinBox2.to=8192
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Hour"
                    spinBox2.to=150
                }
            }

            else if(comboBox1.displayText==="10 minute"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="MB"
                    spinBox2.to=8192
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Hour"
                    spinBox2.to=300
                }
            }

            else if(comboBox1.displayText==="15 minute"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="MB"
                    spinBox2.to=8192
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Day"
                    spinBox2.to=25
                }
            }

            else if(comboBox1.displayText==="30 minute"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="MB"
                    spinBox2.to=8192
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Day"
                    spinBox2.to=50
                }
            }


            else if(comboBox1.displayText==="1 hour"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="MB"
                    spinBox2.to=8192
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Day"
                    spinBox2.to=100
                }
            }

            else if(comboBox1.displayText==="2 hour"){
                if(chosenText22.text==="Logger Memory Space"){
                    comboBox.text="MB"
                    spinBox2.to=8192
                }
                else if(chosenText22.text==="Logger Record Time"){
                    comboBox.text="Day"
                    spinBox2.to=200
                }
            }

        }
    }

    AppSettings{
        id:appSettingsComponent
        visible: true
    }

   property int currentDay: new Date().getDate()
   property int currentMonth: new Date().getMonth()
   property int currentYear: new Date().getFullYear()

   function saveListModel() {
//        var listData = [];
     var listData = appSettingsComponent.appSettings.value("listModelData", []);

       for (var i = 0; i < myListModel.count; i++) {
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
//           console.log(dateTextt);
//           var randomNumber= Math.floor(Math.random() * 1025)
           var randomNumber = Math.floor(Math.random() * (9999 - 7500 + 1)) + 7500;
           var randomNumberAsString = randomNumber.toString();
           var typeTextt = "Logger"

           listData.push({ "name": myListModel.get(i).name, "dateText": dateTextt, "typeText": typeTextt, "sizeText":randomNumberAsString, "power":power.text, "harmonics":harmonics.text, "interharmonics":interharmonics.text});

           var itemData = listData[i];

       }

       appSettingsComponent.appSettings.setValue("listModelData", listData);
   }




//   function saveListModel() {

//       var listData = [];

//       var currentDate = new Date(); // Her öğe için ayrı ayrı tarih ve saat bilgisi oluştur
//              function formatDate(date) {
//           var day = ("0" + date.getDate()).slice(-2);
//           var month = ("0" + (date.getMonth() + 1)).slice(-2);
//           var year = date.getFullYear();
//           return day + "." + month + "." + year;
//       }

//       function formatTime(date) {
//           var hours = ("0" + date.getHours()).slice(-2);
//           var minutes = ("0" + date.getMinutes()).slice(-2);
//           var seconds = ("0" + date.getSeconds()).slice(-2);
//           return hours + ":" + minutes + ":" + seconds;
//       }
//       for (var i = 0; i < myListModel.count; i++) {
//           var dateTextt = formatDate(currentDate) + "-" + formatTime(currentDate);
//           console.log(dateTextt)
//           listData.push({ "name": myListModel.get(i).name, "dateText": dateTextt });


//           var itemData = listData[i];
//           console.log("Item data:",itemData.name+ "  =   " +itemData.dateText);


//       }
//       appSettingsComponent.appSettings.setValue("listModelData", listData);

//   }



//       function saveListModel() {
//            var listData = [];
//           for (var i = 0; i < myListModel.count; i++) {
//               function formatDate(date) {
//                           var day = ("0" + date.getDate()).slice(-2);
//                           var month = ("0" + (date.getMonth() + 1)).slice(-2);
//                           var year = date.getFullYear();
//                           return day + "." + month + "." + year;
//                       }
//               function formatTime(date) {
//                          var hours = ("0" + date.getHours()).slice(-2);
//                          var minutes = ("0" + date.getMinutes()).slice(-2);
//                          var seconds = ("0" + date.getSeconds()).slice(-2);
//                          return hours + ":" + minutes + ":" + seconds;
//                      }

//               var currentDate = new Date();
//               var dateTextt = formatDate(currentDate) + "-" + formatTime(currentDate);

//               listData.push({ "name": myListModel.get(i).name, "dateText":dateTextt});
//           }
//           appSettingsComponent.appSettings.setValue("listModelData", listData);
//       }

       function loadListModel() {
           var listData = appSettingsComponent.appSettings.value("listModelData", []);
           myListModel.clear();
           for (var i = 0; i < listData.length; i++) {
               var itemData = listData[i];
               myListModel.append({ "name": itemData.name, "dateText": itemData.dateText || "" });
           }
       }





    Flickable {
        id: flickable
        x: 0
        y: 60
        visible: rectangle1.isDialogOpen
        width: 335
        height: 387
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
                        name: "Record 1"
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
                    width: 340
                    height: 55
                    color: "#EFF2F6"
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
                        anchors.leftMargin: 0
                        ButtonGroup.group: radioButtonGroup

                        onClicked: {
                            // Tıklanan radioButton'ın metnini al ve bir işlevi çağır
                            clickedText.text=" "+text;
                            clickedText.color="#284863"
                            rectangle1.isDialogOpen = false;
                            warningText.visible=false
                        }
                    }
                }
                clip: true
            }
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            clip: false
            spacing: 20
        }

        clip: true
        contentHeight: 400
    }

    Rectangle {
        x: 10
        y: 14
        width: 270
        height: 46
        visible: rectangle1.isDialogOpen
        color: "#ffffff"
        border.color: "#d9d9d9"
        border.width: 1

        CustomButtonHeaderBlackBG {
            x: 268
            y: 0
            width: 57
            height: 46
            clip: true

            Image {
                id: okUp2
                x: 22
                y: 18
                width: 28/2
                source: "images/OkUp.svg"
                rotation: 180
                fillMode: Image.PreserveAspectFit
            }
        }

        Rectangle {
            id:backgroundList
            x: 0
            y: 46
            width: 268
            height: 220

            visible: false
        }

        Text {
            id:chosenText
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
            onClicked: {

                if(okUp2.rotation===0)
                {
                    okUp2.rotation=180
                    backgroundList.visible=false
                    listView.visible=false
                    elementText.visible=false
                }
                else
                {
                    okUp2.rotation=0
                    backgroundList.visible=true
                    listView.visible=true
                    elementText.visible=false
                }
            }
            anchors.topMargin: -5
            anchors.bottomMargin: -5
        }

        ListView {
            id:listView
            x: 0
            width: parent.width-3
            visible: false
            anchors.top: backgroundList.top
            anchors.bottom: backgroundList.bottom
            interactive: false
            spacing: 5
            delegate: Item {
                width: listView.width
                height: 50
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
                            chosenText.text = model.name
                            whichMemoryArea.text=chosenText.text
                        }
                    }
                }
            }
            anchors.topMargin: 0
            model: ListModel {
                ListElement {
                    name: "USB"
                }

                ListElement {
                    name: "SD CARD"
                }

                ListElement {
                    name: "USB + SD CARD"
                }

                ListElement {
                    name: "Internal Memory"
                }

            }
            anchors.bottomMargin: 50
        }

        Text {
            id:elementText
            x: 20
            y: -3
            width: 237
            height: 50
            color: "#d4d4d4"
            text: qsTr("Internal Memory")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }
    }

    Image {
        id: bgForHeader3
        x: 9
        y: 667
        width: 326
        height: 55
        source: "images/BGHeader.svg"
        Text {
            x: 8
            y: 7
            width: 121
            height: 44
            color: "#284863"
            text: qsTr("Logger Record")
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

        Rectangle {
            id: rectangle2
            x: 90
            y: 6
            width: 178
            height: 46
            color: "#ffffff"
            border.color: "#d9d9d9"
            border.width: 1
            Rectangle {
                x: -135
                y: -665
                width: 338
                height: 665
                visible: false
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
                        rectangle1.isDialogOpen = !rectangle1.isDialogOpen
                        warningText.visible=false
                    }
                    else
                    {
                        okUp1.rotation=180
                        rectangle1.isDialogOpen = !rectangle1.isDialogOpen
                        warningText.visible=false
                    }
                }
                anchors.rightMargin: -60
            }

            Text {
                id:clickedText
                y: -2
                width: 126
                height: 50
                color: "#d4d4d4"
                text: qsTr(" Record 1")
                anchors.left: parent.left
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                anchors.leftMargin: 10
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
        }
        fillMode: Image.Pad
    }


    Rectangle {
        id: addToDoDialog
        x: 8
        y: 503
        width: 328
        height: 160
        visible: rectangle1.isDialogOpen
        color: "#EFF2F6"
        radius: 0
        TextField {
            id: toDoTextInput
            height: 60
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            font.pixelSize: 18
            font.styleName: "Light"
            font.family: "Akshar"
            placeholderText: qsTr("Please enter logger name")
            anchors.topMargin: 25
            anchors.rightMargin: 25
            anchors.leftMargin: 25
        }

        RowLayout {
            y: 80
            height: 80
            anchors.left: parent.left
            anchors.right: parent.right

            Button {
                id: cancelButton
                Layout.minimumHeight: 45
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay
                    color: "#617284"
                    Text {
                        id: cancel
                        x:0
                        y:0
                        width: 114
                        height:40
                        color: "#ffffff"
                        text: qsTr("Cancel")
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: "Akshar"
                    }
                }

                icon.color: "#eff2f6"
                Layout.fillWidth: true
                Connections {
                    target: cancelButton
                    onClicked:
                    {
                        rectangle1.isDialogOpen = false
                        //                        rectangle2.visible = false
                        warningText.visible=false
                    }
                }

                Connections {
                    target: cancelButton
                    onClicked: toDoTextInput.text = ""
                }
            }

//            CommunicationSettingsForQtR01{
//                id:communicationSettings
//                visible: false
//            }

            Button {
                id: addButton
                layer.enabled: true
                Layout.minimumHeight: 45
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay1
                    color: "#617284"
                    Text {
                        id: add
                        x:0
                        y:0
                        width: 114
                        height:40
                        color: "#ffffff"

                        text: qsTr("Add")
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.family: "Akshar"
                    }
                }
                Layout.fillWidth: true
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
                            flickable.contentHeight += 75;
                            myListModel.append(myListModel.createListElement());
//                            communicationSettings.myListModelMemoryInfo.append(communicationSettings.myListModelMemoryInfo.createListElement(toDoTextInput.text));
                            toDoTextInput.text = ""; // Bu satırı ekleyin.

                            saveListModel();

                        }
                    }
                }
            }
            anchors.rightMargin: 25
            anchors.leftMargin: 25
            spacing: 50
        }
    }

    Text {
        id: warningText
        x: 15
        y: 451
        width: 319
        height: 102
        // Yerleşimini ayarlayın
        color: "red"
        font.pointSize: 14
        visible: false // Başlangıçta gizli olacak
        text: qsTr("An empty value cannot be entered, please enter at least 1 character.")
        wrapMode: Text.Wrap
    }

    Item {
        id: __materialLibrary__
    }



}

