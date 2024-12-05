import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import Qt.labs.folderlistmodel 2.15
import Qt.labs.platform 1.1


Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#f7f8fa"
    border.color: "#f7f8fa"
    ListView {
         id: listView
         anchors.fill: parent
         model: myListModel

         delegate: Item {
             width: listView.width
             height: 50

             Rectangle {
                 width: parent.width
                 height: 50
                 color: "lightblue"

                 Text {
                     anchors.centerIn: parent
                     text: model.displayText
                 }
             }
         }
     }

     MouseArea {
         anchors.fill: parent
         onClicked: {
             saveListModelToFile(myListModel, "listModelData.json");
             loadListModelFromFile(myListModel, "listModelData.json");
         }
     }

     ListModel {
         id: myListModel
         ListElement { displayText: "Item 1" }
         ListElement { displayText: "Item 2" }
         ListElement { displayText: "Item 3" }
     }

     function saveListModelToFile(model, fileName) {
         var data = [];

         for (var i = 0; i < model.count; ++i) {
             data.push(model.get(i).displayText);
         }

         var folder = StandardPaths.displayName(StandardPaths.DocumentsLocation);
         var file = folder + "/" + fileName;

         var fileComponent = Qt.createComponent(file);
         if (fileComponent.status === Component.Ready) {
             var fileObject = fileComponent.createObject();
             fileObject.open();
             fileObject.write(JSON.stringify(data));
             fileObject.close();
         }
     }

     function loadListModelFromFile(model, fileName) {
         var folder = StandardPaths.displayName(StandardPaths.DocumentsLocation);
         var file = folder + "/" + fileName;

         var fileComponent = Qt.createComponent(file);
         if (fileComponent.status === Component.Ready) {
             var fileObject = fileComponent.createObject();
             if (fileObject.open(QIODevice.ReadOnly | QIODevice.Text)) {
                 var text = fileObject.readAll();
                 var data = JSON.parse(text);
                 fileObject.close();

                 model.clear();

                 for (var i = 0; i < data.length; ++i) {
                     model.append({displayText: data[i]});
                 }
             }
         }
     }
}



