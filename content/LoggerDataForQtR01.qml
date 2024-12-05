import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Controls 1.4
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtQuick.Shapes 1.0
import QtQuick.Layouts 1.10
import QtQuick.Timeline 1.0
import QtCharts 2.3

import Qt.labs.calendar 1.0

//import QtQuick.Controls.Styles 1.1


Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#f7f8fa"
    border.color: "#f7f8fa"
    property int animationDurationForHarmoncis: 2000
    property int animationsForHarmonicClickedCircleOpen:500

    property bool forLoggerCursor:true



    Rectangle {
        id: maxPointIndicator
        width: 10
        height: 10
        color: "red"
        visible: false // Başlangıçta görünmez yap
        radius: 5
    }



    Component.onCompleted: {
        customSwitchA.clickedSignal("kerem")
        customSwitchA.rectangle1.x=48
        a.color="#FF5555"
        customSwitchA.rectangle.color="#FF5555"

        customSwitchB.clickedSignal("kerem")
        customSwitchB.rectangle1.x=48
        b.color="#FCAE18"
        customSwitchB.rectangle.color="#FCAE18"

        customSwitchC.clickedSignal("kerem")
        customSwitchC.rectangle1.x=48
        c.color="#217EFD"
        customSwitchC.rectangle.color="#217EFD"

        customSwitchN.nonclickedSignal("kerem")
        customSwitchN.rectangle1.x=24
        n.color="#617284"
        customSwitchN.rectangle.color="#617284"

        graphForLoggerDataExam.source="images/GraphForLoggerDataExam.svg"

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












    Image {
        id: bigGraphForLoggerData
        x: 18
        y: 8
        width: 1753/2
        visible: false
        source: "images/bigGraphForLoggerData.svg"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            anchors.fill: parent
            onClicked: handleMouseAction()
            onPositionChanged: handleMouseAction() // Bu satırı ekleyin

            function handleMouseAction() { // Bu işlemleri bir fonksiyon içerisine aldık
                var leftBoundary = graphForLoggerDataExam.left
                var rightBoundary = graphForLoggerDataExam.right;
                var topBoundary = graphForLoggerDataExam.top;
                var bottomBoundary = graphForLoggerDataExam.bottom;
                cursorForLogger.x=(mouseX - cursorForLogger.width / 2) +20 ;

                if(cursorForLogger.x>=890){
                    cursorForLogger.x=890
                }
                else if(cursorForLogger.x<=62){
                    cursorForLogger.x=62
                }
            }
        }
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



    Image {
        id: rightMenuForLoggerData
        x: 913
        y: 0
        width: 735/2
        source: "images/rightMenuForLoggerData.svg"
        fillMode: Image.PreserveAspectFit

    }



    Image {
        id: graphForLoggerDataExam
        x: 18
        y: 8
        width: 1753/2
        visible: true
        source: "images/GraphForLoggerDataExam.svg"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            anchors.fill: parent
            onClicked: handleMouseAction()
            onPositionChanged: handleMouseAction() // Bu satırı ekleyin

            function handleMouseAction() { // Bu işlemleri bir fonksiyon içerisine aldık
                var leftBoundary = graphForLoggerDataExam.left
                var rightBoundary = graphForLoggerDataExam.right;
                var topBoundary = graphForLoggerDataExam.top;
                var bottomBoundary = graphForLoggerDataExam.bottom;
                cursorForLogger.x=(mouseX - cursorForLogger.width / 2) +20 ;

                if(cursorForLogger.x>=890){
                    cursorForLogger.x=890
                }
                else if(cursorForLogger.x<=62){
                    cursorForLogger.x=62
                }
            }
        }
    }



    Rectangle {
        id: __multi__selection__

        Text {
            id: beginGraph0
            x: 61
            y: 633
            color: "#284863"
            text: qsTr("00:00")
            font.pixelSize: 15
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: graph2Text1
            x: 139
            y: 633
            color: "#284863"
            text: qsTr("02:00")
            font.pixelSize: 15
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: graph2Text2
            x: 219
            y: 633
            color: "#284863"
            text: qsTr("04:00")
            font.pixelSize: 15
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: graph2Text3
            x: 299
            y: 633
            color: "#284863"
            text: qsTr("12ms")
            font.pixelSize: 15
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: graph2Text4
            x: 379
            y: 633
            color: "#284863"
            text: qsTr("16ms")
            font.pixelSize: 15
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: graph2Text5
            x: 459
            y: 633
            color: "#284863"
            text: qsTr("20ms")
            font.pixelSize: 15
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: graph2Text6
            x: 539
            y: 633
            color: "#284863"
            text: qsTr("24ms")
            font.pixelSize: 15
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: graph2Text7
            x: 619
            y: 633
            color: "#284863"
            text: qsTr("28ms")
            font.pixelSize: 15
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: graph2Text8
            x: 699
            y: 633
            color: "#284863"
            text: qsTr("32ms")
            font.pixelSize: 15
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: graph2Text9
            x: 779
            y: 633
            width: 32
            height: 13
            color: "#284863"
            text: qsTr("36ms")
            font.pixelSize: 15
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            id: endGraph
            x: 855
            y: 633
            color: "#284863"
            text: qsTr("40ms")
            font.pixelSize: 15
            font.styleName: "Light"
            font.family: "Akshar"
        }

    }

    // Function to handle item visibility changes
    function setItemVisibility4(index, visibility) {
        myModel4.setProperty(index, "visible", visibility);
        refreshVisibleItemsModel4();
    }





    Image {
        id: forEventCursor1
        x: 327
        y: 654
        width: 1126/2
        source: "images/LoggerCursor.svg"
        fillMode: Image.PreserveAspectFit
    }







    Image {
        id: holdNonClicked
        x: 59
        y: 660
        width: 834
        height: 64
        source: "images/HoldNonClicked.svg"
        fillMode: Image.Stretch
    }



    Image {
        id: holdClicked
        x: 59
        y: 754
        width: 834
        source: "images/HoldClicked.svg"
        fillMode: Image.PreserveAspectFit
    }



    MouseArea{
        x: 59
        y: 662
        width: 834
        height:64
        enabled: menu.x===-348
        onClicked: {
            if(forLoggerCursor===true){
                forLoggerCursor=false
                holdNonClicked.source="images/HoldClicked.svg"
                holdButtonClickedAnim.start()
                cursorForLogger.visible=true

            }
            else{
                forLoggerCursor=true
                holdNonClicked.source="images/HoldNonClicked.svg"
                holdButtonNonClickedAnim.start()
                cursorForLogger.visible=false
            }

        }
    }


    Text {
        id: holdButtonText
        x: 59
        y: 660
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




    Text {
        id: durationText1
        x: 1077
        y: 120
        width: 200
        height: 35
        color: "#284863"
        text: qsTr("12h:15m")
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }




    Text {
        id: phases1
        x: 1077
        y: 85
        width: 200
        height: 35
        color: "#284863"
        text: addTextWithColor(" A", "#FF5555") + addTextWithColor(" B", "#FCAE18") + addTextWithColor(" C", "#217EFD")
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }




    Text {
        id: label1
        x: 1077
        y: 50
        width: 204
        height: 35
        color: "#284863"
        text:  "Voltage - Max"
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }




    Text {
        id: startTime1
        x: 1077
        y: 155
        width: 200
        height: 35
        color: "#284863"
        text: qsTr(" 05/04/2023  - 11:24:10:400")
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }




    Text {
        id: endTime1
        x: 1077
        y: 190
        width: 200
        height: 35
        color: "#284863"
        text: qsTr(" 05/04/2023  - 23:39:10:600")
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }





    Text {
        id: worstValue1
        x: 1077
        y: 225
        width: 200
        height: 35
        color: "#284863"
        text: qsTr("320.22 - C")
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }





    Text {
        id: worstValueTime1
        x: 1077
        y: 260
        width: 200
        height: 35
        color: "#284863"
        text: qsTr(" 05/04/2023  - 23:34:10:600")
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }



    Text {
        id: durationText2
        x: 1077
        y: 426
        width: 200
        height: 35
        color: "#284863"
        text: qsTr("  12h:15m")
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }



    Text {
        id: phases2
        x: 1077
        y: 391
        width: 200
        height: 35
        color: "#284863"
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }



    Text {
        id: label2
        x: 1077
        y: 356
        width: 204
        height: 35
        color: "#284863"
        text: "Voltage - Max"
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }



    Text {
        id: startTime2
        x: 1077
        y: 461
        width: 200
        height: 35
        color: "#284863"
        text: qsTr(" 05/04/2023  - 11:24:10:400")
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }



    Text {
        id: endTime2
        x: 1077
        y: 496
        width: 200
        height: 35
        color: "#284863"
        text: qsTr(" 05/04/2023  - 23:39:10:600")
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }



    Text {
        id: worstValue2
        x: 1077
        y: 531
        width: 200
        height: 35
        color: "#284863"
        text: qsTr("320.22 - C")
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }



    Text {
        id: worstValueTime2
        x: 1077
        y: 566
        width: 200
        height: 35
        color: "#284863"
        text: qsTr(" 05/04/2023  - 23:34:10:600")
        font.letterSpacing: -2
        font.pixelSize: 17
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.styleName: "Light"
        font.family: "Akshar"
    }



    Image {
        id: cursorForLogger
        x: 450
        y: 5
        width: 28/2
        visible: false
        source: "images/CursorForLogger.svg"
        fillMode: Image.PreserveAspectFit
    }



    Image {
        id: menu
        x: -348
        y: 0
        width: 696/2
        source: "images/Menu.svg"



        Rectangle {
            id: mainForm
            x:5
            y:100
            height: cellSize * 12
            width: cellSize * 9.6
            property double mm: 5
            property double cellSize: mm * 7
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
                    from: new Date(new Date().getFullYear(), 0, 1);
                    to: new Date(new Date().getFullYear(), 11, 31);
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
                            property bool highlighted: enabled && model.day === calendar.currentDay && model.month === calendar.currentMonth

                            enabled: model.month === monthGrid.month
                            color: enabled && highlighted ? "#217EFD": "white"

                            Text {
                                anchors.centerIn: parent
                                text: model.day
                                font.pixelSize: mainForm.fontSizePx
                                scale: highlighted ? 1.25 : 1
                                Behavior on scale { NumberAnimation { duration: 150 } }
                                visible: parent.enabled
                                color: parent.highlighted ? "white" : "black"
                            }
                            MouseArea {
                                anchors.fill: parent
                                onClicked: {
                                    calendar.currentDay = model.date.getDate();
                                    calendar.currentMonth = model.date.getMonth();
                                    calendar.currentYear = model.date.getFullYear();
                                    calendar.week = model.date.getDay();
                                    mainForm.setCurrentDate();
                                    startTime1.text=calendar.weekNames[calendar.week].slice(0, 3) + ", " + calendar.currentDay + " " + calendar.months[calendar.currentMonth].slice(0, 3) + " - 00:24:10:400"
                                    endTime1.text=calendar.weekNames[calendar.week].slice(0, 3) + ", " + calendar.currentDay + " " + calendar.months[calendar.currentMonth].slice(0, 3) + " - 23:24:10:400"
                                    startTime2.text=calendar.weekNames[calendar.week].slice(0, 3) + ", " + calendar.currentDay + " " + calendar.months[calendar.currentMonth].slice(0, 3) + " - 00:24:10:400"
                                    endTime2.text=calendar.weekNames[calendar.week].slice(0, 3) + ", " + calendar.currentDay + " " + calendar.months[calendar.currentMonth].slice(0, 3) + " - 23:24:10:400"

                                }
                            }
                        }
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
                property int startYear: 1940
                property int endYear : new Date().getFullYear();
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



        Image {
            x: 5
            y: 473
            width: 338
            height: 0
            visible: true
            source: "images/BGForHeader.svg"


            ParallelAnimation{
                id: clickedVoltageGraph1
                PropertyAnimation {
                    target: chosingHeaderGraph1
                    property: "x"
                    duration: 200
                    to: graph1.x
                }
                PropertyAnimation {
                    target: chosingHeaderGraph1
                    property: "width"
                    duration: 200
                    to: graph1.width
                }
                PropertyAnimation {
                    target: graph1
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
                    to: graph2.x
                }
                PropertyAnimation {
                    target: chosingHeaderGraph1
                    property: "width"
                    duration: 200
                    to: graph2.width
                }
                PropertyAnimation {
                    target: graph2
                    property: "color"
                    duration: 200
                    to: "#284863"
                }
            }



            ParallelAnimation {
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


            ParallelAnimation {
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



            MouseArea {
                id:mouseAreaGraph1
                x: graph1.x
                y: 1
                width: graph1.width
                height: 53
                enabled: okUp22.rotation===180 && okUp23.rotation===180
                onClicked: {
                    graph2.color="#A7AEB6"
                    clickedVoltageGraph1.start()
                    //                    secondGraph.visible=false
                    graphForLoggerDataExam.visible=false
                    bigGraphForLoggerData.visible=true
                    rectangle11.visible=true
                }
            }



            MouseArea {
                id:mouseAreaGraph2
                x: graph2.x
                y: 1
                width: graph2.width
                height: 53
                enabled: okUp222.rotation===180 && okUp24.rotation===180
                onClicked: {
                    graph1.color="#A7AEB6"
                    clickedCurrentGraph1.start()
                    //                    secondGraph.visible=true
                    graphForLoggerDataExam.visible=true
                    bigGraphForLoggerData.visible=false
                    rectangle11.visible=false
                }
            }

            fillMode: Image.Stretch

            Rectangle {
                x: 0
                y: 36
                width: 336
                height: 150
                color: "#ffffff"
                border.color: "#adb1b4"




                Text {
                    id: graph3
                    x: 8
                    y: 0
                    width: 168
                    height: 50
                    color: "#284863"
                    text: qsTr("1st Graph")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }

                Text {
                    id: graph4
                    x: 176
                    y: 0
                    width: 168
                    height: 50
                    color: "#284863"
                    text: qsTr("2nd Graph")
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "Light"
                }




                Rectangle {
                    id: rectangle122
                    x: 4
                    y: 47
                    width: 161
                    height: 40
                    border.color: "#d9d9d9"
                    border.width: 1
                    color: "#ffffff"


                    Image {
                        id: okUp22
                        x: 139
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        rotation: 180
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: chosenText22
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        anchors.leftMargin: 5


                    }


                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: -1
                        anchors.leftMargin: -5
                        anchors.bottomMargin: -5
                        anchors.topMargin: -5
                        onClicked: {

                            if(okUp22.rotation===0)
                            {
                                okUp22.rotation=180
                                backgroundList22.visible=false
                                listView22.visible=false
                                elementText22.visible=false
                            }
                            else
                            {
                                okUp22.rotation=0
                                backgroundList22.visible=true
                                listView22.visible=true
                                elementText22.visible=false
                            }
                        }
                    }


                    Text {
                        id: elementText22
                        x: 5
                        y: 0
                        width: 156
                        height: 40
                        color: "#d4d4d4"
                        text: qsTr("Voltage")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }

                }



                Rectangle {
                    id: rectangle1222
                    x: 172
                    y: 47
                    width: 161
                    height: 40
                    border.color: "#d9d9d9"
                    border.width: 1
                    color: "#ffffff"


                    Image {
                        id: okUp222
                        x: 139
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        rotation: 180
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: chosenText222
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        anchors.leftMargin: 5


                    }


                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: -1
                        anchors.leftMargin: -5
                        anchors.bottomMargin: -5
                        anchors.topMargin: -5
                        onClicked: {

                            if(okUp222.rotation===0)
                            {
                                okUp222.rotation=180
                                backgroundList222.visible=false
                                listView222.visible=false
                                elementText222.visible=false
                            }
                            else
                            {
                                okUp222.rotation=0
                                backgroundList222.visible=true
                                listView222.visible=true
                                elementText222.visible=false
                            }
                        }
                    }


                    Text {
                        id: elementText222
                        x: 5
                        y: 0
                        width: 156
                        height: 40
                        color: "#d4d4d4"
                        text: qsTr("Voltage")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }



                }

                Rectangle {
                    id: rectangle123
                    x: 4
                    y: 93
                    width: 161
                    height: 40
                    border.color: "#d9d9d9"
                    border.width: 1
                    color: "#ffffff"


                    Image {
                        id: okUp23
                        x: 139
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        rotation: 180
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: chosenText23
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        anchors.leftMargin: 5


                    }


                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: -1
                        anchors.leftMargin: -5
                        anchors.bottomMargin: -5
                        anchors.topMargin: -5
                        onClicked: {

                            if(okUp23.rotation===0)
                            {
                                okUp23.rotation=180
                                backgroundList23.visible=false
                                listView23.visible=false


                                elementText23.visible=false
                            }
                            else
                            {
                                okUp23.rotation=0
                                backgroundList23.visible=true
                                listView23.visible=true


                                elementText23.visible=false
                            }
                        }
                    }


                    Text {
                        id: elementText23
                        x: 5
                        y: 0
                        width: 156
                        height: 40
                        color: "#d4d4d4"
                        text: qsTr("Max")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }

                }


                Rectangle {
                    id: rectangle124
                    x: 172
                    y: 93
                    width: 161
                    height: 40
                    border.color: "#d9d9d9"
                    border.width: 1
                    color: "#ffffff"


                    Image {
                        id: okUp24
                        x: 139
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        rotation: 180
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: chosenText24
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        anchors.leftMargin: 5


                    }


                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: -1
                        anchors.leftMargin: -5
                        anchors.bottomMargin: -5
                        anchors.topMargin: -5
                        onClicked: {

                            if(okUp24.rotation===0)
                            {
                                okUp24.rotation=180
                                backgroundList24.visible=false
                                listView24.visible=false
                                elementText24.visible=false
                            }
                            else
                            {
                                okUp24.rotation=0
                                backgroundList24.visible=true
                                listView24.visible=true
                                elementText24.visible=false
                            }
                        }
                    }


                    Text {
                        id: elementText24
                        x: 5
                        y: 0
                        width: 156
                        height: 40
                        color: "#d4d4d4"
                        text: qsTr("Max")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }

                }

            }
            Item {
                id:chosingHeaderGraph1
                x: graph2.x
                y: -3
                width: graph2.width
                height: 40
                Rectangle {

                    border.color: "#adb1b4"
                    border.width: 1
                    anchors.fill: parent
                    anchors.topMargin: 6
                    anchors.rightMargin: 0
                    anchors.bottomMargin: -border.width
                }
                clip: true
            }

            Text {
                id:graph1
                x: 0
                y: -4
                width: 168
                height: 50
                color: "#a7aeb6"
                text: qsTr("1 Graph")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            Text {
                id:graph2
                x: 168
                y: -4
                width: 168
                height: 50
                color: "#284863"
                text: qsTr("2 Graph")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }



            Rectangle{
                id:backgroundList23
                x:5
                y:-45
                width: rectangle123.width
                height:175

                visible: false

            }



            ListView {
                id: listView23
                x: 4
                y: -45
                width: rectangle123.width
                height: backgroundList23.height
                visible: false
                clip: true


                model: ListModel {
                    ListElement { name: "Max" }
                    ListElement { name: "Min" }
                    ListElement { name: "Peak to Peak" }
                    ListElement { name: "Peak+" }
                    ListElement { name: "Peak-" }
                    ListElement { name: "Average" }
                    ListElement { name: "RMS" }

                }

                delegate: Item {
                    width: listView23.width
                    height: 60

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
                                chosenText23.text = model.name
                                if(chosenText23.text==="Max"){
                                    label1.text=chosenText22.text + "  " + "Max"
                                }

                                else if(chosenText23.text==="Min"){
                                    label1.text=chosenText22.text + "  " + "Min"
                                }

                                else if(chosenText23.text==="Peak to Peak"){
                                    label1.text=chosenText22.text + "  " + "Peak to Peak"
                                }

                                else if(chosenText23.text==="Peak+"){
                                    label1.text=chosenText22.text  + "  " + "Peak+"
                                }


                                else if(chosenText23.text==="Peak-"){
                                    label1.text=chosenText22.text + "  " + "Peak-"
                                }

                                else if(chosenText23.text==="Average"){
                                    label1.text=chosenText22.text + "  " + "Average"
                                }
                                else if(chosenText23.text==="RMS"){
                                    label1.text=chosenText22.text + "  " + "RMS"
                                }


                            }
                        }
                    }
                }
            }



            Rectangle{
                id:backgroundList24
                x:173
                y:-45
                width: rectangle124.width
                height:175

                visible: false

            }



            ListView {
                id: listView24
                x: 172
                y: -45
                width: rectangle124.width
                height: backgroundList24.height
                visible: false
                clip: true


                model: ListModel {
                    ListElement { name: "Max" }
                    ListElement { name: "Min" }
                    ListElement { name: "Peak to Peak" }
                    ListElement { name: "Peak+" }
                    ListElement { name: "Peak-" }
                    ListElement { name: "Average" }
                    ListElement { name: "RMS" }

                }

                delegate: Item {
                    width: listView24.width
                    height: 60

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
                                chosenText24.text = model.name
                                if(chosenText24.text==="Max"){
                                    label2.text=chosenText222.text + "  " + "Max"
                                }

                                else if(chosenText24.text==="Min"){
                                    label2.text=chosenText222.text + "  " + "Min"
                                }

                                else if(chosenText24.text==="Peak to Peak"){
                                    label2.text=chosenText222.text + "  " + "Peak to Peak"
                                }

                                else if(chosenText24.text==="Peak+"){
                                    label2.text=chosenText222.text  + "  " + "Peak+"
                                }


                                else if(chosenText24.text==="Peak-"){
                                    label2.text=chosenText222.text + "  " + "Peak-"
                                }

                                else if(chosenText24.text==="Average"){
                                    label2.text=chosenText222.text + "  " + "Average"
                                }
                                else if(chosenText24.text==="RMS"){
                                    label2.text=chosenText222.text + "  " + "RMS"
                                }


                            }
                        }
                    }
                }
            }




            Rectangle{
                id:backgroundList22
                x:5
                y:-92
                width: rectangle122.width
                height:175

                visible: false

            }

            ListView {
                id: listView22
                x: 4
                y: -92
                width:rectangle122.width
                height: backgroundList22.height
                visible: false
                clip: true


                model: ListModel {
                    ListElement { name: "Voltage" }
                    ListElement { name: "Current" }
                    ListElement { name: "Active Power" }
                    ListElement { name: "Reactive Power" }
                    ListElement { name: "Apparent power" }
                    ListElement { name: "Active Energy" }
                    ListElement { name: "Reactive Energy" }
                    ListElement { name: "Apparent Energy" }


                }

                delegate: Item {
                    width: listView22.width
                    height: 60

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
                                chosenText22.text = model.name
                                if(chosenText22.text==="Voltage"){
                                    label1.text=chosenText22.text + "  " + chosenText23.text
                                }

                                else if(chosenText22.text==="Current"){
                                    label1.text=chosenText22.text + "  " + chosenText23.text
                                }

                                else if(chosenText22.text==="Active Power"){
                                    label1.text=chosenText22.text + "  " + chosenText23.text
                                }

                                else if(chosenText22.text==="Reactive Power"){
                                    label1.text=chosenText22.text + "  " + chosenText23.text
                                }

                                else if(chosenText22.text==="Apparent power"){
                                    label1.text=chosenText22.text + "  " + chosenText23.text
                                }
                                else if(chosenText22.text==="Active Energy"){
                                    label1.text=chosenText22.text + "  " + chosenText23.text
                                }
                                else if(chosenText22.text==="Reactive Energy"){
                                    label1.text=chosenText22.text + "  " + chosenText23.text
                                }
                                else if(chosenText22.text==="Apparent Energy"){
                                    label1.text=chosenText22.text + "  " + chosenText23.text
                                }


                            }
                        }
                    }
                }
            }


            Rectangle{
                id:backgroundList222
                x:173
                y:-91
                width: rectangle1222.width
                height:175
                visible: false
            }

            ListView {
                id: listView222
                x: 172
                y: -91
                width: rectangle1222.width
                height: backgroundList222.height
                visible: false
                clip: true


                model: ListModel {
                    ListElement { name: "Voltage" }
                    ListElement { name: "Current" }
                    ListElement { name: "Active Power" }
                    ListElement { name: "Reactive Power" }
                    ListElement { name: "Apparent power" }
                    ListElement { name: "Active Energy" }
                    ListElement { name: "Reactive Energy" }
                    ListElement { name: "Apparent Energy" }
                }

                delegate: Item {
                    width: listView222.width
                    height: 60

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
                                chosenText222.text = model.name
                                if(chosenText222.text==="Voltage"){
                                    label2.text=chosenText222.text + "  " + chosenText24.text
                                }

                                else if(chosenText222.text==="Current"){
                                    label2.text=chosenText222.text + "  " + chosenText24.text
                                }

                                else if(chosenText222.text==="Active Power"){
                                    label2.text=chosenText222.text + "  " + chosenText24.text
                                }

                                else if(chosenText222.text==="Reactive Power"){
                                    label2.text=chosenText222.text + "  " + chosenText24.text
                                }

                                else if(chosenText222.text==="Apparent power"){
                                    label2.text=chosenText222.text + "  " + chosenText24.text
                                }
                                else if(chosenText222.text==="Active Energy"){
                                    label2.text=chosenText222.text + "  " + chosenText24.text
                                }
                                else if(chosenText222.text==="Reactive Energy"){
                                    label2.text=chosenText222.text + "  " + chosenText24.text
                                }
                                else if(chosenText222.text==="Apparent Energy"){
                                    label2.text=chosenText222.text + "  " + chosenText24.text
                                }




                            }
                        }
                    }
                }
            }

        }

        Image {
            id: bgForPhases
            x: 5
            y: 662
            width: 338
            height: 60
            source: "images/BGHeader.svg"
            fillMode: Image.Tile

            CustomSwitchForPhaseA {
                id:customSwitchA
                x: 8
                y: 13
                Text {
                    id:a
                    x: 0
                    y: 0
                    width: 80
                    height: 35
                    color: "#ff5555"
                    text: qsTr("A")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                }
                function addTextWithColor(textToAdd, color) {
                    if (phases1.text.indexOf(textToAdd) === -1) {
                        phases1.text += "<font color='" + color + "'>" + textToAdd + "</font>";
                        phases2.text += "<font color='" + color + "'>" + textToAdd + "</font>";
                    }
                }
                function removeTextWithColor(textToRemove, color) {
                    var pattern = "<font color='" + color + "'>" + textToRemove + "</font>";
                    var regex = new RegExp(pattern, "g");
                    phases1.text = phases1.text.replace(regex, "");
                    phases2.text = phases2.text.replace(regex, "");
                }

                onClickedSignal: {
                    a.color="#ff5555"
                    if(customSwitchB.rectangle1.x===48 && customSwitchC.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExam.svg"
                        addTextWithColor(" A", "#FF5555");
                        addTextWithColor(" B", "#FCAE18");
                        addTextWithColor(" C", "#217EFD");

                    }
                    else if(customSwitchB.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamAB.svg"
                        addTextWithColor(" A", "#FF5555");
                        addTextWithColor(" B", "#FCAE18");

                    }
                    else if(customSwitchC.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamAC.svg"
                        addTextWithColor(" A", "#FF5555");
                        addTextWithColor(" C", "#217EFD");
                    }
                    else if(customSwitchB.rectangle1.x===24 && customSwitchC.rectangle1.x===24){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamA.svg"
                        addTextWithColor(" A", "#FF5555");

                    }
                }
                onNonclickedSignal: {
                    a.color="#617284"

                    if(customSwitchB.rectangle1.x===48 && customSwitchC.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamBC.svg"
                        removeTextWithColor(" A", "#FF5555");
                    }
                    else if(customSwitchB.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamB.svg"
                        removeTextWithColor(" A", "#FF5555");

                    }
                    else if(customSwitchC.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamC.svg"
                        removeTextWithColor(" A", "#FF5555");

                    }
                    else if(customSwitchB.rectangle1.x===24 && customSwitchC.rectangle1.x===24){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamNon.svg"
                        removeTextWithColor(" A", "#FF5555");
                        removeTextWithColor(" B", "#FCAE18");
                        removeTextWithColor(" C", "#217EFD");
                    }
                }


            }

            CustomSwitchForPhaseB {
                id:customSwitchB
                x: 93
                y: 13
                Text {
                    id:b
                    x: 0
                    y: 0
                    width: 80
                    height: 35
                    color: "#FCAE18"
                    text: qsTr("B")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                }

                function addTextWithColor(textToAdd, color) {
                    if (phases1.text.indexOf(textToAdd) === -1) {
                        phases1.text += "<font color='" + color + "'>" + textToAdd + "</font>";
                        phases2.text += "<font color='" + color + "'>" + textToAdd + "</font>";
                    }


                }
                function removeTextWithColor(textToRemove, color) {
                    var pattern = "<font color='" + color + "'>" + textToRemove + "</font>";
                    var regex = new RegExp(pattern, "g");
                    phases1.text = phases1.text.replace(regex, "");
                    phases2.text = phases2.text.replace(regex, "");
                }
                onClickedSignal: {
                    b.color="#FCAE18"


                    if(customSwitchA.rectangle1.x===48 && customSwitchC.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExam.svg"
                        addTextWithColor(" A", "#FF5555");
                        addTextWithColor(" B", "#FCAE18");
                        addTextWithColor(" C", "#217EFD");
                    }
                    else if(customSwitchA.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamAB.svg"
                        addTextWithColor(" A", "#FF5555");
                        addTextWithColor(" B", "#FCAE18");

                    }
                    else if(customSwitchC.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamBC.svg"
                        addTextWithColor(" B", "#FCAE18");
                        addTextWithColor(" C", "#217EFD");
                    }
                    else if(customSwitchA.rectangle1.x===24 && customSwitchC.rectangle1.x===24){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamB.svg"
                    }

                }
                onNonclickedSignal: {
                    b.color="#617284"
                    if(customSwitchA.rectangle1.x===48 && customSwitchC.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamAC.svg"
                        removeTextWithColor(" B", "#FCAE18");

                    }
                    else if(customSwitchA.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamA.svg"
                        removeTextWithColor(" B", "#FCAE18");
                        removeTextWithColor(" C", "#217EFD");
                    }
                    else if(customSwitchC.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamC.svg"
                        removeTextWithColor(" A", "#FF5555");
                        removeTextWithColor(" B", "#FCAE18");

                    }
                    else if(customSwitchA.rectangle1.x===24 && customSwitchC.rectangle1.x===24){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamNon.svg"
                        removeTextWithColor(" A", "#FF5555");
                        removeTextWithColor(" B", "#FCAE18");
                        removeTextWithColor(" C", "#217EFD");
                    }


                }

            }

            CustomSwitchForPhaseC {
                id:customSwitchC
                x: 178
                y: 13
                Text {
                    id:c
                    x: 0
                    y: 0
                    width: 80
                    height: 35
                    color: "#217EFD"
                    text: qsTr("C")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                }
                function addTextWithColor(textToAdd, color) {
                    if (phases1.text.indexOf(textToAdd) === -1) {
                        phases1.text += "<font color='" + color + "'>" + textToAdd + "</font>";
                        phases2.text += "<font color='" + color + "'>" + textToAdd + "</font>";
                    }


                }
                function removeTextWithColor(textToRemove, color) {
                    var pattern = "<font color='" + color + "'>" + textToRemove + "</font>";
                    var regex = new RegExp(pattern, "g");
                    phases1.text = phases1.text.replace(regex, "");
                    phases2.text = phases2.text.replace(regex, "");
                }

                onClickedSignal: {
                    c.color="#217EFD"

                    if(customSwitchA.rectangle1.x===48 && customSwitchB.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExam.svg"
                        addTextWithColor(" A", "#FF5555");
                        addTextWithColor(" B", "#FCAE18");
                        addTextWithColor(" C", "#217EFD");
                    }
                    else if(customSwitchA.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamAC.svg"
                        addTextWithColor(" A", "#FF5555");
                        addTextWithColor(" C", "#217EFD");
                    }
                    else if(customSwitchB.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamBC.svg"
                        addTextWithColor(" B", "#FCAE18");
                        addTextWithColor(" C", "#217EFD");
                    }
                    else if(customSwitchA.rectangle1.x===24 && customSwitchB.rectangle1.x===24){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamC.svg"
                        addTextWithColor(" C", "#217EFD");
                    }
                }
                onNonclickedSignal: {
                    c.color="#617284"
                    if(customSwitchA.rectangle1.x===48 && customSwitchB.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamAB.svg"
                        removeTextWithColor(" C", "#217EFD");
                    }
                    else if(customSwitchA.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamA.svg"
                        removeTextWithColor(" B", "#FCAE18");
                        removeTextWithColor(" C", "#217EFD");
                    }
                    else if(customSwitchB.rectangle1.x===48){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamB.svg"
                        removeTextWithColor(" A", "#FF5555");
                        removeTextWithColor(" C", "#217EFD");
                    }
                    else if(customSwitchA.rectangle1.x===24 && customSwitchB.rectangle1.x===24){
                        graphForLoggerDataExam.source="images/GraphForLoggerDataExamNon.svg"
                        removeTextWithColor(" A", "#FF5555");
                        removeTextWithColor(" B", "#FCAE18");
                        removeTextWithColor(" C", "#217EFD");
                    }

                }

            }

            CustomSwitchForPhaseN {
                id:customSwitchN
                x: 263
                y: 13
                Text {
                    id:n
                    x: 0
                    y: 0
                    width: 80
                    height: 35
                    color: "#617284"
                    text: qsTr("N")
                    font.pixelSize: 20
                    verticalAlignment: Text.AlignVCenter
                }
                onNonclickedSignal: {
                    n.color="#617284"
                }

                onClickedSignal: {
                    n.color="#4EC040"
                }
            }
        }

        Image {
            id: bgForHeader3
            x: 5
            y: 9
            width: 336
            height: 100
            source: "images/BGHeader.svg"
            fillMode: Image.Stretch
            Text {
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

            CustomButtonHeaderBlackBG {
                x: 267
                y: 44
                width: 57
                height: 46
                clip: true
            }

            Image {
                id:okUp1
                x: 289
                y: 62
                width: 28/2
                source: "images/OkUp.svg"
                fillMode: Image.PreserveAspectFit
                rotation: 180
            }

            Rectangle {
                x: 10
                y: 44
                width: 257
                height: 46
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
                Rectangle {
                    id:backgroundList
                    x: 0
                    y: 46
                    width: 257
                    height: 505
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

                        if(okUp1.rotation===0)
                        {
                            okUp1.rotation=180
                            backgroundList.visible=false
                            listView.visible=false
                            elementText.visible=false
                        }
                        else
                        {
                            okUp1.rotation=0
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
                    width: parent.width
                    visible: false
                    anchors.top: backgroundList.top
                    anchors.bottom: backgroundList.bottom
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
                                }
                            }
                        }
                    }
                    anchors.topMargin: 40
                    model: ListModel {
                        ListElement {
                            name: "Measurement 1"
                        }

                        ListElement {
                            name: "Measurement 2"
                        }

                        ListElement {
                            name: "Measurement 3"
                        }

                        ListElement {
                            name: "Measurement 5"
                        }

                        ListElement {
                            name: "Measurement 6"
                        }

                        ListElement {
                            name: "Measurement 7"
                        }

                        ListElement {
                            name: "Measurement 8"
                        }

                        ListElement {
                            name: "Measurement 9"
                        }

                        ListElement {
                            name: "Measurement 11"
                        }

                        ListElement {
                            name: "Measurement 16"
                        }

                        ListElement {
                            name: "Measurement 18"
                        }

                        ListElement {
                            name: "Measurement 19"
                        }

                        ListElement {
                            name: "Measurement 21"
                        }

                        ListElement {
                            name: "Measurement 26"
                        }

                        ListElement {
                            name: "Measurement 28"
                        }

                        ListElement {
                            name: "Measurement 57"
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


        fillMode: Image.PreserveAspectFit
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

    Rectangle {
        id: rectangle11
        x: 913
        y: 298
        width: 368
        height: 425
        visible: false
        color: "#ffffff"
    }




}




