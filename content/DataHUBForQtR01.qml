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
    property var redoHistory: []

//    property int selectedIndexForScreenshot: 0

    AppSettings{
        id:appSettingsComponent
        visible: true
    }

    //    Component.onCompleted: {
    //        function loadListModel() {
    //            var listData = appSettingsComponent.appSettings.value("listModelData", []);
    //            myListModelMemoryInfo.clear();
    //            for (var i = 0; i < listData.length; i++) {
    //                myListModelMemoryInfo.append({ "name": listData[i] });
    //            }
    //        }
    //        loadListModel()
    //    }


    Component.onCompleted: {
        function loadListModel() {
            var listData = appSettingsComponent.appSettings.value("listModelData", []);
            myListModelMemoryInfo.clear();
            //            listmodel1.clear();
            for (var i = 0; i < listData.length; i++) {
                var itemData = listData[i];
                //myListModelMemoryInfo.append({ "name": itemData.name, "dateText": itemData.dateText });
                myListModelMemoryInfo.append({ "name": itemData.name, "dateText": itemData.dateText, "typeText": itemData.typeText, "sizeText": itemData.sizeText});

                //                console.log("Item data:",itemData.name+ "  =   " +itemData.dateText);
                //                listmodel1.append({"dateText": itemData.dateText /*+ bla bla*/})
                //                listmodel2.append({"sizeText": itemData.sizeText})

            }

        }
        loadListModel()
    }


    ButtonGroup {
        id: radioButtonGroup
    }

    Image {
        id: rightMenuForMemoryInfo
        x: 913
        y: 1
        width: 734/2
        source: "images/rightMenuForMemoryInfo.svg"
        fillMode: Image.PreserveAspectFit





        ArcItem {
            id: arc
            x: 94
            y: 411
            width: 360/2
            height: 360/2
            antialiasing: true
            end: 360
            strokeColor: "#4ec040"
            strokeWidth: 19
            fillColor: "#00000000"
        }



        ArcItem {
            id: arc1
            x: 94
            y: 411
            width: 360/2
            height: 360/2
            antialiasing: true
            begin: 360-((parseFloat(memoryUsedText.text)*360)/(parseFloat(memoryUsedText.text)+parseFloat(memoryUsedText1.text)))

            end: 360
            strokeColor: "#3d70f8"
            strokeWidth: 19
            fillColor: "#00000000"
        }



        NumberAnimation {
            id:memoryInfoRightAnim
            target: memoryInfoRight
            property: "rotation"
            loops: -1
            duration: 1111
            to: 360
            from: 0
        }


        Image {
            id: memoryInfoRight
            x: 84
            y: 401
            width: 400/2
            source: "images/MemoryInfoRight.svg"
            fillMode: Image.PreserveAspectFit
            Component.onCompleted: {
                memoryInfoRightAnim.start()
            }


        }


        Text {
            id: textForFileName
            x: 116
            y: 49
            width: 217
            height: 41
            color: "#284863"
            text: qsTr("")
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: textForFileName1
            x: 205
            y: 90
            width: 128
            height: 41
            color: "#284863"
            text: qsTr("")
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: textForFileName2
            x: 174
            y: 132
            width: 159
            height: 41
            color: "#284863"
            text: qsTr("")
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: textForFileName3
            x: 174
            y: 173
            width: 159
            height: 41
            color: "#284863"
            text: qsTr("")
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: textForFileName4
            x: 174
            y: 215
            width: 159
            height: 41
            color: "#284863"
            text: qsTr("")
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: textForRecordTime
            x: 116
            y: 256
            width: 217
            height: 41
            color: "#284863"
            text: qsTr("")
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: textForTypeText
            x: 116
            y: 297
            width: 217
            height: 41
            color: "#284863"
            text: qsTr("")
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: textForTest1
            x: 242
            y: 7
            width: 91
            height: 41
            color: "#284863"
            text: qsTr("")
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }
        Rectangle {
            id: rectanglescreenshotbg
            x: 14
            y: 87
            width: 338
            height: 173
            visible: false
            color: "#eff2f6"
            border.color: "#000000"
            border.width: 1
        }

        Image {
            id: viewer
            x: 15
            y: 88
            z:1
            width: 336
            height: 171
            visible: false
            source: ""
            anchors.rightMargin: 0
            anchors.bottomMargin: 0


            MouseArea {
                id: mouseArea11
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

    Image {
        id: memoryInfoRight1
        x: 1009
        y: 415
        width: 350/2
        source: "images/MemoryInfoRight1.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: memoryInfoRight2
        x: 997
        y: 403
        width: 400/2
        source: "images/MemoryInfoRight2.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: menu
        x: 0
        y: 0
        width: 696/2
        source: "images/Menu.svg"
        fillMode: Image.PreserveAspectFit











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

                            var selectedIndex = textForTest.text-1
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
                            jumpToDetails.color = "#617284"
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
                            jumpToDetails.color = "#617284"
                            undo.color = "#617284"
                            rename.color = "#617284"

                            textForTest1.text=""
                            textForFileName.text=""
                            textForFileName1.text=""
                            textForFileName2.text=""
                            textForFileName3.text=""
                            textForFileName4.text=""
                            textForRecordTime.text=""
                            textForTypeText.text=""
                            rectanglescreenshotbg.visible=false
                            viewer.visible=false

                            acceptAndCancelAnim2.start()
                            recordFileNameTextInput.text="Please select the job you want to do"

                        }

                        else if(rectangle8.x===jumpToDetailsBG.x && rectangle8.y===jumpToDetailsBG.y){
//                            rect8anim2.start()
//                            jumpToDetails.color = "#617284"
//                            renameFileNameAnim2.start()
//                            exportToAnim2.start()
//                            exportto.color = "#617284"
//                            format.color = "#617284"
//                            undo.color = "#617284"
//                            delete2.color = "#617284"
//                            rename.color = "#617284"

//                            menuTimer.restart()
//                            loggerDataTextClickedChangeBarX.start()
//                            loggerDataTextClickedChangeBarWidth.start()
//                            bottomMenuChosingStatus.x=1400
//                            bottomMenuChosingSettings.x=1400
//                            pageNameText.text="LOGGER DATA"
//                            stackViewStatusForQtR01.pop()
//                            stackViewStatusForQtR01.push("LoggerDataForQtR01.qml")

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
                            jumpToDetails.color = "#617284"
                            undo.color = "#617284"
                            rename.color = "#617284"
                            delete2.color = "#617284"

                            textForTest1.text=""
                            textForFileName.text=""
                            textForFileName1.text=""
                            textForFileName2.text=""
                            textForFileName3.text=""
                            textForFileName4.text=""
                            textForRecordTime.text=""
                            textForTypeText.text=""
                        }

                        else if (rectangle8.x===exportToBG.x && rectangle8.y===exportToBG.y){
                            exportto.color = "#617284"
                            exportToAnim2.start()
                            rect8anim2.start()

                            renameFileNameAnim2.start()
                            exportToAnim2.start()
                            format.color = "#617284"
                            jumpToDetails.color = "#617284"
                            undo.color = "#617284"
                            rename.color = "#617284"
                            delete2.color = "#617284"

                            acceptAndCancelAnim2.start()
                            recordFileNameTextInput.text="Please select the job you want to do"

//                            progressBar.indeterminate=true
                            progressBarAnim.start()
                            progressBar.z=1
                            progressBarValue.z=1

                            rectangle4.visible=false


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
                            jumpToDetails.color = "#617284"
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
                                    textForFileName1.text=""
                                    textForFileName2.text=""
                                    textForFileName3.text=""
                                    textForFileName4.text=""
                                    textForRecordTime.text=""
                                    textForTypeText.text=""

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
                        jumpToDetails.color = "#617284"
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
                id: textForTest
                x: 1144
                y: -609
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
                fillColor: "#738395"
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
                        memoryTypeText.text="USB"
                        totalMemory.text="32 GB"

                        rectangle4.visible=true
                        memoryUsedText1.text="0"
                        memoryUsedText.text="0"
                        if(chosenText.text==="USB"){
                            rectangle4.visible=false
                            function updateTotalSize() {
                                totalSize = 0; // Reset totalSize
                                for (var i = 0; i < myListModelMemoryInfo.count; i++) {
                                    totalSize += parseInt(myListModelMemoryInfo.get(i).sizeText);
                                }
                                memoryUsedText.text = totalSize; // Update memoryUsedText
                            }

                            updateTotalSize();
                            memoryUsedText1.text=32000000-memoryUsedText.text
                        }


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
                        memoryTypeText.text="SD Card"
                        totalMemory.text="16 GB"

                        rectangle4.visible=true
                        memoryUsedText1.text="0"
                        memoryUsedText.text="0"
                        if(chosenText.text==="SD CARD"){
                            rectangle4.visible=false
                            function updateTotalSize() {
                                totalSize = 0; // Reset totalSize
                                for (var i = 0; i < myListModelMemoryInfo.count; i++) {
                                    totalSize += parseInt(myListModelMemoryInfo.get(i).sizeText);
                                }
                                memoryUsedText.text = totalSize; // Update memoryUsedText
                            }

                            updateTotalSize();
                            memoryUsedText1.text=16000000-memoryUsedText.text

                        }


                                                //                        memoryUsedText1.text=16000000-memoryUsedText.text

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
                fillColor: "#217EFD"
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
                        memoryTypeText.text="Internal Memory"
                        totalMemory.text="8 GB"
                        rectangle4.visible=false

                        function updateTotalSize() {
                            totalSize = 0; // Reset totalSize
                            for (var i = 0; i < myListModelMemoryInfo.count; i++) {
                                totalSize += parseInt(myListModelMemoryInfo.get(i).sizeText);
                            }
                            memoryUsedText.text = totalSize; // Update memoryUsedText
                        }

                        updateTotalSize();
                        memoryUsedText1.text=8000000-memoryUsedText.text

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
                    jumpToDetails.color="#617284"
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
                        jumpToDetails.color="#617284"
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
                            jumpToDetails.color="#617284"
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
                            jumpToDetails.color = "#617284"
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
                                    redoHistory.push({
                                                         action: "rename",
                                                         oldName: oldName,
                                                         newName: newName,
                                                         selectedIndex: selectedIndex
                                                     });

                                    textForTest1.text=""
                                    textForFileName.text=""
                                    textForFileName1.text=""
                                    textForFileName2.text=""
                                    textForFileName3.text=""
                                    textForFileName4.text=""
                                    textForRecordTime.text=""
                                    textForTypeText.text=""

                                }
                                else if (lastAction.action === "delete") {
                                    var deletedItem = myListModelMemoryInfo.get(selectedIndex);
                                    myListModelMemoryInfo.insert(selectedIndex, lastAction.deletedItem);

                                    textForFileName.text=""
                                    textForTest1.text=""
                                    textForFileName1.text=""
                                    textForFileName2.text=""
                                    textForFileName3.text=""
                                    textForFileName4.text=""
                                    textForRecordTime.text=""
                                    textForTypeText.text=""

                                    redoHistory.push({
                                                         action: "delete",
                                                         deletedItem: deletedItem
                                                     });

                                    rectanglescreenshotbg.visible=false
                                    viewer.visible=false

                                    //                                textForTest1.text=""
                                    //                                textForFileName.text=""
                                    //                                textForFileName1.text=""
                                    //                                textForFileName2.text=""
                                    //                                textForFileName3.text=""
                                    //                                textForFileName4.text=""
                                    //                                textForRecordTime.text=""
                                    //                                textForTypeText.text=""
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
                        //                        else {
                        //                            undo.color = "#617284"
                        //                        }
                    }
                }

            }

            fillMode: Image.Tile
        }




        Image {
            id: jumpToDetailsBG
            x: 12
            y: 314
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
                text: qsTr("Jump to Details")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id:jumpToDetails
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent

                scale: mouseArea4.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: group9762
                    x: 11
                    y: 3
                    width: 63/2
                    source: "images/Group 9762.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id: mouseArea4
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        progressBar.z=0
                        progressBarValue.z=0

                        rectangle8.x=jumpToDetailsBG.x
                        rectangle8.y=jumpToDetailsBG.y
                        rect8anim.start()
                        jumpToDetails.color = "#217EFD"
                        undo.color = "#617284"
                        delete2.color = "#617284"
                        rename.color = "#617284"
                        format.color="#617284"
                        exportto.color="#617284"

                        renameFileNameAnim2.start()
                        exportToAnim2.start()

                        rect8anim2.start()
                        jumpToDetails.color = "#617284"
                        renameFileNameAnim2.start()
                        exportToAnim2.start()
                        exportto.color = "#617284"
                        format.color = "#617284"
                        undo.color = "#617284"
                        delete2.color = "#617284"
                        rename.color = "#617284"

                        var selectedIndex = textForTest.text-1
                        var typee = myListModelMemoryInfo.get(selectedIndex).typeText
                        var name = myListModelMemoryInfo.get(selectedIndex).name
//                        selectedIndexForScreenshot=selectedIndex

                        if(typee==="Logger"){

                            menuTimer.restart()
                            loggerDataTextClickedChangeBarX.start()
                            loggerDataTextClickedChangeBarWidth.start()
                            bottomMenuChosingStatus.x=1400
                            bottomMenuChosingSettings.x=1400
                            bottomMenuChosingInfo.x=1400
                            pageNameText.text="LOGGER DATA"
                            stackViewStatusForQtR01.pop()
                            stackViewStatusForQtR01.push("LoggerDataForQtR01.qml")


                        }

                        else if(typee==="Screenshot"){
//                            screenshotsss.selectedIndexForScr=selectedIndexForScreenshot

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


                            statusBottomBar.x=0
                            statusBottomBar.y=-100
                            measurementsBottomBar.x=0
                            measurementsBottomBar.y=-200
                            settingsBottomBar.x=0
                            settingsBottomBar.y=-300
                            infoBottomBar.x=0
                            infoBottomBar.y=-400

                        }

                    }
                }
            }

            fillMode: Image.Tile
        }



        Image {
            id: formatBG
            x: 12
            y: 422
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
                        jumpToDetails.color = "#617284"
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
                        jumpToDetails.color = "#617284"
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



        Text {
            id: memoryTypeText
            x: 1060
            y: 352
            width: 186
            height: 34
            color: "#284863"
            text: qsTr("INTERNAL MEMORY")
            font.letterSpacing: -2
            font.pixelSize: 20
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Light"
        }



        Text {
            id: memoryUsedText
            x: 1045
            y: 613
            width: 150
            height: 42
            color: "#284863"
            text: ""
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Light"
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


        Text {
            id: memoryUsedText1
            x: 1045
            y: 662
            width: 150
            height: 43
            color: "#284863"
            text:
                if(totalMemory.text==="32 GB"){
                    32000000-memoryUsedText.text
                }
                else if (totalMemory.text==="16 GB"){
                    16000000-memoryUsedText.text
                }
                else if (totalMemory.text==="8 GB"){
                    8000000-memoryUsedText.text
                }
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
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

        Text {
            id: kb
            x: 1195
            y: 617
            width: 27
            height: 34
            color: "#284863"
            text: qsTr("KB")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

        Text {
            x: 1006
            y: 466
            width: 182
            height: 34
            color: "#284863"
            text: qsTr("Total")
            font.letterSpacing: -2
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }


        Text {
            id: totalMemory
            x: 1006
            y: 500
            width: 182
            height: 34
            color: "#284863"
            text: qsTr("8 GB")
            font.letterSpacing: -2
            font.pixelSize: 22
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Text {
            id: kb1
            x: 1195
            y: 667
            width: 27
            height: 34
            color: "#284863"
            text: qsTr("KB")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Light"
            font.family: "Akshar"
        }

    }



    Rectangle {
        id: rectangle2
        x: 743
        y: 22
        width: 156
        height: 57
        color: "#ffffff"
    }



    Rectangle {
        id: rectangle1
        x: 358
        y: 8
        width: 545
        height: 720
        color: "#00ffffff"
        border.color: "#dce8ef"
        Image {
            id: bGForSearch
            x: 13
            y: 14
            width: 372
            height: 57
            source: "images/BGForHeader.svg"
            antialiasing: true
            Rectangle {
                x: 11
                y: 8
                width: 348
                height: 41
                color: "#ffffff"
                radius: 20.5
                border.color: "#d9d9d9"

                TextInput {
                    id:searchTextInput
                    x: 25
                    y: 0
                    width: 274
                    height: 41
                    color: "#284863"
                    text: qsTr("")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true


                    MouseArea{
                        x:-40
                        y:-5
                        width: parent.width+100
                        height: parent.height+10
                        onClicked: {
                            clickedSearch.start()
                            search.source="images/returnToBack.svg"
                            searchTextInput.focus=true
                        }
                    }
                    ParallelAnimation{
                        id:clickedSearch
                        NumberAnimation {
                            target: searchTextInput
                            property: "x"
                            duration: 150
                            to:35
                        }
                        NumberAnimation {
                            target: searchTextInput
                            property: "width"
                            duration: 150
                            to:300
                        }
                        NumberAnimation {
                            target: search
                            property: "x"
                            duration: 150
                            to:7
                        }

                        NumberAnimation {
                            target: search
                            property: "y"
                            duration: 150
                            to:14
                        }
                    }

                    ParallelAnimation{
                        id:nonclickedSearch
                        NumberAnimation {
                            target: searchTextInput
                            property: "x"
                            duration: 150
                            to:25
                        }
                        NumberAnimation {
                            target: searchTextInput
                            property: "width"
                            duration: 150
                            to:274
                        }
                        NumberAnimation {
                            target: search
                            property: "x"
                            duration: 150
                            to:314
                        }

                        NumberAnimation {
                            target: search
                            property: "y"
                            duration: 150
                            to:11
                        }
                    }
                }

                Image {
                    id: search
                    x: 314
                    y: 11
                    source: "images/Search.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                    width: 40/2
                    MouseArea {
                        anchors.fill: parent
                        anchors.bottomMargin: -10
                        anchors.rightMargin: -10
                        anchors.leftMargin: -13
                        anchors.topMargin: -13
                        onClicked: {
                            //                            search.x = 314
                            nonclickedSearch.start()
                            search.source="images/Search.svg"
                            searchTextInput.focus=false
                            searchTextInput.text=""
                        }
                    }

                }
            }
        }

        Image {
            id: radio21
            x: 444
            y: 24
            width: 77/2
            source: "images/radio-2-1.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: radio2
            x: 396
            y: 24
            width: 77/2
            source: "images/radio-2.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: add_ring_light
            x: 477
            y: 9
            width: 136/2
            source: "images/Add_ring_light.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
            MouseArea{
                x:5
                y:0
                width: parent.width
                height: parent.height
                onClicked: {
                    searchTextInput.text=""
                }
            }
        }


        Flickable {
            id: flickable
            x: 8
            y: 125
            visible: true
            width: 532
            height: 572
            ScrollBar.vertical: ScrollBar {
                x: 355
                width: 10
                height: 650
                policy: ScrollBar.AlwaysOn
                size: flickable.height / flickable.contentHeight
                //                position: flickable.contentY / flickable.contentHeight
                position:0
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
                    //                    spacing: 10
                    width: flickable.width
                    height: myListModelMemoryInfo.count * 75;
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
                        ListElement {
                            name: "Record 5"
                            dateText: "03.02.1997"
                            typeText: "Screenshot"
                            sizeText: "156"
                        }
                        //                        ListElement {
                        //                            dateText: ""
                        //                        }
                        //                        ListElement {
                        //                            sizeText: ""
                        //                        }
                    }
                    function updateTotalSize() {
                        totalSize = 0; // Reset totalSize
                        for (var i = 0; i < myListModelMemoryInfo.count; i++) {
                            totalSize += parseInt(myListModelMemoryInfo.get(i).sizeText);
                        }
                        memoryUsedText.text = totalSize; // Update memoryUsedText
                    }
                    onCountChanged: {
                        flickable.contentHeight = myListModelMemoryInfo.count * 75;
                        updateTotalSize();

                    }
                    layoutDirection: Qt.LeftToRight
                    delegate: Rectangle {
                        id: rectangle3
                        width: todoListView.width
                        //                    height: 55
                        color: "#00eff2f6"
                        radius: 0
                        RadioButton {
                            id: checkBox
                            //                            checked: index === 0

                            Text{
                                x: 41
                                width: 160
//                                text: model.name
                                text: {
                                    var searchText = searchTextInput.text;
                                    var itemName = model.name;
                                    var regexp = new RegExp(searchText, "gi");
                                    return model.name.replace(regexp, "<font color='blue'>" + searchText + "</font>");
                                }

                                renderType: Text.NativeRendering // Metni daha iyi işlemek için

                                anchors.verticalCenter: parent.verticalCenter
                                font.pixelSize: 18
                                clip: true

                            }
                            Text{
                                x: 203
                                width: 240
                                text:  model.dateText
                                anchors.verticalCenter: parent.verticalCenter
                                font.pixelSize: 18
                                clip: true
                            }
                            Text{
                                x: 352
                                width: 240
                                text:  model.typeText
                                anchors.verticalCenter: parent.verticalCenter
                                font.pixelSize: 18
                                clip: true
                            }
                            Text{
                                x: 450
                                width: 240
                                text:  model.sizeText
                                anchors.verticalCenter: parent.verticalCenter
                                font.pixelSize: 18
                                clip: true
                            }

                            //                            text: model.name
                            text: " "

                            //                            property int checkBoxIndex: index
                            anchors.left: parent.left
                            anchors {
                                verticalCenter: parent.verticalCenter
                                // Center horizontally
                            }
                            width: parent.width // Set the width to the parent's width
                            height: parent.height // Set the height to the parent's height


                            Text {
                                id:textForNo
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.left: parent.left
                                width: 55
                                text: index + 1
                                font.pixelSize: 18
                                anchors.leftMargin: -22
                                color: "#000000"

                                Component.onCompleted: {
                                    textForNoArray.push(this);
                                }

                            }

                            visible: model.name.toLowerCase().includes(searchTextInput.text.toLowerCase())
                            font.letterSpacing: -2
                            font.pixelSize: 18
                            anchors.leftMargin: 21
                            icon.color: "#00c71c1c"
                            font.family: "Akshar"
                            ButtonGroup.group: radioButtonGroup
                            onClicked: {
                                textForTest.text=index+1
                                textForTest1.text=index+1
                                var selectedIndex = textForTest.text-1
                                var name = myListModelMemoryInfo.get(selectedIndex).name
                                var record = myListModelMemoryInfo.get(selectedIndex).dateText
                                var typee = myListModelMemoryInfo.get(selectedIndex).typeText

                                textForFileName.text=name
                                textForRecordTime.text=record
                                textForTypeText.text=typee

                                var randomNumber= Math.floor(Math.random() * 25)
                                var randomNumberAsString = randomNumber.toString();
                                textForFileName1.text=randomNumberAsString + " hour"


                                var listData = appSettingsComponent.appSettings.value("listModelData", []);


                                if (selectedIndex < listData.length) {
                                      var selectedItemData = listData[selectedIndex];
                                      if (selectedItemData.hasOwnProperty("power")) {
                                          textForFileName2.text = selectedItemData.power;
                                          textForFileName3.text= selectedItemData.harmonics;
                                          textForFileName4.text= selectedItemData.interharmonics;
                                      }
//                                      else {
//                                          // Power özelliği bulunmuyorsa bir varsayılan değer atayabilirsiniz.
//                                          textForFileName2.text = ""; // veya başka bir değer
//                                      }
                                  }
//                                else {
//                                      // Eğer listData'da bu indeksi taşıyan bir öğe yoksa bir uyarı veya varsayılan değer atayabilirsiniz.
//                                      textForFileName2.text = ""; // veya başka bir değer
//                                  }


//                                for (var i = 0; i < listData.length; i++) {
//                                    var itemData = listData[i];
//                                    if (itemData.hasOwnProperty("power")) {
//                                          textForFileName2.text = itemData.power;
//                                      } else {
//                                          // Power özelliği bulunmuyorsa bir varsayılan değer atayabilirsiniz.
//                                          textForFileName2.text = ""; // veya başka bir değer
//                                      }

////                                    textForFileName2.text = itemData.power
//                                }

//                                textForFileName3.text=itemData.harmonics
//                                textForFileName4.text=itemData.interharmonics


if(typee==="Screenshot"){
    var fileName = "screenshot_" + name + ".png";
    viewer.visible=true
    rectanglescreenshotbg.visible=true
    viewer.source = "file:///" + fileName;
}
else if(typee==="Logger"){
    viewer.visible=false
    rectanglescreenshotbg.visible=false
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

            //            ListView {
            //                id: forDate
            //                x: 220
            //                spacing: 10
            //                width: 240
            //                height: myListModelMemoryInfo.count * 75
            //                anchors.top: parent.top
            //                anchors.topMargin: -34
            //                interactive: false

            //                model: ListModel {
            //                    id: listmodel1
            //                    ListElement {
            //                        dateText: ""
            //                    }

            //                }
            //                layoutDirection: Qt.LeftToRight
            //                clip: false
            //                delegate:Text {
            //                        x: 8
            //                        y: 71
            //                        color: "#000000"
            //                        text: model.dateText
            //                        font.pixelSize: 18
            //                        height: 56
            //                    }
            //            }

            //            ListView {
            //                id: forSize
            //                x: 465
            //                spacing: 10
            //                width: 60
            //                height: myListModelMemoryInfo.count * 75
            //                anchors.top: parent.top
            //                anchors.topMargin: -34
            //                interactive: false

            //                model: ListModel {
            //                    id: listmodel2
            //                    ListElement {
            //                        sizeText: ""
            //                    }
            //                }

            //                layoutDirection: Qt.LeftToRight
            //                clip: false
            //                delegate:Text {
            //                        x: 8
            //                        y: 71
            //                        color: "#000000"
            //                        text: model.sizeText
            //                        font.pixelSize: 18
            //                        height: 56
            //                    }
            //            }

            clip: true
            contentHeight: myListModelMemoryInfo.count * 75;
            Component.onCompleted: {
                function updateTotalSize() {
                    totalSize = 0; // Reset totalSize
                    for (var i = 0; i < myListModelMemoryInfo.count; i++) {
                        totalSize += parseInt(myListModelMemoryInfo.get(i).sizeText);
                    }
                    memoryUsedText.text = totalSize;
                }
                updateTotalSize()
            }
        }



        Image {
            id: fileNameSort1
            x: 165
            y: 91
            width: 16
            height: 16
            source: "images/sort1.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: noSort1
            x: 42
            y: 91
            width: 16
            height: 16
            visible: false
            source: "images/sort1.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id:noHeader
            x: 16
            y: 71
            width: 56
            height: 58
            color: "#284863"
            text: qsTr("No")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"

            MouseArea {
                x: -25
                y: -1
                width: 70
                height: 55
                onClicked: {
                    //                    var reversedModel = []
                    //                            for (var i = myListModelMemoryInfo.count - 1; i >= 0; --i) {
                    //                                var item = myListModelMemoryInfo.get(i)
                    //                                reversedModel.push({name: item.name, dateText: item.dateText, sizeText: item.sizeText})
                    //                            }
                    //                            myListModelMemoryInfo.clear()
                    //                            for (i = 0; i < reversedModel.length; ++i) {
                    //                                myListModelMemoryInfo.append(reversedModel[i])
                    //                            }
                    //                            var reversedTextForNo = []
                    //                                       for (i = myListModelMemoryInfo.count - 1; i >= 0; --i) {
                    //                                           reversedTextForNo.push(i + 1)
                    //                                       }
                    //                                       for (  i = 0; i < Math.min(textForNoArray.length, reversedTextForNo.length); ++i) {
                    //                                           textForNoArray[i].text = reversedTextForNo[i].toString();
                    //                                           console.log("girdi miii")
                    //                                       }



                }


            }
        }



        Text {
            id:fileNameHeader
            x: 79
            y: 71
            width: 169
            height: 58
            color: "#284863"
            text: qsTr("File Name")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"

            MouseArea {
                x: -16
                y: -1
                width: 170
                height: 55
                onClicked: {
                    if(forFileNameHead===true){
                        forFileNameHead=false
                        fileNameSort1.source="images/sort2.svg"

                        var sortedModel = []
                        for (var i = 0; i < myListModelMemoryInfo.count; ++i) {
                            var item = myListModelMemoryInfo.get(i)
                            sortedModel.push({name: item.name, dateText: item.dateText, typeText:item.typeText, sizeText: item.sizeText})
                        }
                        sortedModel.sort(function(a, b) {
                            return a.name.localeCompare(b.name)
                        })
                        myListModelMemoryInfo.clear()
                        for (i = 0; i < sortedModel.length; ++i) {
                            myListModelMemoryInfo.append(sortedModel[i])
                        }
                    }
                    else if(forFileNameHead===false){
                        forFileNameHead=true
                        fileNameSort1.source="images/sort1.svg"
                        sortedModel = []
                        for (i = 0; i < myListModelMemoryInfo.count; ++i) {
                            item = myListModelMemoryInfo.get(i)
                            sortedModel.push({name: item.name, dateText: item.dateText,typeText:item.typeText, sizeText: item.sizeText})
                        }
                        sortedModel.sort(function(a, b) {
                            return b.name.localeCompare(a.name)  // Ters sıralama
                        })
                        myListModelMemoryInfo.clear()
                        for (i = 0; i < sortedModel.length; ++i) {
                            myListModelMemoryInfo.append(sortedModel[i])
                        }
                    }


                }
            }

        }



        Text {
            id:recordTimeHeader
            x: 244
            y: 71
            width: 146
            height: 58
            color: "#284863"
            text: qsTr("Record Time")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"

            MouseArea {
                x: -10
                y: -1
                width: 150
                height: 55
                onClicked: {
                    if (forRecordTimeHead) {
                        forRecordTimeHead = false
                        // sort ascending
                        recordTimeSort1.source = "images/sort2.svg"
                        var sortedModel = []
                        for (var i = 0; i < myListModelMemoryInfo.count; ++i) {
                            var item = myListModelMemoryInfo.get(i)
                            sortedModel.push({name: item.name, dateText: item.dateText, typeText:item.typeText, sizeText: item.sizeText})
                        }
                        sortedModel.sort(function(a, b) {
                            return a.dateText.localeCompare(b.dateText)
                        })
                        myListModelMemoryInfo.clear()
                        for (i = 0; i < sortedModel.length; ++i) {
                            myListModelMemoryInfo.append(sortedModel[i])
                        }
                    } else {
                        forRecordTimeHead = true
                        // sort descending
                        recordTimeSort1.source = "images/sort1.svg"
                        sortedModel = []
                        for (i = 0; i < myListModelMemoryInfo.count; ++i) {
                            item = myListModelMemoryInfo.get(i)
                            sortedModel.push({name: item.name, dateText: item.dateText, typeText:item.typeText, sizeText: item.sizeText})
                        }
                        sortedModel.sort(function(a, b) {
                            return b.dateText.localeCompare(a.dateText)
                        })
                        myListModelMemoryInfo.clear()
                        for (i = 0; i < sortedModel.length; ++i) {
                            myListModelMemoryInfo.append(sortedModel[i])
                        }
                    }
                }

            }

        }

        Text {
            id: typeHeader
            x: 392
            y: 71
            width: 94
            height: 58
            color: "#284863"
            text: qsTr("Type")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"

            MouseArea {
                x: -10
                y: -1
                width: 95
                height: 55
                onClicked: {
                    if (forTypeHead) {
                        forTypeHead = false
                        // sort ascending
                        typeSort1.source = "images/sort2.svg"
                        var sortedModel = []
                        for (var i = 0; i < myListModelMemoryInfo.count; ++i) {
                            var item = myListModelMemoryInfo.get(i)
                            sortedModel.push({name: item.name, dateText: item.dateText, typeText: item.typeText, sizeText: item.sizeText})
                        }
                        sortedModel.sort(function(a, b) {
                            return a.typeText.localeCompare(b.typeText)
                        })
                        myListModelMemoryInfo.clear()
                        for (i = 0; i < sortedModel.length; ++i) {
                            myListModelMemoryInfo.append(sortedModel[i])
                        }
                    } else {
                        forTypeHead = true
                        // sort descending
                        typeSort1.source = "images/sort1.svg"
                        sortedModel = []
                        for (i = 0; i < myListModelMemoryInfo.count; ++i) {
                            item = myListModelMemoryInfo.get(i)
                            sortedModel.push({name: item.name, dateText: item.dateText, typeText: item.typeText, sizeText: item.sizeText})
                        }
                        sortedModel.sort(function(a, b) {
                            return b.typeText.localeCompare(a.typeText)
                        })
                        myListModelMemoryInfo.clear()
                        for (i = 0; i < sortedModel.length; ++i) {
                            myListModelMemoryInfo.append(sortedModel[i])
                        }
                    }
                }

            }

        }

        Text {
            id: sizeHeader
            x: 488
            y: 71
            width: 49
            height: 58
            color: "#284863"
            text: qsTr("Size")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"

            MouseArea {
                x: -10
                y: -1
                width: 65
                height: 55
                onClicked: {
                    if (forSizeHead) {
                        forSizeHead = false
                        // sort ascending
                        sizeSort1.source = "images/sort2.svg"

                        var sortedModel = []
                        for (var i = 0; i < myListModelMemoryInfo.count; ++i) {
                            var item = myListModelMemoryInfo.get(i)
                            sortedModel.push({name: item.name, dateText: item.dateText, typeText: item.typeText, sizeText: item.sizeText})
                        }

                        sortedModel.sort(function(a, b) {
                            return parseInt(a.sizeText) - parseInt(b.sizeText);
                        });

                        //                        sortedModel.sort(function(a, b) {
                        //                            return a.sizeText.localeCompare(b.sizeText)
                        //                        })


                        myListModelMemoryInfo.clear()
                        for (i = 0; i < sortedModel.length; ++i) {
                            myListModelMemoryInfo.append(sortedModel[i])
                        }
                    } else {
                        forSizeHead = true
                        // sort descending
                        sizeSort1.source = "images/sort1.svg"

                        sortedModel = []
                        for (i = 0; i < myListModelMemoryInfo.count; ++i) {
                            item = myListModelMemoryInfo.get(i)
                            sortedModel.push({name: item.name, dateText: item.dateText, typeText: item.typeText, sizeText: item.sizeText})
                        }

                        sortedModel.sort(function(a, b) {
                            return parseInt(b.sizeText) - parseInt(a.sizeText);
                        });
                        //                        sortedModel.sort(function(a, b) {
                        //                            return b.sizeText.localeCompare(a.sizeText)
                        //                        })


                        myListModelMemoryInfo.clear()
                        for (i = 0; i < sortedModel.length; ++i) {
                            myListModelMemoryInfo.append(sortedModel[i])
                        }
                    }

                }

            }

        }

        Image {
            id: recordTimeSort1
            x: 351
            y: 91
            width: 16
            height: 16
            source: "images/sort1.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: typeSort1
            x: 434
            y: 91
            width: 16
            height: 16
            source: "images/sort1.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: sizeSort1
            x: 524
            y: 91
            width: 16
            height: 16
            source: "images/sort1.svg"
            fillMode: Image.PreserveAspectFit
        }

    }




    Image {
        id: bGForHeader37
        x: -348
        y: 422
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        Text {
            x: 0
            y: 54
            width: 157
            height: 47
            color: "#284863"
            text: qsTr("None")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }
        Rectangle {
            id:none1
            x: 9
            y: 0
            width: 47
            height: 47
            color: "#617284"
            radius: 23.5
            anchors.horizontalCenterOffset: -1
            MouseArea {
                x: -54
                y: -10
                width: 158
                height: 101

            }
            anchors.verticalCenterOffset: -18
            anchors.centerIn: parent
        }
        Text {
            x: -1
            y: 9
            width: 157
            height: 47
            color: "#ffffff"
            text: qsTr("X")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }
        sourceSize.width: 315
        fillMode: Image.Tile
        sourceSize.height: 202
    }


    Image {
        id: bGForHeader38
        x: -183
        y: 422
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        Text {
            x: 0
            y: 54
            width: 157
            height: 47
            color: "#284863"
            text: qsTr("None")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }
        Rectangle {
            id:none2
            x: 9
            y: 0
            width: 47
            height: 47
            color: "#617284"
            radius: 23.5
            anchors.horizontalCenterOffset: -1
            MouseArea {
                x: -54
                y: -10
                width: 158
                height: 101
            }
            anchors.verticalCenterOffset: -18
            anchors.centerIn: parent
        }
        Text {
            x: -1
            y: 9
            width: 157
            height: 47
            color: "#ffffff"
            text: qsTr("X")
            font.letterSpacing: -2
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
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
                    jumpToDetails.color="#617284"
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
                    jumpToDetails.color = "#617284"
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


                                textForTest1.text=""
                                textForFileName.text=""
                                textForFileName1.text=""
                                textForFileName2.text=""
                                textForFileName3.text=""
                                textForFileName4.text=""
                                textForRecordTime.text=""
                                textForTypeText.text=""
                                rectanglescreenshotbg.visible=false
                                viewer.visible=false
                            }
                            else if (redoAction.action === "rename") {
                                selectedIndex = redoAction.selectedIndex;
                                var newName = redoAction.newName;
                                var oldName = myListModelMemoryInfo.get(selectedIndex).name;

                                myListModelMemoryInfo.setProperty(selectedIndex, "name", newName);

                                // İleri alma işlemi gerçekleştikten sonra, geri alma geçmişine ekleyin
                                history.push({
                                                 action: "rename",
                                                 oldName: oldName,
                                                 newName: newName,
                                                 selectedIndex: selectedIndex
                                             });

                                textForTest1.text=""
                                textForFileName.text=""
                                textForFileName1.text=""
                                textForFileName2.text=""
                                textForFileName3.text=""
                                textForFileName4.text=""
                                textForRecordTime.text=""
                                textForTypeText.text=""
                            }
                        }
                    }
                }
            }
        }
    }

    Rectangle {
        id: rectangle4
        x: 359
        y: 119
        width: 541
        height: 608
        visible: false
        color: "#f7f8fa"
    }


}



