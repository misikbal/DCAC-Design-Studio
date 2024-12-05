import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.10
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtCharts 2.3



Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#F7F8FA"
    border.color: "#ffffff"
    property string bgColors: String("#EFF2F6")
    property bool forEventCursor:true


    Component.onCompleted:{
        for (var i = 0; i <= 99; i += 1) {
            setItemVisibility(i, true);
            setItemVisibility1(i, true);
            setItemVisibility2(i, true);
            setItemVisibility3(i, true);
            setItemVisibility4(i, true);
        }
        flickable.contentHeight=flickable.contentHeight+5000
    }


    Image {
        id: eventsPG
        x: 0
        y: 0
        width: 2560/2
        visible: false
        source: "images/EventsPG.svg"
        fillMode: Image.PreserveAspectFit
    }




    Image {
        id: forEventCursor1
        x: 324
        y: 662
        width: 1078/2
        source: "images/forEventCursor.svg"
        fillMode: Image.PreserveAspectFit
    }





    Image {
        id: holdNonClicked
        x: 39
        y: 662
        width: 834
        height: 64
        source: "images/HoldNonClicked.svg"
        fillMode: Image.Stretch
    }

    Image {
        id: holdClicked
        x: 39
        y: 756
        width: 834
        source: "images/HoldClicked.svg"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: holdButtonText
        x: 39
        y: 662
        width: 834
        height: 64
        color: "#ffffff"
        text: qsTr("CURSOR")
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
            to: 240
        }
        NumberAnimation{
            target: holdButtonText
            property: "width"
            duration: 300
            to:  240
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
        x: 39
        y: 664
        width: 834
        height:64
        onClicked: {
            if(forEventCursor===true){
                forEventCursor=false
                holdNonClicked.source="images/HoldClicked.svg"
                holdButtonClickedAnim.start()
                eventcursor.visible=true
             }
            else{
                forEventCursor=true
                holdNonClicked.source="images/HoldNonClicked.svg"
                holdButtonNonClickedAnim.start()
                eventcursor.visible=false
            }

        }
    }







    ListModel {
        id: myModel
        ListElement {
            text: "1"
            visible: false
        }

        ListElement {
            text: "2"
            visible: false
        }

        ListElement {
            text: "3"
            visible: false
        }

        ListElement {
            text: "4"
            visible: false
        }

        ListElement {
            text: "5"
            visible: false
        }

        ListElement {
            text: "6"
            visible: false
        }

        ListElement {
            text: "7"
            visible: false
        }

        ListElement {
            text: "8"
            visible: false
        }

        ListElement {
            text: "9"
            visible: false
        }

        ListElement {
            text: "10"
            visible: false
        }

        ListElement {
            text: "11"
            visible: false
        }

        ListElement {
            text: "12"
            visible: false
        }

        ListElement {
            text: "13"
            visible: false
        }

        ListElement {
            text: "14"
            visible: false
        }

        ListElement {
            text: "15"
            visible: false
        }

        ListElement {
            text: "16"
            visible: false
        }

        ListElement {
            text: "17"
            visible: false
        }

        ListElement {
            text: "18"
            visible: false
        }

        ListElement {
            text: "19"
            visible: false
        }

        ListElement {
            text: "20"
            visible: false
        }

        ListElement {
            text: "21"
            visible: false
        }

        ListElement {
            text: "22"
            visible: false
        }

        ListElement {
            text: "23"
            visible: false
        }

        ListElement {
            text: "24"
            visible: false
        }

        ListElement {
            text: "25"
            visible: false
        }

        ListElement {
            text: "26"
            visible: false
        }

        ListElement {
            text: "27"
            visible: false
        }

        ListElement {
            text: "28"
            visible: false
        }

        ListElement {
            text: "29"
            visible: false
        }

        ListElement {
            text: "30"
            visible: false
        }

        ListElement {
            text: "31"
            visible: false
        }

        ListElement {
            text: "32"
            visible: false
        }

        ListElement {
            text: "33"
            visible: false
        }

        ListElement {
            text: "34"
            visible: false
        }

        ListElement {
            text: "35"
            visible: false
        }

        ListElement {
            text: "36"
            visible: false
        }

        ListElement {
            text: "37"
            visible: false
        }

        ListElement {
            text: "38"
            visible: false
        }

        ListElement {
            text: "39"
            visible: false
        }

        ListElement {
            text: "40"
            visible: false
        }

        ListElement {
            text: "41"
            visible: false
        }

        ListElement {
            text: "42"
            visible: false
        }

        ListElement {
            text: "43"
            visible: false
        }

        ListElement {
            text: "44"
            visible: false
        }

        ListElement {
            text: "45"
            visible: false
        }

        ListElement {
            text: "46"
            visible: false
        }

        ListElement {
            text: "47"
            visible: false
        }

        ListElement {
            text: "48"
            visible: false
        }

        ListElement {
            text: "49"
            visible: false
        }

        ListElement {
            text: "50"
            visible: false
        }

        ListElement {
            text: "51"
            visible: false
        }

        ListElement {
            text: "52"
            visible: false
        }

        ListElement {
            text: "53"
            visible: false
        }

        ListElement {
            text: "54"
            visible: false
        }

        ListElement {
            text: "55"
            visible: false
        }

        ListElement {
            text: "56"
            visible: false
        }

        ListElement {
            text: "57"
            visible: false
        }

        ListElement {
            text: "58"
            visible: false
        }

        ListElement {
            text: "59"
            visible: false
        }

        ListElement {
            text: "60"
            visible: false
        }

        ListElement {
            text: "61"
            visible: false
        }

        ListElement {
            text: "62"
            visible: false
        }

        ListElement {
            text: "63"
            visible: false
        }

        ListElement {
            text: "64"
            visible: false
        }

        ListElement {
            text: "65"
            visible: false
        }

        ListElement {
            text: "66"
            visible: false
        }

        ListElement {
            text: "67"
            visible: false
        }

        ListElement {
            text: "68"
            visible: false
        }

        ListElement {
            text: "69"
            visible: false
        }

        ListElement {
            text: "70"
            visible: false
        }

        ListElement {
            text: "71"
            visible: false
        }

        ListElement {
            text: "72"
            visible: false
        }

        ListElement {
            text: "73"
            visible: false
        }

        ListElement {
            text: "74"
            visible: false
        }

        ListElement {
            text: "75"
            visible: false
        }

        ListElement {
            text: "76"
            visible: false
        }

        ListElement {
            text: "77"
            visible: false
        }

        ListElement {
            text: "78"
            visible: false
        }

        ListElement {
            text: "79"
            visible: false
        }

        ListElement {
            text: "80"
            visible: false
        }

        ListElement {
            text: "81"
            visible: false
        }

        ListElement {
            text: "82"
            visible: false
        }

        ListElement {
            text: "83"
            visible: false
        }

        ListElement {
            text: "84"
            visible: false
        }

        ListElement {
            text: "85"
            visible: false
        }

        ListElement {
            text: "86"
            visible: false
        }

        ListElement {
            text: "87"
            visible: false
        }

        ListElement {
            text: "88"
            visible: false
        }

        ListElement {
            text: "89"
            visible: false
        }

        ListElement {
            text: "90"
            visible: false
        }

        ListElement {
            text: "91"
            visible: false
        }

        ListElement {
            text: "92"
            visible: false
        }

        ListElement {
            text: "93"
            visible: false
        }

        ListElement {
            text: "94"
            visible: false
        }

        ListElement {
            text: "95"
            visible: false
        }

        ListElement {
            text: "96"
            visible: false
        }

        ListElement {
            text: "97"
            visible: false
        }

        ListElement {
            text: "98"
            visible: false
        }

        ListElement {
            text: "99"
            visible: false
        }

        ListElement {
            text: "100"
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
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "High Voltage"
            visible: false
        }
        ListElement {
            text: "Dip"
            visible: false
        }
        ListElement {
            text: "Inrush Current"
            visible: false
        }
        ListElement {
            text: "Sag"
            visible: false
        }
        ListElement {
            text: "Sweel"
            visible: false
        }
        ListElement {
            text: "Low Voltage"
            visible: false
        }
        ListElement {
            text: "Interruption"
            visible: false
        }
        ListElement {
            text: "Interruption"
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

    function refreshVisibleItemsModelForDip() {
        visibleItemsModel1.clear();
        for (var i = 0; i < myModel1.count; ++i) {
            if (myModel1.get(i).text==="Dip")
                visibleItemsModel1.append(myModel1.get(i));
        }
    }

    function refreshVisibleItemsModelForNonDip() {
        visibleItemsModel1.clear();
        for (var i = 0; i < myModel1.count; ++i) {
            if (myModel1.get(i).text!=="Dip")
                visibleItemsModel1.append(myModel1.get(i));
        }
    }

    function refreshVisibleItemsModelForSweel() {
        visibleItemsModel1.clear();
        for (var i = 0; i < myModel1.count; ++i) {
            if (myModel1.get(i).text==="Sweel")
                visibleItemsModel1.append(myModel1.get(i));
        }
    }

    function refreshVisibleItemsModelForNonSweel() {
        visibleItemsModel1.clear();
        for (var i = 0; i < myModel1.count; ++i) {
            if (myModel1.get(i).text!=="Sweel")
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
    function setItemVisibilityForDip(index, visibility) {
        myModel1.setProperty( index, "visible", visibility);
        refreshVisibleItemsModelForDip();
    }
    function setItemVisibilityForSweel(index, visibility) {
        myModel1.setProperty( index, "visible", visibility);
        refreshVisibleItemsModelForSweel();
    }








    ListModel {
        id: myModel2
        ListElement { text: "07/04/2023"; visible: false }
        ListElement { text: "07/04/2023"; visible: false }
        ListElement { text: "07/04/2023"; visible: false }
        ListElement { text: "07/04/2023"; visible: false }
        ListElement { text: "07/04/2023"; visible: false }
        ListElement { text: "07/04/2023"; visible: false }
        ListElement { text: "07/04/2023"; visible: false }
        ListElement { text: "07/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "08/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "09/04/2023"; visible: false }
        ListElement { text: "10/04/2023"; visible: false }
        ListElement { text: "10/04/2023"; visible: false }
        ListElement { text: "10/04/2023"; visible: false }
        ListElement { text: "10/04/2023"; visible: false }
        ListElement { text: "10/04/2023"; visible: false }
        ListElement { text: "10/04/2023"; visible: false }
        ListElement { text: "10/04/2023"; visible: false }
        ListElement { text: "10/04/2023"; visible: false }
        ListElement { text: "10/04/2023"; visible: false }
        ListElement { text: "10/04/2023"; visible: false }
        ListElement { text: "11/04/2023"; visible: false }
        ListElement { text: "11/04/2023"; visible: false }
        ListElement { text: "11/04/2023"; visible: false }
        ListElement { text: "11/04/2023"; visible: false }
        ListElement { text: "11/04/2023"; visible: false }
        ListElement { text: "11/04/2023"; visible: false }
        ListElement { text: "11/04/2023"; visible: false }
        ListElement { text: "11/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "15/04/2023"; visible: false }
        ListElement { text: "20/04/2023"; visible: false }
        ListElement { text: "20/04/2023"; visible: false }
        ListElement { text: "20/04/2023"; visible: false }
        ListElement { text: "20/04/2023"; visible: false }
        ListElement { text: "20/04/2023"; visible: false }
        ListElement { text: "20/04/2023"; visible: false }
        ListElement { text: "20/04/2023"; visible: false }
        ListElement { text: "20/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }
        ListElement { text: "22/04/2023"; visible: false }


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
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:21"; visible: false }
        ListElement { text: "15:57:25"; visible: false }
        ListElement { text: "15:57:25"; visible: false }
        ListElement { text: "15:57:21"; visible: false }
        ListElement { text: "15:57:22"; visible: false }
        ListElement { text: "15:57:28"; visible: false }
        ListElement { text: "15:57:29"; visible: false }
        ListElement { text: "15:57:41"; visible: false }
        ListElement { text: "15:57:45"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:22"; visible: false }
        ListElement { text: "15:57:28"; visible: false }
        ListElement { text: "15:57:39"; visible: false }
        ListElement { text: "15:57:47"; visible: false }
        ListElement { text: "15:57:54"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:35"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:44"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:26"; visible: false }
        ListElement { text: "15:57:25"; visible: false }
        ListElement { text: "15:57:28"; visible: false }
        ListElement { text: "15:57:22"; visible: false }
        ListElement { text: "15:57:24"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:31"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:35"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:43"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:26"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:29"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:18"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:11"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:17"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:16"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:01"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:05"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:28"; visible: false }
        ListElement { text: "15:57:30"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:32"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:31"; visible: false }
        ListElement { text: "15:57:20"; visible: false }
        ListElement { text: "15:57:20"; visible: false }


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

        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9730.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
        ListElement { source: "images/Group 9729.svg"; visible: false }
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










    // Function to handle item visibility changes
    function setItemVisibility4(index, visibility) {
        myModel4.setProperty(index, "visible", visibility);
        refreshVisibleItemsModel4();
    }
















    Rectangle {
        id: rectangle4
        x: 6
        y: 5
        width: 895
        height: 301
        color: "#00ffffff"


        ChartView {
            id: stackedBar
            x: 0
            y: 0
            width: 902
            height: 325


            StackedBarSeries {
                name: "StackedBarSeries"

                axisX: BarCategoryAxis{
                    id: bar_axis

                    categories:["00:00",
                        " ",
                        "  ",
                        "   ",
                        "04:00",
                        "     ",
                        "      ",
                        "       ",
                        "08:00",
                        "         ",
                        "          ",
                        "           ",
                        "12:00",
                        "             ",
                        "              ",
                        "               ",
                        "16:00",
                        "                 ",
                        "                  ",
                        "                   ",
                        "20:00",
                        "                     ",
                        "                      ",
                        "                       ",
                        "23:59",
                    ]
                    labelsAngle: -90
                }


                BarSet {
                    color: "#cbcbcb"
                    label: "Dip"
                    values: [Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26)]
                }

                BarSet {
                    color: "#bbbbbb"
                    label: "Sweel"
                    values: [Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26)]
                }

                BarSet {
                    color: "#ababab"
                    label: "High Voltage"
                    values: [Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26)]
                }
                BarSet {
                    color: "#9b9b9b"
                    label: "Interruption"
                    values: [Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26)]
                }
                BarSet {
                    color: "#8b8b8b"
                    label: "Inrush Current"
                    values: [Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26)]
                }
                BarSet {
                    color: "#7b7b7b"
                    label: "Sag"
                    values: [Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26)]
                }

                BarSet {
                    color: "#6b6b6b"
                    label: "Sweel"
                    values: [Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26)]
                }

                BarSet {
                    color: "#5b5b5b"
                    label: "High Voltage"
                    values: [Math.floor(Math.random() * 26),0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), 0, Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26), Math.floor(Math.random() * 26)]
                }
                BarSet {
                    color: "#4b4b4b"
                    label: "High Voltage"
                    values: [13, 0, 8, 6,3, 0, 18, 13,0, 0, 18, 3,13, 0, 18, 13,3, 0, 28, 3,3, 0, 8, 23 ,11]
                }
                BarSet {
                    color: "#3b3b3b"
                    label: "High Voltage"
                    values: [3, 0, 28, 13,3, 0, 28, 13,0, 0, 18, 3,3, 0, 28, 13,3, 0, 28, 13,3, 0, 18, 3]
                }

            }
        }

    }



    GroupItem {
        x: 1411
        y: -131

        Rectangle {
            id: rectangle7
            x: 81
            y: 28
            width: 366
            height: 728
            color: "#ffffff"
        }

        Column {
            x: 81
            y: 78
            width: 366
            height: 600
            Repeater {
                Rectangle {
                    x: 0
                    y: 0
                    width: 366
                    height: 50
                    color: bgColors
                }
                model: 4
            }
            spacing: 50
        }

        Text {
            id: eventNo
            x: 93
            y: 29
            width: 112
            height: 50
            color: "#284863"
            text: qsTr("Event No:")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: eventType
            x: 93
            y: 79
            width: 112
            height: 50
            color: "#284863"
            text: qsTr("Event Type:")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: phase
            x: 93
            y: 129
            width: 112
            height: 50
            color: "#284863"
            text: qsTr("Phase:")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: duration
            x: 93
            y: 179
            width: 112
            height: 50
            color: "#284863"
            text: qsTr("Duration:")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: startTime
            x: 93
            y: 229
            width: 112
            height: 50
            color: "#284863"
            text: qsTr("Start Time:")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: endTime
            x: 93
            y: 279
            width: 112
            height: 50
            color: "#284863"
            text: qsTr("End Time:")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: severity
            x: 93
            y: 329
            width: 112
            height: 50
            color: "#284863"
            text: qsTr("Severity:")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: severity1
            x: 93
            y: 379
            width: 150
            height: 50
            color: "#284863"
            text: qsTr("Threshold Value:")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }
    }

    Image {
        id: foreventpageexam1
        x: 13
        y: 331
        width: 1776/2
        source: "images/foreventpageexam1.png"
        fillMode: Image.PreserveAspectFit


        MouseArea {
            anchors.fill: parent
            onClicked: handleMouseAction()
            onPositionChanged: handleMouseAction() // Bu satırı ekleyin

            function handleMouseAction() { // Bu işlemleri bir fonksiyon içerisine aldık
                var leftBoundary = foreventpageexam1.left
                var rightBoundary = foreventpageexam1.right;
                var topBoundary = foreventpageexam1.top;
                var bottomBoundary = foreventpageexam1.bottom;
                eventcursor.x=(mouseX - eventcursor.width / 2) +10 ;

           if(eventcursor.x>=890){
           eventcursor.x=890
           }
           else if(eventcursor.x<=60){
           eventcursor.x=60
           }
            }
        }
    }

    Image {
        id: forEventDipExam
        x: 548
        y: -467
        width: 1776/2
        source: "images/foreventpageexam1.png"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: foreventpageexam
        x: 912
        y: 1
        width: 736/2
        source: "images/foreventpageexam.svg"
        fillMode: Image.PreserveAspectFit

        Text {
            id:text1
            x: 158
            y: 389
            color: "#284863"
            text: "None"
            font.pixelSize: 18
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: text2
            x: 158
            y: 424
            color: "#284863"
            text: "None"
            font.pixelSize: 18
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: text3
            x: 158
            y: 459
            color: "#284863"
            text: "None"
            font.pixelSize: 18
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: text4
            x: 158
            y: 494
            color: "#284863"
            text: "None"
            font.pixelSize: 18
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: text5
            x: 158
            y: 529
            color: "#284863"
            text: "None"
            font.pixelSize: 18
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: text6
            x: 158
            y: 564
            color: "#284863"
            text: "None"
            font.pixelSize: 18
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: text7
            x: 158
            y: 599
            color: "#284863"
            text: "None"
            font.pixelSize: 18
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: text8
            x: 158
            y: 634
            color: "#284863"
            text: "None"
            font.pixelSize: 18
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: text9
            x: 25
            y: 669
            width: 331
            height: 59
            color: "#284863"
            text: " "
            font.pixelSize: 17
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }
    }


    Image {
        id: eventcursor
        x: 400
        y: 331
        width: 28/2
        visible: false
        source: "images/eventcursor.svg"
        fillMode: Image.PreserveAspectFit
    }



    Rectangle {
        id: rectangle8
        x: -348
        y: 1
        width: 347
        height: 728
        color: "#ffffff"


        Image {
            id: openMenu
            x: 348
            y: 261
            width: 72/2
            source: "images/Group 9785.svg"
            fillMode: Image.PreserveAspectFit

            MouseArea {
                id: mouseArea22
                x: -2
                y: -9
                width: 88
                height: 148
                onClicked: {
                    if(rectangle8.x===-348)
                    {
                        openMenu.source="images/CloseMenu.svg"
                        rectangle8.x=0
//                        openMenu.x=348
                    }
                    else{
                        openMenu.source="images/Group 9785.svg"
                        rectangle8.x=-348
//                        openMenu.x=0
                    }

                }
            }
        }

        CustomButtonHeaderWhiteBG {
            x: 185
            y: 18
            width: 94
            height: 99/2
            clip: true
        }

        CustomButtonHeaderBlackBG {
            x: 48
            y: 17
            width: 134
            height: 99/2
            clip: true
            Text {
                id: eventTypesHeader
                x: 4
                y: 0
                width: 130
                height: 50
                color: "#ffffff"
                text: qsTr("Event Types")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }
            Image {
                id: okUp
                x: 113
                y: 20
                width: 28/2
                source: "images/OkUp.svg"
                rotation: 180
                fillMode: Image.PreserveAspectFit
            }

            MouseArea {
                id: mouseArea
                x: 0
                y: 0
                width: 135
                height: 50

                onClicked: {
                    if(okUp.rotation===180)
                    {
                        okUp.rotation=0
                    }
                    else
                    {
                        okUp.rotation=180
                    }
                    //                dc.color="#217EFD"
                    //                setItemVisibility(0, true);
                    //                setItemVisibility1(0, true);
                    //                setItemVisibility2(0, true);
                    //                setItemVisibility3(0, true);
                    //                setItemVisibility4(0, true);
                    //                flickable.contentHeight=flickable.contentHeight+50
                }

            }
        }

        CustomButtonHeaderWhiteBG {
            x: 282
            y: 18
            width: 60
            height: 99/2
            clip: true
        }
        Text {
            id: idHeaderText
            x: 12
            y: 18
            width: 36
            height: 49
            color: "#284863"
            text: qsTr("ID")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: dateTimeHeader
            x: 188
            y: 18
            width: 91
            height: 49
            color: "#284863"
            text: qsTr("Date-Time")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: risksHeader
            x: 282
            y: 19
            width: 60
            height: 49
            color: "#284863"
            text: qsTr("Risk")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }





        Flickable {
            id: flickable
            x: 0
            y: 73
            width: 342
            height: 552
            contentY: 0
            clip: true
            flickDeceleration: 3000
            maximumFlickVelocity: 5000
            contentHeight: 0


            Column {
                x: 0
                y: -4
                width: 342
                height: 5120
                Repeater {
                    model: myModel.count
                    Rectangle{
                        x: 0
                        y: 0
                        width: 342
                        height: 50
                        color: bgColors
                    }
                }
                spacing: 50
            }

            Rectangle {
                id: rectangler
                x: 0
                y: 55
                width: 367
                height: 42
                visible: false
                color: "#59284863"
            }
            ListView {
                id:one
                width: 132
                height: 5140
                interactive: false
                contentY: 0
                cacheBuffer: 323
                maximumFlickVelocity: 5000
                contentHeight: 5500
                flickDeceleration: 3000
                clip: false
                x:50
                y:8
                model: visibleItemsModel1
                spacing: 10


                delegate: Rectangle {
                    id: delegateItem
                    x:0
                    y:-19
                    width: 342
                    height: 40
                    color: "#00000000"
                    border.color: "#00000000"

                    Text {
                        id: textItem
                        x:5
                        y:0
                        color: "#284863"
                        text: model.text
                        font.letterSpacing: -2
                        font.pixelSize: 18
                        font.family: "Akshar"



                    }


                    MouseArea {
                        width: 342
                        height: 40
                        x:-70
                        y:-5
                        onClicked: {
                            console.log("Tıklanan öğenin indeksi: " + (index+1));
                            text1.text=(index+1)
                            text2.text=myModel1.get(index).text
                            text3.text="C"
                            text3.color="#217efd"
                            text4.text="40ms"
                            text5.text=myModel2.get(index).text+"-"+myModel3.get(index).text


                            var text5Content = text5.text
                            var saatDakika = text5Content.split(":");
                            var dakika = myModel2.get(index).text+"-"+"15"+":"+parseInt(saatDakika[1])+":"+(parseInt(saatDakika[2])+40);
                            text6.text=dakika
                            text7.text=myModel4.get(index).source
                            if(text7.text==="images/Group 9729.svg")
                            {
                                text7.color="#ff5555"
                                text7.text="High Risky"
                            }
                            else if(text7.text==="images/Group 9730.svg")
                            {
                                text7.color="#fcae18"
                                text7.text="Medium Risky"
                            }

                            text8.text="100.12"
                            text9.text=" "+text2.text
                            if(text9.text===" Sweel")
                            {
                            foreventpageexam1.source="images/foreventpageexam1.png"
                            text9.text="                        There has been an increase in voltage."
                            }
                            else if(text9.text===" Dip")
                            {
                            foreventpageexam1.source="images/ForEventDipExam.png"
                            text9.text="                        There has been an decrease in voltage."
                            }
                            else if(text9.text===" Interruption")
                            {
                            foreventpageexam1.source="images/ForEventInterruptionExam.png"
                            text9.text="                        There was a voltage outage."
                            }
                            else {
                            text9.text="                        "+text9.text
                            }
//                            text6.text=(parseInt(myModel3.get(index).text) + 20 ).toString()

                            if(index>-1)
                            {
                                rectangler.visible=true
                                rectangler.x = delegateItem.x; // Tıklanan öğenin x konumunu 'rectangler'ın x konumuna eşitle
                                rectangler.y = delegateItem.y;
                            }
                        }
                    }
                }

            }


            ListView {
                id:two
                width: 96
                height: 5120
                interactive: false
                contentY: 0
                cacheBuffer: 323
                maximumFlickVelocity: 5000
                contentHeight: 5500
                flickDeceleration: 3000
                clip: false
                x:185
                y:2

                model: visibleItemsModel2
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
                            Layout.fillHeight: true
                            font.family: "Akshar"

                        }
                    }
                }
            }
            ListView {
                id:three
                width: 96
                height: 5132
                interactive: false
                contentY: 0
                cacheBuffer: 323
                maximumFlickVelocity: 5000
                contentHeight: 5500
                flickDeceleration: 3000
                clip: false
                x:183
                y:19

                model: visibleItemsModel3
                spacing: 10
                delegate: Item {
                    height: 40
                    RowLayout {
                        width: parent.width
                        Text {
                            color: "#284863"
                            text: model.text
                            Layout.fillWidth: true
                            font.letterSpacing: -2
                            font.pixelSize: 15
                            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            font.family: "Akshar"

                        }
                    }
                }
            }
            ListView {
                id:four
                width: 43
                height: 5120
                interactive: false
                contentY: 0
                cacheBuffer: 323
                maximumFlickVelocity: 5000
                contentHeight: 5500
                flickDeceleration: 3000
                clip: false
                x:299
                y:8

                model: visibleItemsModel4
                spacing: 10
                delegate: Item {
                    height: 40
                    RowLayout {
                        width: parent.width
                        //                    Text {
                        //                        color: "#284863"
                        //                        text: model.text
                        //                        Layout.fillWidth: true
                        //                        Layout.alignment: Qt.AlignHCenter
                        //                        font.letterSpacing: -2
                        //                        font.pixelSize: 18
                        //                        font.family: "Akshar"

                        //                    }
                        Image {
                            width:24
                            source: model.source
                            sourceSize.width: 26
                            sourceSize.height: 30
                        }
                    }
                }
            }

            ListView {
                width: 50
                height: 5120
                interactive: false
                contentY: 0
                cacheBuffer: 323
                maximumFlickVelocity: 5000
                contentHeight: 5500
                flickDeceleration: 3000
                clip: false
                x:4
                y:8

                model: visibleItemsModel
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
                            horizontalAlignment: Text.AlignLeft
                            font.family: "Akshar"
                            font.bold: true
                        }
                    }
                }
            }

            //        ScrollBar.vertical: ScrollBar{
            //        width: 20
            //        height: 555
            //        x:222

            //        policy: ScrollBar.AlwaysOff

            //        }



            ScrollBar.vertical: ScrollBar {
                x:222
                width: 10
                height: 650
                contentItem:
                    Image {
                    id: scrollBar
                    x: -4
                    y: 80
                    width: 20/2
                    height: 100/2
                    source: "images/ScrollBar.svg"
                    fillMode: Image.PreserveAspectFit
                }
            }


        }



        function refreshVisibleItemsModel1() {
            visibleItemsModel1.clear();
            for (var i = 0; i < myModel1.count; ++i) {
                if (myModel1.get(i).visible)
                    visibleItemsModel1.append(myModel1.get(i));
            }
        }

        function refreshVisibleItemsModelForDip() {
            visibleItemsModel1.clear();
            for (var i = 0; i < myModel1.count; ++i) {
                if (myModel1.get(i).text==="Dip")
                    visibleItemsModel1.append(myModel1.get(i));
            }
        }

        function refreshVisibleItemsModelForNonDip() {
            visibleItemsModel1.clear();
            for (var i = 0; i < myModel1.count; ++i) {
                if (myModel1.get(i).text!=="Dip")
                    visibleItemsModel1.append(myModel1.get(i));
            }
        }

        function refreshVisibleItemsModelForSweel() {
            visibleItemsModel1.clear();
            for (var i = 0; i < myModel1.count; ++i) {
                if (myModel1.get(i).text==="Sweel")
                    visibleItemsModel1.append(myModel1.get(i));
            }
        }

        function refreshVisibleItemsModelForNonSweel() {
            visibleItemsModel1.clear();
            for (var i = 0; i < myModel1.count; ++i) {
                if (myModel1.get(i).text!=="Sweel")
                    visibleItemsModel1.append(myModel1.get(i));
            }
        }


        // Create a separate model to store visible items
        Rectangle {
            id: rectangle1
            x: 48
            y: 66
            width: 134
            height: 145
            visible: false
            color: "#ffffff"
            CustomCheckBox{
                id:dip
                x:5
                y: 0
                width: 129
                height: 35
                clip: true

                onClickedSignal: {
                    for (var i = 0; i <= 99; i += 1) {
                        setItemVisibilityForDip(i, true);
                    }
                }
                onNonclickedSignal: {
                    for (var i = 0; i <= 99; i += 1) {
                        setItemVisibilityForDip(i, false);
                    }
                }

                Text {
                    id: dateTimeHeader1
                    x: 30
                    y: 0
                    width: 99
                    height: 35
                    color: "#284863"
                    text: qsTr("Dip")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Bold"
                    font.family: "Akshar"
                }

            }

            CustomCheckBox {
                id: sweel
                x: 5
                y: 35
                width: 129
                height: 35
                clip: true
                onClickedSignal: {
                    for (var i = 0; i <= 99; i += 1) {
                        setItemVisibilityForSweel(i, true);
                    }
                }
                onNonclickedSignal: {
                    for (var i = 0; i <= 99; i += 1) {
                        setItemVisibilityForSweel(i, false);
                    }
                }
                Text {
                    x: 30
                    y: 0
                    width: 99
                    height: 35
                    color: "#284863"
                    text: qsTr("Sweel")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "Bold"
                    font.family: "Akshar"
                }
            }


        }



        // Function to handle item visibility changes
        function setItemVisibility1(index, visibility) {
            myModel1.setProperty(index, "visible", visibility);
            refreshVisibleItemsModel1();
        }
        function setItemVisibilityForDip(index, visibility) {
            myModel1.setProperty( index, "visible", visibility);
            refreshVisibleItemsModelForDip();
        }
        function setItemVisibilityForSweel(index, visibility) {
            myModel1.setProperty( index, "visible", visibility);
            refreshVisibleItemsModelForSweel();
        }







        function refreshVisibleItemsModel2() {
            visibleItemsModel2.clear();
            for (var i = 0; i < myModel2.count; ++i) {
                if (myModel2.get(i).visible)
                    visibleItemsModel2.append(myModel2.get(i));
            }
        }

        // Create a separate model to store visible items



        // Function to handle item visibility changes
        function setItemVisibility2(index, visibility) {
            myModel2.setProperty(index, "visible", visibility);
            refreshVisibleItemsModel2();
        }


        function refreshVisibleItemsModel3() {
            visibleItemsModel3.clear();
            for (var i = 0; i < myModel3.count; ++i) {
                if (myModel3.get(i).visible)
                    visibleItemsModel3.append(myModel3.get(i));
            }
        }

        // Create a separate model to store visible items

        // Function to handle item visibility changes
        function setItemVisibility3(index, visibility) {
            myModel3.setProperty(index, "visible", visibility);
            refreshVisibleItemsModel3();
        }


        function refreshVisibleItemsModel4() {
            visibleItemsModel4.clear();
            for (var i = 0; i < myModel4.count; ++i) {
                if (myModel4.get(i).visible)
                    visibleItemsModel4.append(myModel4.get(i));
            }
        }



        Rectangle {
            id: rectangle3
            x: 10
            y: 643
            width: 325
            height: 74
            color: "#f7f8fa"
            border.color: "#a3979797"
        }




        Text {
            id: dateTimeHeader3
            x: 21
            y: 656
            width: 81
            height: 49
            color: "#284863"
            text: qsTr("Events ID")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }




        // Function to handle item visibility changes
        function setItemVisibility4(index, visibility) {
            myModel4.setProperty(index, "visible", visibility);
            refreshVisibleItemsModel4();
        }












        CustomButtonHeaderBlackBG{
            x:102
            y:657
            width: 223
            height: 47
            clip: true
        }



        Text {
            id: totalEventsHeader1
            x: 109
            y: 657
            width: 201
            height: 47
            color: "#ffffff"
            text: qsTr("First Measurement")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }



        Image {
            id: okUp1
            x: 303
            y: 676
            width: 28/2
            source: "images/OkUp.svg"
            rotation: 0
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: mouseArea1
            x: 102
            y: 656
            width: 225
            height: 50
            onClicked: {
                if(okUp1.rotation===180)
                {
                    okUp1.rotation=0
                }
                else
                {
                    okUp1.rotation=180
                }

            }
        }






    }

}


