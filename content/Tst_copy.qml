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
    color: "#c0c0c0"
    border.color: "#ffffff"
    clip: true

CustomCheckBox{
    x: 90
    y: 50
    width: 280
    height: 35
}
CheckBox{
    x: 490
    y: 50
    width: 280
    height: 35
    icon.color: "#a9000000"
    icon.height: 4
    icon.width: 5
}
 CustomSlider{
     x: 217
     y: 112

 }
 Slider{
     x: 532
     y: 112
     to: 100
     value: 40

 }

 CustomSwitchForPhaseN{
     x: 297
     y: 182

 }

 Switch{
     x: 593
     y: 180

 }

 CustomCheckBox {
     x: 90
     y: 9
     width: 280
     height: 35
 }

 CheckBox {
     x: 490
     y: 9
     width: 280
     height: 35
     icon.width: 5
     icon.color: "#a9000000"
     icon.height: 4
 }

 CustomSwitchForPhaseN {
     x: 297
     y: 223
 }

 Switch {
     x: 593
     y: 221
     checked: false
     checkable: true
 }



 ComboBox {
     id: comboBox1
     x: 546
     y: 279
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

 Rectangle {
     id: rectangle122
     x: 246
     y: 279
     width: 182
     height: 40
     color: "#ffffff"
     border.color: "#d9d9d9"
     border.width: 1
     layer.enabled: true
     layer.effect: ColorOverlayEffect {
         id: colorOverlay2
         color: "#00bfbfbf"
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
         id:chosenText22
         color: "#284863"
         text: qsTr("3 second")
         anchors.verticalCenter: parent.verticalCenter
         anchors.left: parent.left
         font.pixelSize: 16
         anchors.leftMargin: 5

         onTextChanged: {
             var value = parseInt(text.split(" ")[0]); // İlk değeri rakam olarak al
             var unit = text.split(" ")[1]; // İkinci değeri birim olarak al

         }
     }

     MouseArea {
         id:mouseAreaForAfter
         enabled: true
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


 }

 Rectangle {
     id: backgroundList26
     x: 246
     y: 319
     width: 182
     height: listView26.height
     visible: false
     color: "#ffffff"
     border.color: "#d9d9d9"
     border.width: 1
 }



 ListView {
     id: listView26
     x: 247
     y: 326
     width: rectangle122.width-2
     height: 500
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
                     chosenText22.text = model.name
                 }
             }
         }
     }
 }

 Flickable {
     id: flickable
     x: 224
     y: 364
     //        visible: rectangle12.isDialogOpen11
     visible: true
     width: 203
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
                     name: "LIST 1"
                 }
                 ListElement {
                     name: "LIST 2"
                 }
                 ListElement {
                     name: "LIST 3"
                 }
                 ListElement {
                     name: "LIST 4"
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

 ListView {
     id: listView
     x: 575
     y: 374
     width: 110
     height: 248
     delegate: Item {
         x: 5
         width: 80
         height: 60
         Row {
             id: row1
             Rectangle {
                 width: 40
                 height: 40
                 color: colorCode
             }

             Text {
                 text: name
                 anchors.verticalCenter: parent.verticalCenter
                 font.bold: true
             }
             spacing: 10
         }
     }
     model: ListModel {
         ListElement {
             name: "LIST1"
             colorCode: "grey"
         }

         ListElement {
             name: "LIST2"
             colorCode: "red"
         }

         ListElement {
             name: "LIST3"
             colorCode: "blue"
         }

         ListElement {
             name: "LIST4"
             colorCode: "green"
         }
     }
 }



}

