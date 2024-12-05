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
    color: "#ffffff"
    border.color: "#ffffff"

    property double totalSize: 0

     ListView {
         id: listView
         width: parent.width
         height: parent.height - 50

         model: ListModel {
             Component.onCompleted: {
                 for (var i = 0; i < 100; i++) {
                     var size = getRandomSizeValue();
                     totalSize += size;
                     append({index: i + 1, measurement: "Measurement" + (i + 1), size: size});
                 }
             }
         }

         delegate: Item {
             width: listView.width
             height: 50

             Rectangle {
                 width: parent.width
                 height: 50
                 border.color: "black"

                 Row {
                     anchors.fill: parent
                     spacing: 10

                     Text {
                         text: model.index
                         width: 50
                         verticalAlignment: Text.AlignVCenter
                     }

                     Text {
                         text: model.measurement
                         width: 200
                         anchors.verticalCenter: parent.verticalCenter
                     }

                     Text {
                         text: sizeText(model.size)
                         anchors.verticalCenter: parent.verticalCenter
                     }
                 }
             }
         }
     }

     Text {
         anchors.bottom: parent.bottom
         anchors.horizontalCenter: parent.horizontalCenter
         text: "Toplam Boyut: " + sizeText(totalSize)

     }

     function getRandomSizeValue() {
         var minSize = 1; // 1 KB minimum
         var maxSize = 500 * 1024; // 500 MB maximum converted to KB
         return Math.floor(Math.random() * (maxSize - minSize + 1) + minSize);
     }

     function sizeText(size) {
         if (size < 1024) {
             return size + " KB";
         } else if (size < 1024 * 1024) {
             return (size / 1024).toFixed(2) + " MB";
         } else {
             return (size / (1024 * 1024)).toFixed(2) + " GB";
         }
     }




}


