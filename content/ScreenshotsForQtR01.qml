import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15

Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#f7f8fa"
    border.color: "#f7f8fa"
    property alias flickable: flickable
    property int animationDurationForHarmoncis: 2000
    property int animationsForHarmonicClickedCircleOpen:500
    property var history: []
    property alias textForTest: textForTest
    property alias myListModelMemoryInfo: myListModelMemoryInfo

    property bool forNoHead: true
    property bool forFileNameHead: true
    property bool forRecordTimeHead: true
    property bool forTypeHead: true
    property bool forSizeHead: true

    property var currentDate: new Date()
    property var textForNoArray: []
    property int totalSize: 0
    property int totalSize2: 0
    property var redoHistory: []

    property int nextIndex: 0
    property int nextIndex2: 0
    property int previousIndex: 0
    property int previousIndex2: 0



//    property int selectedIndexForScr: communicationSettingPage.selectedIndexForScreenshot


//    CommunicationSettingsForQtR01{
//    id:communicationSettingPage
//    visible: false
//    }


    AppSettings{
        id:appSettingsComponent
        visible: true
    }



    Component.onCompleted: {
        function loadListModel() {
            var listData = appSettingsComponent.appSettings.value("listModelData", []);

            myListModelMemoryInfo.clear();
            myListModelMemoryInfo2.clear();

            for (var i = 0; i < listData.length; i++) {
                var itemData = listData[i];
                //                var typeText = itemData.typeText
                if (itemData.typeText === "Screenshot") {
                    myListModelMemoryInfo.append({ "name": itemData.name, "dateText": itemData.dateText, "typeText": itemData.typeText, "sizeText": itemData.sizeText});
                    myListModelMemoryInfo2.append({ "name": itemData.name, "dateText": itemData.dateText, "typeText": itemData.typeText, "sizeText": itemData.sizeText});

                    var name = myListModelMemoryInfo.get(myListModelMemoryInfo).name;
                    var fileName = "screenshot_" + name + ".png";
                    viewer1.visible=true
                    viewer1.source = "file:///" + fileName;
                    slideAnimation2.start()

                }

            }
                            textForTest.text=0+1
                            var selectedIndex = textForTest.text-1
                            name = myListModelMemoryInfo.get(selectedIndex).name
                            var record = myListModelMemoryInfo.get(selectedIndex).dateText
                            var typee = myListModelMemoryInfo.get(selectedIndex).typeText
                            var size = myListModelMemoryInfo.get(selectedIndex).sizeText

                            textForTest1.text= name
                            textForTest2.text= record
                            textForTest3.text= "1280x800"
                            textForTest4.text= size + " KB"
                            textForTest5.text= ".png"
                            textForTest6.text= "/ USB1"








        }

        loadListModel()
    }




    ButtonGroup {
        id: radioButtonGroup
    }

    ButtonGroup {
        id: radioButtonGroup2
    }



    Rectangle {
        id: rectangle1
        x: 15
        y: 8
        width: 1774/2
        height: 1009/2
        color: "#00ffffff"
        border.color: "#dce8ef"
        Rectangle {
            x: 0
            y: 0
            width: 1786/2
            height: 1021/2
            color: "#00ffffff"
            border.color: "#0d2d41"
            border.width: 3

            Image {
                id: viewer1
                x: 3
                y: 3
                z:1
                width: 1774/2
                height: 1009/2
                visible: true
                source: ""
            }
        }

        Image {
            id: propertiesForScreenshots
            x: 0
            y: 551
            width: 1786/2
            source: "images/PropertiesForScreenshots.svg"
            fillMode: Image.PreserveAspectFit

            Text{
                id: textForTest1
                x: 116
                y: 40
                width: 280
                height: 31
                color: "#284863"
                text: ""
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: textForTest2
                x: 116
                y: 77
                width: 280
                height: 31
                color: "#284863"
                text: ""
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: textForTest3
                x: 116
                y: 114
                width: 280
                height: 31
                color: "#284863"
                text: ""
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: textForTest4
                x: 526
                y: 40
                width: 280
                height: 31
                color: "#284863"
                text: ""
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: textForTest5
                x: 526
                y: 77
                width: 280
                height: 31
                color: "#284863"
                text: ""
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.Wrap
                clip: true
            }

            Text {
                id: textForTest6
                x: 526
                y: 114
                width: 280
                height: 31
                color: "#284863"
                text: ""
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignBottom
                wrapMode: Text.Wrap
                clip: true
            }
        }





    }

    Image {
        id: rightMenuForScreenshots
        x: 914
        y: 0
        width: 733/2
        source: "images/RightMenuForScreenshots.svg"
        fillMode: Image.PreserveAspectFit

        Flickable {
            id: flickable
            x: 18
            y: 18
            visible: true
            width: 349
            height: 685
            ScrollBar.vertical: ScrollBar {
                x: 330
                width: 10
                z:1
                height: 650
                policy: ScrollBar.AlwaysOn
                size: flickable.height / flickable.contentHeight
                //                position: flickable.contentY / flickable.contentHeight
                position:0
                anchors.right: parent.right
                anchors.rightMargin: 11
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
                y: 0
                anchors.left: parent.left
                anchors.right: parent.right
                property int itemCount: 0
                property bool ascendingOrder: true // Initially set to true for ascending order



                ListView {
                    id: todoListView
                    width: flickable.width
                    height: myListModelMemoryInfo.count * 75;
                    spacing: 20
                    interactive: false
                    model: ListModel {
                        id: myListModelMemoryInfo

                        ListElement {
                            name: "Record 2"
                            dateText: "03.02.1997"
                            typeText: "Screenshot"
                            sizeText: "555"
                        }
                        ListElement {
                            name: "Record 3"
                            dateText: "03.02.1997"
                            typeText: "Screenshot"
                            sizeText: "115"
                        }
                        ListElement {
                            name: "Record 4"
                            dateText: "03.02.1997"
                            typeText: "Screenshot"
                            sizeText: "123"
                        }
                        //                        ListElement {
                        //                            name: "Record 5"
                        //                            dateText: "03.02.1997"
                        //                            typeText: "Screenshot"
                        //                            sizeText: "156"
                        //                        }



                    }
                    function updateTotalSize() {
                        totalSize = 0; // Reset totalSize
                        for (var i = 0; i < myListModelMemoryInfo.count; i++) {
                            totalSize += parseInt(myListModelMemoryInfo.get(i).sizeText);
                        }

                    }
                    onCountChanged: {
                        flickable.contentHeight = myListModelMemoryInfo.count * 78;
                        updateTotalSize();

                    }
                    layoutDirection: Qt.LeftToRight
                    delegate: Rectangle {
                        id: rectangle3
                        width: todoListView.width
                        color: "#00eff2f6"
                        radius: 0


                        Image {
                            id: viewer
                            x: 10
                            y: 0
                            z:1
                            width: 207/2
                            height: 118/2
                            visible: true
                            source: ""

                            Component.onCompleted: {
                                if(radioButton.checked){
                                    setupViewer(index);
                                }
                                else if(radioButton1.checked){
                                    setupViewer2(index);
                                }
                            }
                            function setupViewer(index) {
                                var typee = myListModelMemoryInfo.get(index).typeText;
                                if (typee === "Screenshot") {
                                    var name = myListModelMemoryInfo.get(index).name;
                                    var fileName = "screenshot_" + name + ".png";
                                    viewer.source = "file:///" + fileName;

                                }
                            }
                            function setupViewer2(index) {
                                var typee = myListModelMemoryInfo2.get(index).typeText;
                                if (typee === "Screenshot") {
                                    var name = myListModelMemoryInfo2.get(index).name;
                                    var fileName = "screenshot_" + name + ".png";
                                    viewer2.source = "file:///" + fileName;

                                }
                            }
                        }

                        Text{
                            x: 120
                            y:0
                            width: 220
                            text: "Name: " + model.name
                            renderType: Text.NativeRendering // Metni daha iyi işlemek için
                            font.pixelSize: 18
                            clip: true
                        }
                        Text{
                            x: 120
                            y:20
                            width: 240
                            text: "Date: " + model.dateText
                            font.pixelSize: 18
                            clip: true
                        }
                        Text{
                            x: 120
                            y:40
                            width: 240
                            text: "Type: " + model.typeText
                            clip: true
                            font.pixelSize: 18
                        }



                        RadioButton {
                            id: checkBox
                            text: " "
                            Component.onCompleted: {
                                         if (index === 0) {
                                             checkBox.checked = true;
                                         }

                                     }
                            indicator: Rectangle {
                                x:-55
                                y:24
                                implicitWidth: 12
                                implicitHeight: 12
                                color: checkBox.checked ? "#217EFD" : "transparent"
                                border.color: "black"
                                border.width: 1
                                radius: 8
                            }

                            contentItem: Text {
                                text: checkBox.text
                                font.bold: checkBox.checked
                                color: checkBox.checked ? "#217EFD" : "black"
                            }


                           //                            property int checkBoxIndex: index
                            anchors.left: parent.left
                            anchors {
                                verticalCenter: parent.verticalCenter
                                // Center horizontally
                            }
                            width: parent.width // Set the width to the parent's width
                            height: parent.height
                            opacity: 1 // Set the height to the parent's height
                            visible: true


                            font.letterSpacing: -2
                            font.pixelSize: 18
                            anchors.leftMargin: 50
                            icon.color: "#00c71c1c"
                            font.family: "Akshar"
                            ButtonGroup.group: radioButtonGroup
                            onClicked: {
                                textForTest.text=index+1

                                var selectedIndex = textForTest.text-1
                                var name = myListModelMemoryInfo.get(selectedIndex).name
                                var record = myListModelMemoryInfo.get(selectedIndex).dateText
                                var typee = myListModelMemoryInfo.get(selectedIndex).typeText
                                var size = myListModelMemoryInfo.get(selectedIndex).sizeText

                                textForTest1.text= name
                                textForTest2.text= record
                                textForTest3.text= "1280x800"
                                textForTest4.text= size + " KB"
                                textForTest5.text= ".png"
                                textForTest6.text= "/ USB1"

                                name = myListModelMemoryInfo.get(selectedIndex).name
                                var fileName = "screenshot_" + name + ".png";
                                viewer1.source = "file:///" + fileName;
                                viewer1.visible=true

                                var randomNumber= Math.floor(Math.random() * 25)
                                var randomNumberAsString = randomNumber.toString();

                                //        textForFileName1.text=randomNumberAsString + " hour"

                                var listData = appSettingsComponent.appSettings.value("listModelData", []);

//                                if (selectedIndex < listData.length) {
//                                    var selectedItemData = listData[selectedIndex];
//                                    if (selectedItemData.hasOwnProperty("power")) {
//                                        textForFileName2.text = selectedItemData.power;
//                                        textForFileName3.text= selectedItemData.harmonics;
//                                        textForFileName4.text= selectedItemData.interharmonics;
//                                    }
//                                }
                                if(typee==="Screenshot"){
                                    name = myListModelMemoryInfo.get(selectedIndex).name
                                    fileName = "screenshot_" + name + ".png";
                                    viewer.source = "file:///" + fileName;
                                    viewer.visible=true

                                    arrowclicked.start()
                                    menuTimer.restart()

                                }
                            }

                        }
                        Rectangle {
                            width: todoListView.width
                            height: 0
                            color: "transparent"
                        }
                        height: checkBox.visible ? 56 : 0
                    }


                    clip: false
                }
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                clip: false
                spacing: 0
            }

            clip: true
            contentHeight: myListModelMemoryInfo.count * 75;
            Component.onCompleted: {
                function updateTotalSize() {
                    totalSize = 0; // Reset totalSize
                    for (var i = 0; i < myListModelMemoryInfo.count; i++) {
                        totalSize += parseInt(myListModelMemoryInfo.get(i).sizeText);
                    }
                }
                updateTotalSize()
            }
        }




        Flickable {
            id: flickable2
            x: 18
            y: 18
            visible: false
            width: 349
            height: 685
            ScrollBar.vertical: ScrollBar {
                x: 330
                width: 10
                z:1
                height: 650
                policy: ScrollBar.AlwaysOn
                size: flickable2.height / flickable2.contentHeight
                //                position: flickable.contentY / flickable.contentHeight
                position:0
                anchors.right: parent.right
                anchors.rightMargin: 11
                contentItem: Rectangle {
                    implicitHeight: parent.height / 2
                    implicitWidth: parent.width
                    color: "gray"
                    radius: 5
                }
            }

            Column {
                id: column2
                x: 10
                y: 0
                anchors.left: parent.left
                anchors.right: parent.right
                property int itemCount: 0
                property bool ascendingOrder: true // Initially set to true for ascending order


                ListView {
                    id: todoListView2
                    width: flickable2.width
                    height: myListModelMemoryInfo2.count * 333;
                    spacing: 10
                    interactive: false
                    model: ListModel {
                        id: myListModelMemoryInfo2

                        ListElement {
                            name: "Record 2"
                            dateText: "03.02.1997"
                            typeText: "Screenshot"
                            sizeText: "555"
                        }
                        ListElement {
                            name: "Record 3"
                            dateText: "03.02.1997"
                            typeText: "Screenshot"
                            sizeText: "115"
                        }
                        ListElement {
                            name: "Record 4"
                            dateText: "03.02.1997"
                            typeText: "Screenshot"
                            sizeText: "123"
                        }
                    }

                    function updateTotalSize2() {
                        totalSize2 = 0; // Reset totalSize
                        for (var i = 0; i < myListModelMemoryInfo2.count; i++) {
                            totalSize2 += parseInt(myListModelMemoryInfo2.get(i).sizeText);
                        }

                    }
                    onCountChanged: {
                        flickable2.contentHeight = myListModelMemoryInfo2.count * 200;
                        updateTotalSize2();

                    }
                    layoutDirection: Qt.LeftToRight
                    delegate: Rectangle {
                        id: rectangle32
                        width: todoListView2.width
                        color: "#00eff2f6"
                        radius: 0


                        Image {
                            id: viewer2
                            x: 15
                            y: 0
                            z:1
                            width: 584/2
                            height: 333/2
                            visible: true
                            source: ""

                            Component.onCompleted: {
                                setupViewer2(index);
                            }
                            function setupViewer2(index) {
                                var typee2 = myListModelMemoryInfo2.get(index).typeText;
                                if (typee2 === "Screenshot") {
                                    var name2 = myListModelMemoryInfo2.get(index).name;
                                    var fileName2 = "screenshot_" + name2 + ".png";
                                    viewer2.source = "file:///" + fileName2;

                                }
                            }
                        }


                        RadioButton {
                            id: checkBox2
                            text: " "
                            indicator: Rectangle {
                                x:-55
                                y:80
                                implicitWidth: 12
                                implicitHeight: 12
                                color: checkBox2.checked ? "#217EFD" : "transparent"
                                border.color: "black"
                                border.width: 1
                                radius: 8
                            }

                            contentItem: Text {
                                text: checkBox2.text
                                font.bold: checkBox2.checked
                                color: checkBox2.checked ? "#217EFD" : "black"
                            }


                           //                            property int checkBoxIndex: index
                            anchors.left: parent.left
                            anchors {
                                verticalCenter: parent.verticalCenter
                                // Center horizontally
                            }
                            width: parent.width // Set the width to the parent's width
                            height: parent.height
                            opacity: 1 // Set the height to the parent's height
                            visible: true
                            font.letterSpacing: -2
                            font.pixelSize: 18
                            anchors.leftMargin: 50
                            icon.color: "#00c71c1c"
                            font.family: "Akshar"
                            ButtonGroup.group: radioButtonGroup2
                            onClicked: {
                                textForTest.text=index+1

                                var selectedIndex2 = textForTest.text-1
                                var name2 = myListModelMemoryInfo2.get(selectedIndex2).name
                                var record2 = myListModelMemoryInfo2.get(selectedIndex2).dateText
                                var typee2 = myListModelMemoryInfo2.get(selectedIndex2).typeText
                                var size2 = myListModelMemoryInfo2.get(selectedIndex2).sizeText

                                textForTest1.text= name2
                                textForTest2.text= record2
                                textForTest3.text= "1280x800"
                                textForTest4.text= size2 + " KB"
                                textForTest5.text= ".png"

                                name2 = myListModelMemoryInfo2.get(selectedIndex2).name
                                var fileName2 = "screenshot_" + name2 + ".png";
                                viewer1.source = "file:///" + fileName2;
                                viewer1.visible=true


                                var listData2 = appSettingsComponent.appSettings.value("listModelData", []);


                                if(typee2==="Screenshot"){
                                    name2 = myListModelMemoryInfo2.get(selectedIndex2).name
                                    fileName2 = "screenshot_" + name2 + ".png";
                                    viewer2.source = "file:///" + fileName2;
                                    viewer2.visible=true

                                    arrowclicked.start()
                                    menuTimer.restart()

                                }
                            }

                        }
                        Rectangle {
                            width: todoListView2.width
                            height: 0
                            color: "transparent"
                        }
                        height: checkBox2.visible ? 180 : 0
                    }


                    clip: false
                }
                anchors.rightMargin: 10
                anchors.leftMargin: 10
                clip: false
                spacing: 0
            }

            clip: true
            contentHeight: myListModelMemoryInfo2.count * 75;
            Component.onCompleted: {
                function updateTotalSize2() {
                    totalSize2 = 0; // Reset totalSize
                    for (var i = 0; i < myListModelMemoryInfo2.count; i++) {
                        totalSize2 += parseInt(myListModelMemoryInfo2.get(i).sizeText);
                    }
                }
                updateTotalSize2()
            }
        }





    }
    Rectangle {
        id: rectangleForHide
        x: 922
        y: 9
        width: 351
        height: 704
        color: "#F7F8FA"
        radius: 10
        scale: 1
        visible: false
        antialiasing: true
    }

    Rectangle {
        id: rectangle2
        x: 424
        y: 526
        width: 70
        height: 20
        color: "#000000"
        radius: 10
        scale: 0.7
        antialiasing: true
    }



    Item {
        Timer {
            id:menuTimer
            interval: 500; running: true; repeat: false
            onTriggered:{
                arrowNonClicked.start()

            }

        }
    }


    ParallelAnimation{
        id:arrowclicked
        NumberAnimation{
            target: rectangle2
            property: "scale"
            duration: 400
            to: 0.7
        }
        NumberAnimation{
            target: rectangle2
            property: "opacity"
            duration: 400
            to: 0.6
        }
        NumberAnimation{
            target: rectangle4
            property: "width"
            duration: 400
            to: 49
        }
        NumberAnimation{
            target: rectangle5
            property: "width"
            duration: 400
            to: 49
        }
        NumberAnimation{
            target: rectangle5
            property: "x"
            duration: 400
            to: 365
        }
    }


    ParallelAnimation{
        id:arrowNonClicked
        NumberAnimation{
            target: rectangle2
            property: "scale"
            duration: 400
            to: 1
        }
        NumberAnimation{
            target: rectangle2
            property: "opacity"
            duration: 400
            to: 1
        }
        NumberAnimation{
            target: rectangle4
            property: "width"
            duration: 400
            to: 35
        }
        NumberAnimation{
            target: rectangle5
            property: "width"
            duration: 400
            to: 35
        }
        NumberAnimation{
            target: rectangle5
            property: "x"
            duration: 400
            to: 379
        }
    }




    Image {
        id: arrow2
        x: 569
        y: 516
        width: 82/2
        source: "images/arrow.svg"
        mirror: false
        fillMode: Image.PreserveAspectFit
        MouseArea{
            width: parent.width+60
            height:parent.height+20
            x:-30
            y:-10

            onClicked: {
                arrowclicked.start()
                menuTimer.restart()

                textForTest.text = (parseInt(textForTest.text) + 1)/*.toString();*/

                if(radioButton.checked){
                    var selectedIndex = textForTest.text;
                    var name = myListModelMemoryInfo.get(selectedIndex).name;

                    var fileName = "screenshot_" + name + ".png";
                    // Update the viewer source
                    viewer1.source = "file:///" + fileName;
                    slideAnimation2.start()
                }

                else if(radioButton1.checked){
                    var selectedIndex2 = textForTest.text;
                    var name2 = myListModelMemoryInfo2.get(selectedIndex2).name;
//                    var name2 = textForTest1.text

                    var fileName2 = "screenshot_" + name2 + ".png";
                    // Update the viewer source
                    viewer1.source = "file:///" + fileName2;
                    slideAnimation2.start()
                }


                var currentIndex = -1
                for (var i = 0; i < radioButtonGroup.buttons.length; ++i) {
                          if (radioButtonGroup.buttons[i].checked) {
                              currentIndex = i;
                              break;
                          }
                      }


                var currentIndex2 = -1
                for (var y = 0; y < radioButtonGroup2.buttons.length; ++y) {
                          if (radioButtonGroup2.buttons[y].checked) {
                              currentIndex2 = y;
                              break;
                          }
                      }


                if (currentIndex !== -1) {
                    nextIndex = (currentIndex + 1) % radioButtonGroup.buttons.length;
                    // Şu anki seçili radioButton'u temizle
                    radioButtonGroup.buttons[currentIndex].checked = false;


                    // Yeni radioButton'u seç
                    radioButtonGroup.buttons[nextIndex].checked = true;


                    textForTest.text = nextIndex/*.toString();*/
                    selectedIndex = textForTest.text;
                    name = myListModelMemoryInfo.get(selectedIndex).name;
                    fileName = "screenshot_" + name + ".png";
                    viewer1.source = "file:///" + fileName;


                    var record = myListModelMemoryInfo.get(selectedIndex).dateText
                    var typee = myListModelMemoryInfo.get(selectedIndex).typeText
                    var size = myListModelMemoryInfo.get(selectedIndex).sizeText

                    textForTest1.text= name
                    textForTest2.text= record
                    textForTest3.text= "1280x800"
                    textForTest4.text= size + " KB"
                    textForTest5.text= ".png"
                    textForTest6.text= "/ USB1"

                }


                else if (currentIndex2 !== -1) {
                    nextIndex2 = (currentIndex2 + 1) % radioButtonGroup2.buttons.length;

                    // Şu anki seçili radioButton'u temizle
                    radioButtonGroup2.buttons[currentIndex2].checked = false;
                    // Yeni radioButton'u seç
                    radioButtonGroup2.buttons[nextIndex2].checked = true;

                    textForTest.text = nextIndex2/*.toString();*/
                    selectedIndex2 = textForTest.text;
                    name2 = myListModelMemoryInfo2.get(selectedIndex2).name;
                    fileName2 = "screenshot_" + name2 + ".png";
                    viewer1.source = "file:///" + fileName2;


                    record = myListModelMemoryInfo2.get(selectedIndex2).dateText
                    typee = myListModelMemoryInfo2.get(selectedIndex2).typeText
                    size = myListModelMemoryInfo2.get(selectedIndex2).sizeText

                    textForTest1.text= name2
                    textForTest2.text= record
                    textForTest3.text= "1280x800"
                    textForTest4.text= size + " KB"
                    textForTest5.text= ".png"
                    textForTest6.text= "/ USB1"

                }



            }
        }
    }

    Image {
        id: arrow
        x: 303
        y: 516
        width: 82/2
        source: "images/arrow.svg"
        mirror: true
        fillMode: Image.PreserveAspectFit
        MouseArea{
            width: parent.width+60
            height:parent.height+20
            x:-30
            y:-10
            onClicked: {
                arrowclicked.start()
                menuTimer.restart()

                textForTest.text = (parseInt(textForTest.text) - 1)/*.toString();*/

                var selectedIndex = textForTest.text ;
                var name = myListModelMemoryInfo.get(selectedIndex).name;
                var fileName = "screenshot_" + name + ".png";


                // Update the viewer source
                viewer1.source = "file:///" + fileName;
                slideAnimation.start();

                var currentIndex = -1;
                       for (var i = 0; i < radioButtonGroup.buttons.length; ++i) {
                           if (radioButtonGroup.buttons[i].checked) {
                               currentIndex = i;
                               break;
                           }
                       }

                       if (currentIndex !== -1) {
                           // Önceki index hesapla
                           previousIndex = (currentIndex - 1 + radioButtonGroup.buttons.length) % radioButtonGroup.buttons.length;

                           // Şu anki seçili radioButton'u temizle
                           radioButtonGroup.buttons[currentIndex].checked = false;

                           // Önceki radioButton'u seç
                           radioButtonGroup.buttons[previousIndex].checked = true;

                           textForTest.text = previousIndex/*.toString();*/
                           selectedIndex = textForTest.text;
                           name = myListModelMemoryInfo.get(selectedIndex).name;
                           fileName = "screenshot_" + name + ".png";
                           viewer1.source = "file:///" + fileName;

                           var record = myListModelMemoryInfo.get(selectedIndex).dateText
                           var typee = myListModelMemoryInfo.get(selectedIndex).typeText
                           var size = myListModelMemoryInfo.get(selectedIndex).sizeText

                           textForTest1.text= name
                           textForTest2.text= record
                           textForTest3.text= "1280x800"
                           textForTest4.text= size + " KB"
                           textForTest5.text= ".png"
                           textForTest6.text= "/ USB1"
                       }

            }
            ParallelAnimation {
                id: slideAnimation
                NumberAnimation {
                    target: viewer1
                    properties: "x"
                    from: rectangle1.x-888 // Start from the right edge
                    to: 3 // Move to the left edge
                    duration: 500 // Adjust the duration based on your preference
                    easing.type: Easing.InOutQuad // Adjust the easing based on your preference
                }
            }
            ParallelAnimation {
                id: slideAnimation2
                NumberAnimation {
                    target: viewer1
                    properties: "x"
                    from: rectangle1.x+888 // Start from the right edge
                    to: 3 // Move to the left edge
                    duration: 500 // Adjust the duration based on your preference
                    easing.type: Easing.InOutQuad // Adjust the easing based on your preference
                }
            }
        }
    }

    Rectangle {
        id:rectangle4
        x: 499
        y: 529
        width: 35
        height: 14
        clip: true
        antialiasing: true
        scale: 0.7
        Rectangle {
            x: 0
            y: 0
            width: 49
            height: 14
            opacity: 0.6
            color: "#000000"
            radius: 10
            antialiasing: true
        }
    }

    Rectangle {
        id:rectangle5
        x: 379
        y: 529
        width: 35
        height: 14
        clip: true
        rotation: 180
        scale: 0.7
        antialiasing: true
        Rectangle {
            x: 0
            y: 0
            width: 49
            height: 14
            opacity: 0.6
            color: "#000000"
            radius: 10
            antialiasing: true
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
            id: mouseArea22
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
        id: menu
        x: -348
        y: 0
        width: 696/2
        source: "images/Menu.svg"
        fillMode: Image.PreserveAspectFit



        CustomButtonHeaderBlackBG{
            id: customButtonHeaderBlackBG
            x:12
            y:8
            width:644/2
            height:160/2
            clip: true


            RectangleItem {
                id: rectangle7
                width: 175/2
                height: 108/2
                radius: 0
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                anchors.leftMargin: 3
                fillColor: "#217EFD"
                strokeWidth: -1

                MouseArea {
                    id: mouseArea1
                    x: 0
                    y: 0
                    width: rectangle7.width
                    height: rectangle7.height
                    onClicked: {
                        rectangle7.fillColor="#217EFD"
                        rectangle9.fillColor="#738395"
                        rectangle10.fillColor="#738395"


                        var selectedIndex = textForTest.text;
                        var name = myListModelMemoryInfo.get(selectedIndex).name;
                        var fileName = "screenshot_" + name + ".png";
                        // Update the viewer source
                        viewer1.source = "file:///" + fileName;
                        slideAnimation2.start()


                        if(chosenText.text==="USB"){

                            function updateTotalSize() {
                                totalSize = 0; // Reset totalSize
                                for (var i = 0; i < myListModelMemoryInfo.count; i++) {
                                    totalSize += parseInt(myListModelMemoryInfo.get(i).sizeText);
                                }

                            }

                            updateTotalSize();

                        }

                        rectangleForHide.visible=false


                        //                        memoryUsedText1.text=32000000-memoryUsedText.text
                    }
                }

                Image {
                    id: scan1
                    width: 60/2
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    source: "images/Scan.svg"
                    anchors.leftMargin: 4
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    width: 52
                    height: 53
                    color: "#ffffff"
                    text: qsTr("USB")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.verticalCenterOffset: 1
                    anchors.leftMargin: 36
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }

            RectangleItem {
                id: rectangle9
                x: 94
                y: 13
                width: 220/2
                height: 108/2
                radius: 0
                strokeWidth: -1
                fillColor: "#738395"
                MouseArea {
                    x: 0
                    y: 0
                    width: rectangle9.width
                    height: rectangle9.height
                    onClicked: {
                        rectangle9.fillColor="#217EFD"
                        rectangle7.fillColor="#738395"
                        rectangle10.fillColor="#738395"


//                        var fileName = "screenshot_" + sadasdsa + ".png";
                        // Update the viewer source
                        viewer1.source = "" ;
                        slideAnimation2.start()

                        if(chosenText.text==="SD CARD"){
                            function updateTotalSize() {
                                totalSize = 0; // Reset totalSize
                                for (var i = 0; i < myListModelMemoryInfo.count; i++) {
                                    totalSize += parseInt(myListModelMemoryInfo.get(i).sizeText);
                                }
                            }



                            updateTotalSize();

                        }

                        rectangleForHide.visible=true

                    }
                }

                Text {
                    width: 77
                    height: 54
                    color: "#ffffff"
                    text: qsTr("SD Card")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    anchors.leftMargin: 34
                    anchors.verticalCenterOffset: 0
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

                Image {
                    id: arhive
                    width: 74/2
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    source: "images/Arhive.svg"
                    anchors.leftMargin: 4
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
            }

            RectangleItem {
                id: rectangle10
                x: 207
                y: 13
                width: 226/2
                height: 108/2
                radius: 0
                fillColor: "#738395"
                strokeWidth: -1
                MouseArea {
                    x: 0
                    y: 0
                    width: rectangle10.width
                    height: rectangle10.height
                    onClicked: {
                        rectangle10.fillColor="#217EFD"
                        rectangle7.fillColor="#738395"
                        rectangle9.fillColor="#738395"

                        var selectedIndex = textForTest.text;
                        var name = myListModelMemoryInfo.get(selectedIndex).name;
                        var fileName = "screenshot_" + name + ".png";
                        // Update the viewer source
                        viewer1.source = "file:///" + fileName;
                        slideAnimation2.start()

                        function updateTotalSize() {
                            totalSize = 0; // Reset totalSize
                            for (var i = 0; i < myListModelMemoryInfo.count; i++) {
                                totalSize += parseInt(myListModelMemoryInfo.get(i).sizeText);
                            }
                        }

                        updateTotalSize();

                        rectangleForHide.visible=false
                        //                        memoryUsedText1.text=8000000-memoryUsedText.text
                    }
                }

                Text {
                    width: 77
                    height: 54
                    color: "#ffffff"
                    text: qsTr("Internal Memory")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.letterSpacing: -2
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                    anchors.verticalCenterOffset: 0
                    anchors.leftMargin: 38
                }

                Image {
                    width: 60/2
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    source: "images/fluent_memory-16-regular.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                    anchors.leftMargin: 4
                }
            }
        }










        Image {
            id: bGForHeader12
            x: 11
            y: 550
            width: 648/2
            height: 54
            source: "images/BGForHeader.svg"
            Text {
                x: 8
                y: 0
                width: 225
                height: 54
                color: "#284863"
                text: qsTr("File Name")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }


            Rectangle {
                x: 142
                y: 6
                width: 175
                height: 41
                color: "#ffffff"
                radius: 20.5
                border.color: "#d9d9d9"
                TextInput {
                    id:recordFileNameTextInput1
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("Disk 2")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }
                MouseArea{
                    x:-130
                    y:-10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        recordFileNameTextInput1.focus=true
                    }
                }
            }
            fillMode: Image.Stretch
        }


        SequentialAnimation{
            id:progressBarAnim
            NumberAnimation{
                target: progressBar
                property: "value"
                duration: 1
                to: 0
            }
            NumberAnimation{
                target: progressBar
                property: "indeterminate"
                duration: 3000
                from: 0
                to: 1
            }
            NumberAnimation{
                target: progressBar
                property: "indeterminate"
                duration: 3500
                from: 1
                to: 0
            }
            NumberAnimation{
                target: progressBar
                property: "value"
                duration: 3000
                from: 0
                to: 100
            }
        }

        Text {
            id: progressBarValue
            x: 112
            y: 648
            width: 111
            height: 28
            color: "#284863"
            text: "% " + progressBar.value.toFixed(2)
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        ProgressBar {
            id: progressBar
            x: 27
            y: 627
            width: 293
            height: 15
            to: 100
            value: 0
        }

        Rectangle {
            id: bGForHeader1
            x: 11
            y: 527
            width: 648/2
            height: 190

            color: "#f7f8fa"
            border.color: "#a3adb1b4"
            Text {
                x: 8
                y: 0
                width: 150
                height: 40
                color: "#284863"
                text: qsTr("Info")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Bold"
            }

            Image {
                id: accept
                x: 50
                y: 236
                width: 66
                height: 43
                source: "images/Accept.svg"
                fillMode: Image.PreserveAspectFit
                MouseArea{
                    x:-30
                    y:-10
                    width: parent.width+60
                    height: parent.height+20
                    onClicked: {
                        if(rectangle8.x===renameBG.x &&rectangle8.y===renameBG.y){
                            progressBar.z=0
                            progressBarValue.z=0

                            if(textForTest.text==nextIndex) {
                                var selectedIndex = textForTest.text

                            }
                            else if(textForTest.text==previousIndex) {
                                selectedIndex = textForTest.text

                            }
                            else {
                                selectedIndex = textForTest.text-1

                            }



                            var newName = recordFileNameTextInput1.text;
                            var oldName = myListModelMemoryInfo.get(selectedIndex).name
                            history.push({ action: "rename", index: selectedIndex, oldName: oldName});
                            myListModelMemoryInfo.setProperty(selectedIndex, "name", newName);
                            rename.color = "#617284"
                            rect8anim2.start()
                            renameFileNameAnim2.start()

                            exportToAnim2.start()
                            exportto.color = "#617284"
                            format.color = "#617284"
                            undo.color = "#617284"
                            delete2.color = "#617284"

                            textForFileName.text=newName

                            acceptAndCancelAnim2.start()
                            recordFileNameTextInput.text="Please select the job you want to do"
                        }
                        else if(rectangle8.x===deleteBG.x && rectangle8.y===deleteBG.y){
                            selectedIndex = textForTest.text-1
                            history.push({
                                             action: "delete",
                                             index: selectedIndex,
                                             deletedItem: {
                                                 name: myListModelMemoryInfo.get(selectedIndex).name,
                                                 dateText: myListModelMemoryInfo.get(selectedIndex).dateText,
                                                 typeText: myListModelMemoryInfo.get(selectedIndex).typeText,
                                                 sizeText: myListModelMemoryInfo.get(selectedIndex).sizeText

                                             }
                                         }
                                         );
                            myListModelMemoryInfo.remove(selectedIndex);
                            delete2.color = "#617284"
                            rect8anim2.start()

                            renameFileNameAnim2.start()
                            exportToAnim2.start()
                            exportto.color = "#617284"
                            format.color = "#617284"
                            undo.color = "#617284"
                            rename.color = "#617284"

                            acceptAndCancelAnim2.start()
                            recordFileNameTextInput.text="Please select the job you want to do"

                        }


                        else if(rectangle8.x===formatBG.x && rectangle8.y===formatBG.y){

                            for (var i = 0; i < myListModelMemoryInfo.count; i++) {
                                history.push({ action: "format", index: i, deletedItem: { name: myListModelMemoryInfo.get(i).name,
                                                     dateText: myListModelMemoryInfo.get(i).dateText} });
                            }
                            myListModelMemoryInfo.clear();

                            rect8anim2.start()
                            renameFileNameAnim2.start()
                            exportToAnim2.start()
                            exportto.color = "#617284"
                            format.color = "#617284"
                            undo.color = "#617284"
                            rename.color = "#617284"
                            delete2.color = "#617284"

                            textForTest1.text=""
                            textForFileName.text=""
                            textForTest1.text=""
                            textForTest2.text=""
                            textForTest3.text=""
                            textForTest4.text=""
                            textForTest5.text=""
                            textForTest6.text= ""
//                            textForTypeText.text=""

                            viewer1.source = "" ;
                            slideAnimation2.start()
                        }

                        else if (rectangle8.x===exportToBG.x && rectangle8.y===exportToBG.y){
                            exportto.color = "#617284"
                            exportToAnim2.start()
                            rect8anim2.start()

                            renameFileNameAnim2.start()
                            exportToAnim2.start()
                            format.color = "#617284"
                            undo.color = "#617284"
                            rename.color = "#617284"
                            delete2.color = "#617284"

                            acceptAndCancelAnim2.start()
                            recordFileNameTextInput.text="Please select the job you want to do"

                            //                            progressBar.indeterminate=true
                            progressBarAnim.start()
                            progressBar.z=1
                            progressBarValue.z=1



                        }



                        else if (rectangle8.x===undoBG.x && rectangle8.y===undoBG.y){
                            progressBar.z=0
                            progressBarValue.z=0

                            undo.color = "#617284"
                            rect8anim2.start()
                            renameFileNameAnim2.start()
                            exportToAnim2.start()
                            exportto.color = "#617284"
                            format.color = "#617284"
                            rename.color = "#617284"
                            delete2.color = "#617284"


                            if (history.length > 0) {
                                var lastAction = history.pop();
                                selectedIndex = textForTest.text-1
                                // Geri alma işlemleri
                                if (lastAction.action === "rename") {
                                    myListModelMemoryInfo.setProperty(selectedIndex, "name", lastAction.oldName);
                                    textForFileName.text=lastAction.oldName

                                    acceptAndCancelAnim2.start()
                                    recordFileNameTextInput.text="Please select the job you want to do"
                                }
                                else if (lastAction.action === "delete") {
                                    myListModelMemoryInfo.insert(selectedIndex, lastAction.deletedItem);

                                    textForFileName.text=""
                                    textForTest1.text=""
                                    textForTest2.text=""
                                    textForTest3.text=""
                                    textForTest4.text=""
                                    textForTest5.text=""
                                    textForTest6.text= ""

                                    acceptAndCancelAnim2.start()
                                    recordFileNameTextInput.text="Please select the job you want to do"
                                }


                                //                                else if (lastAction.action === "format") {
                                //                                    function loadListModel() {

                                //                                        textForFileName.text=""
                                //                                        textForTest1.text=""
                                //                                        textForFileName1.text=""
                                //                                        textForFileName2.text=""
                                //                                        textForFileName3.text=""
                                //                                        textForFileName4.text=""
                                //                                        textForRecordTime.text=""
                                //                                        textForTypeText.text=""

                                //                                        var listData = appSettingsComponent.appSettings.value("listModelData", []);
                                //                                        myListModelMemoryInfo.clear();
                                //                                        for (var i = 0; i < listData.length; i++) {
                                //                                            var itemData = listData[i];
                                //                                            myListModelMemoryInfo.append({ "name": itemData.name, "dateText": itemData.dateText, "typeText":itemData.typeText, "sizeText": itemData.sizeText});
                                //                                        }
                                //                                    }
                                //                                    loadListModel();
                                //                                }
                            }


                        }

                        renameFileNameAnim2.start()
                        exportToAnim2.start()
                    }

                }
            }

            Image {
                id: cancel
                x: 208
                y: 236
                width: 66
                height: 43
                source: "images/Cancel.svg"
                fillMode: Image.PreserveAspectFit
                MouseArea{
                    x:-30
                    y:-10
                    width: parent.width+60
                    height: parent.height+20
                    onClicked: {
                        renameFileNameAnim2.start()
                        exportToAnim2.start()
                        exportto.color = "#617284"
                        format.color = "#617284"
                        undo.color = "#617284"
                        delete2.color = "#617284"
                        rename.color = "#617284"
                        rect8anim2.start()
                        acceptAndCancelAnim2.start()
                        recordFileNameTextInput.text="Please select the job you want to do"
                        progressBar.indeterminate=false
                        progressBar.z=0
                        progressBarValue.z=0
                    }
                }
            }

            Text{
                id: recordFileNameTextInput
                x: 8
                y: 33
                width: 315
                height: 91
                color: "#284863"
                text: "Please select the job you want to do"
                //                text: qsTr("This operation will be performed permanently. Do you accept?")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }
            Text {
                id: textForFileName
                x: 1034
                y: -700
                width: 91
                height: 40
                color: "#284863"
                text: qsTr("")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                clip: true
            }
            Text {
                id: textForTest
                x: 1144
                y: -700
                width: 91
                height: 40
                color: "#284863"
                text: qsTr("")
                font.pixelSize: 18
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                clip: true
            }

        }







        ParallelAnimation{
            id:exportToAnim
            NumberAnimation {
                target: bGForHeader13
                property: "visible"
                to:1
            }
            NumberAnimation {
                target: bGForHeader13
                property: "y"
                duration: 150
                to:605
            }
        }



        ParallelAnimation{
            id:exportToAnim2
            NumberAnimation {
                target: bGForHeader13
                property: "visible"
                to:0
            }
            NumberAnimation {
                target: bGForHeader13
                property: "y"
                duration: 150
                to:550
            }
        }

        Image {
            id: renameBG
            x: 12
            y: 98
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Rename")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            ListModel {
                id: undoNamesModel
            }

            MouseArea {
                id: mouseArea
                x: 0
                y: 0
                width: 158
                height: 101
                onPressedChanged: {
                    progressBar.z=0
                    progressBarValue.z=0
                    //                    if (pressed) {
                    rectangle8.x=renameBG.x
                    rectangle8.y=renameBG.y
                    rect8anim.start()
                    exportToAnim2.start()
                    delete2.color="#617284"
                    undo.color="#617284"
                    format.color="#617284"
                    exportto.color="#617284"
                    rename.color = "#217EFD"
                    renameFileNameAnim.start()

                    recordFileNameTextInput.text="The file name will be changed. Do you confirm your new file name?"
                    acceptAndCancelAnim.start()

                    //                        var selectedIndex = textForTest.text-1
                    //                        var newName = recordFileNameTextInput1.text;
                    //                        var oldName = myListModelMemoryInfo.get(selectedIndex).name
                    //                        history.push({ action: "rename", index: selectedIndex, oldName: oldName});
                    //                        myListModelMemoryInfo.setProperty(selectedIndex, "name", newName);

                    //                    } else {
                    //                        //
                    //                        rename.color = "#617284"
                    //                    }
                }
            }

            Rectangle {
                id:rename
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent

                scale: mouseArea.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: file_dock_add
                    x: 12
                    y: 12
                    width: 45/2
                    source: "images/icon-park-outline_file-editing-one.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                NumberAnimation {
                    id:rect8anim
                    target: rectangle8
                    property: "visible"
                    duration: 50
                    to:1
                }
                NumberAnimation {
                    id:rect8anim2
                    target: rectangle8
                    property: "visible"
                    duration: 50
                    to:0
                }
                ParallelAnimation{
                    id:renameFileNameAnim
                    NumberAnimation {
                        target: bGForHeader12
                        property: "y"
                        duration: 150
                        to:605
                    }
                    NumberAnimation {
                        target: bGForHeader12
                        property: "z"
                        duration: 1
                        to:1
                    }
                }
                ParallelAnimation{
                    id:renameFileNameAnim2
                    NumberAnimation {
                        target: bGForHeader12
                        property: "y"
                        duration: 150
                        to:550
                    }
                    NumberAnimation {
                        target: bGForHeader12
                        property: "z"
                        duration: 1
                        to:0
                    }
                }

                ParallelAnimation{
                    id:acceptAndCancelAnim
                    NumberAnimation {
                        target: accept
                        property: "y"
                        duration: 150
                        to:136
                    }
                    NumberAnimation {
                        target: cancel
                        property: "y"
                        duration: 150
                        to:136
                    }
                }

                ParallelAnimation{
                    id:acceptAndCancelAnim2
                    NumberAnimation {
                        target: accept
                        property: "y"
                        duration: 150
                        to:236
                    }
                    NumberAnimation {
                        target: cancel
                        property: "y"
                        duration: 150
                        to:236
                    }
                }
            }
            fillMode: Image.Tile
        }

        Image {
            id: deleteBG
            x: 177
            y: 98
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Delete")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id:delete2
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent
                scale: mouseArea2.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: trash
                    x: 12
                    y: 12
                    source: "images/Trash.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                    width: 45/2
                }

                MouseArea {
                    id: mouseArea2
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        progressBar.z=0
                        progressBarValue.z=0

                        rectangle8.x=deleteBG.x
                        rectangle8.y=deleteBG.y
                        rect8anim.start()
                        delete2.color = "#217EFD"
                        rename.color = "#617284"
                        undo.color="#617284"
                        format.color="#617284"
                        exportto.color="#617284"

                        renameFileNameAnim2.start()
                        exportToAnim2.start()

                        recordFileNameTextInput.text="Your file will be deleted. Do you approve its deletion?"
                        acceptAndCancelAnim.start()
                    }
                }
            }
            fillMode: Image.Tile
        }


        Image {
            id: undoBG
            x: 12
            y: 206
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Undo")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id:undo
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent
                scale: mouseArea3.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: refresh
                    x: 13
                    y: 11
                    width: 45/2
                    source: "images/Refresh.svg"
                    mirror: true
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id: mouseArea3
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        progressBar.z=0
                        progressBarValue.z=0

                        if (pressed) {
                            rectangle8.x=undoBG.x
                            rectangle8.y=undoBG.y
                            rect8anim.start()
                            undo.color = "#217EFD"
                            delete2.color = "#617284"
                            rename.color = "#617284"
                            format.color="#617284"
                            exportto.color="#617284"

                            renameFileNameAnim2.start()
                            exportToAnim2.start()


                            undo.color = "#617284"
                            rect8anim2.start()
                            renameFileNameAnim2.start()
                            exportToAnim2.start()
                            exportto.color = "#617284"
                            format.color = "#617284"
                            rename.color = "#617284"
                            delete2.color = "#617284"

                            recordFileNameTextInput.text="You have performed an undo operation. (Invalid for formatting)"

                            if (history.length > 0) {
                                var lastAction = history.pop();
                                var selectedIndex = textForTest.text-1
                                // Geri alma işlemleri
                                if (lastAction.action === "rename") {
                                    var oldName = lastAction.oldName;
                                    var newName = myListModelMemoryInfo.get(selectedIndex).name;


                                    myListModelMemoryInfo.setProperty(selectedIndex, "name", lastAction.oldName);

                                    textForFileName.text=lastAction.oldName
                                    textForTest1.text=textForFileName.text

                                    redoHistory.push({
                                                         action: "rename",
                                                         oldName: oldName,
                                                         newName: newName,
                                                         selectedIndex: selectedIndex
                                                     });

                                    textForTest1.text=""
                                    textForFileName.text=""

                                    textForTest2.text=""
                                    textForTest3.text=""
                                    textForTest4.text=""
                                    textForTest5.text=""
                                    textForTest6.text= ""

                                }
                                else if (lastAction.action === "delete") {
                                    var deletedItem = myListModelMemoryInfo.get(selectedIndex);
                                    myListModelMemoryInfo.insert(selectedIndex, lastAction.deletedItem);



                                    redoHistory.push({
                                                         action: "delete",
                                                         deletedItem: deletedItem
                                                     });
                                }


                            }


                        }

                    }
                }

            }

            fillMode: Image.Tile
        }






        Image {
            id: formatBG
            x: 12
            y: 314
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            fillMode: Image.Tile
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Format")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id:format
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent

                scale: mouseArea5.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: paper
                    x: 12
                    y: 12
                    width: 45/2
                    source: "images/tdesign_delete-1.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id: mouseArea5
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        progressBar.z=0
                        progressBarValue.z=0

                        rectangle8.x=formatBG.x
                        rectangle8.y=formatBG.y
                        rect8anim.start()
                        format.color = "#217EFD"
                        undo.color = "#617284"
                        delete2.color = "#617284"
                        rename.color = "#617284"
                        exportto.color="#617284"


                        recordFileNameTextInput.text="This process will be performed permanently. Format operations cannot be undone. Do you accept? "
                        acceptAndCancelAnim.start()



                    }
                }
            }
        }



        Image {
            id: exportToBG
            x: 177
            y: 314
            width: 315/2
            height: 202/2
            visible: false
            source: "images/BGForHeader.svg"
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Export to")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id:exportto
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.horizontalCenterOffset: -1
                Behavior {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    x: 11
                    y: 3
                    width: 63/2
                    source: "images/Group 9762.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id: mouseArea6
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        progressBar.z=0
                        progressBarValue.z=0

                        rectangle8.x=exportToBG.x
                        rectangle8.y=exportToBG.y
                        rect8anim.start()
                        exportto.color = "#217EFD"
                        format.color = "#617284"
                        undo.color = "#617284"
                        delete2.color = "#617284"
                        rename.color = "#617284"

                        renameFileNameAnim2.start()
                        exportToAnim.start()

                        recordFileNameTextInput.text="Please choose where to transfer the information."
                        acceptAndCancelAnim.start()


                        progressBar.indeterminate=false
                    }
                }
                scale: mouseArea6.containsMouse ? 0.95 : 1.0
                anchors.verticalCenterOffset: -18
                anchors.centerIn: parent
            }
            sourceSize.width: 315
            fillMode: Image.Tile
            sourceSize.height: 202
        }







        Image {
            id: redoBG
            x: 177
            y: 206
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.width: 315
            sourceSize.height: 202
            fillMode: Image.Tile
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Redo")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Rectangle {
                id: redo
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                scale: mouseArea7.containsMouse ? 0.95 : 1.0
                anchors.verticalCenterOffset: -18
                anchors.centerIn: parent
                anchors.horizontalCenterOffset: -1
                Behavior {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    x: 13
                    y: 11
                    width: 45/2
                    source: "images/Refresh.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id:mouseArea7
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        progressBar.z=0
                        progressBarValue.z=0

                        rectangle8.x=redoBG.x
                        rectangle8.y=redoBG.y
                        rect8anim.start()
                        redo.color = "#217EFD"
                        delete2.color = "#617284"
                        rename.color = "#617284"
                        format.color="#617284"
                        exportto.color="#617284"
                        undo.color="#617284"

                        renameFileNameAnim2.start()
                        exportToAnim2.start()


                        redo.color = "#617284"
                        rect8anim2.start()
                        renameFileNameAnim2.start()
                        exportToAnim2.start()
                        exportto.color = "#617284"
                        format.color = "#617284"
                        rename.color = "#617284"
                        delete2.color = "#617284"

                        recordFileNameTextInput.text="You have performed an redo operation. (Invalid for formatting)"

                        if (pressed) {
                            // İleri alma işlemleri
                            if (redoHistory.length > 0) {
                                var redoAction = redoHistory.pop();

                                if (redoAction.action === "delete") {
                                    var selectedIndex = textForTest.text - 1;

                                    history.push({
                                                     action: "delete",
                                                     index: selectedIndex,
                                                     deletedItem: {
                                                         name: myListModelMemoryInfo.get(selectedIndex).name,
                                                         dateText: myListModelMemoryInfo.get(selectedIndex).dateText,
                                                         typeText: myListModelMemoryInfo.get(selectedIndex).typeText,
                                                         sizeText: myListModelMemoryInfo.get(selectedIndex).sizeText

                                                     }
                                                 }
                                                 );

                                    myListModelMemoryInfo.remove(selectedIndex);

                                }
                                else if (redoAction.action === "rename") {
                                    selectedIndex = redoAction.selectedIndex;
                                    var newName = redoAction.newName;
                                    var oldName = myListModelMemoryInfo.get(selectedIndex).name;

                                    myListModelMemoryInfo.setProperty(selectedIndex, "name", newName);

                                    // İleri alma işlemi gerçekleştikten sonra, geri alma geçmişine ekleyin
                                    redoHistory.push({
                                                     action: "rename",
                                                     oldName: oldName,
                                                     newName: newName,
                                                     selectedIndex: selectedIndex
                                                 });


                                    textForFileName.text=""
                                    textForTest.text=""
                                    textForTest1.text=""
                                    textForTest2.text=""
                                    textForTest3.text=""
                                    textForTest4.text=""
                                    textForTest5.text=""
                                    textForTest6.text= ""


                                }

                            }
                        }
                    }
                }
            }

        }

        RectangleItem {
            id: rectangle8
            x: -306
            y: 206
            width: 158
            height: 101
            visible: false
            radius: 0
            fillColor: "#00ffffff"
            strokeColor: "#217efd"
            strokeWidth: 1
        }



        Image {
            id: bGForHeader13
            x: 11
            y: 550
            width: 648/2
            height: 54
            visible: false
            source: "images/BGForHeader.svg"
            fillMode: Image.Stretch

            Rectangle {
                x: 0
                y: 4
                width: 268
                height: 46
                visible: true
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1

                CustomButtonHeaderBlackBG {
                    x: 267
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
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Rectangle {
                    id:backgroundList
                    x: 0
                    y: -221
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

                        if(okUp2.rotation===180)
                        {
                            okUp2.rotation=0
                            backgroundList.visible=false
                            listView.visible=false
                            elementText.visible=false
                        }
                        else
                        {
                            okUp2.rotation=180
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
                                }
                            }
                        }
                    }
                    anchors.topMargin: 30
                    model: ListModel {
                        ListElement {
                            name: "USB"
                        }

                        ListElement {
                            name: "SD CARD"
                        }

                        ListElement {
                            name: "Internal Memory"
                        }

                    }
                    anchors.bottomMargin: -60
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

        }

        Image {
            id: screenshotsPageLeftTop
            x: 11
            y: 436
            width: 648/2
            source: "images/ScreenshotsPageLeftTop.svg"
            fillMode: Image.PreserveAspectFit

            RadioButton {
                id: radioButton
                x: 0
                y: 36
                width: 159
                height: 40
                anchors.right: parent.right
                rightPadding: -75
                anchors.rightMargin: 162
                checked: true
                onCheckedChanged: {
                if(radioButton.checked){
                    flickable.visible=true
                    flickable2.visible=false
                }
                else {
                    flickable.visible=false
                    flickable2.visible=true
                }
                }
            }

            RadioButton {
                id: radioButton1
                x: 159
                y: 36
                width: 162
                height: 40
                anchors.right: parent.right
                rightPadding: -75
                anchors.rightMargin: 0

                onCheckedChanged: {
                if(radioButton1.checked){
                    flickable.visible=false
                    flickable2.visible=true
                }
                else {
                    flickable.visible=true
                    flickable2.visible=false
                }
                }
            }
        }
CustomButtonHeaderBlackBG{
    x:-357
    y:8
    width: 322
    height: 37
    clip: true

    Text{
        x: 10
        y: 0
        width: 280
        height: 37
        color: "#ffffff"
        text: "Modification Settings"
        font.letterSpacing: -1
        font.pixelSize: 18
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        font.family: "Akshar"
        font.styleName: "Bold"
        clip: true
    }
}


    }

    Item {
        id: __materialLibrary__
    }
}
