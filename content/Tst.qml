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

    ListView {
        width: parent.width
        height: 300
        model: itemsModel

        delegate: Text {
            text: model.name
        }
    }

    ListModel {
        id: itemsModel
    }

    function toggleItem(name) {
        for (var i = 0; i < itemsModel.count; i++) {
            if (itemsModel.get(i).name === name) {
                itemsModel.remove(i);
                return;
            }
        }
        itemsModel.append({name: name});
    }

    MouseArea {
        id: pst
        x: 50
        y: 350
        width: 86
        height: 38
        Rectangle {
            width: parent.width
            height: parent.height
            color: "blue"
            border.color: "white"
            Text {
                anchors.centerIn: parent
                text: "PST"
                color: "white"
            }
        }
        onClicked: {
            toggleItem("pst");

        }
    }


    ListView {
        id:listviewtest
        anchors.fill: parent
        anchors.rightMargin: -56
        anchors.bottomMargin: 8
        anchors.leftMargin: 56
            anchors.topMargin: -8

            model: 50

            delegate: Text {
                text: "Öğe " + (index + 1)
                font.pixelSize: 16
                padding: 10
            }
            Text {
                id: name
                x: 867
                y: 117
                width: 121
                height: 143
                text: customSlider.value
            }




        }


    MouseArea {
        id: dip
        x: 150
        y: 350
        width: 86
        height: 38
        Rectangle {
            width: parent.width
            height: parent.height
            color: "red"
            border.color: "white"
            Text {
                anchors.centerIn: parent
                text: "DIP"
                color: "white"
            }
        }
        onClicked: {
            toggleItem("dip");
        }
    }


    Column {
        anchors.verticalCenterOffset: -201
        anchors.horizontalCenterOffset: -336
        anchors.centerIn: parent
         spacing: 10

         Text {
             id: dateText
             text: "Tarih: " + Qt.formatDateTime(new Date(), "yyyy-MM-dd")
             font.pixelSize: 20
         }

         Text {
             id: timeText
             text: "Saat: " + Qt.formatDateTime(new Date(), "hh:mm:ss")
             font.pixelSize: 20
         }

         // Sürekli güncelleme için Timer bileşeni
         Timer {
             interval: 1000  // Her saniye (1000 milisaniye)
             running: true  // Başlangıçta çalışır durumda olacak
             repeat: true   // Sürekli tekrar edecek
             onTriggered: {
                 // Her saniye text değerlerini güncelle
                 dateText.text = "Tarih: " + Qt.formatDateTime(new Date(), "yyyy-MM-dd")
                 timeText.text = "Saat: " + Qt.formatDateTime(new Date(), "hh:mm:ss")
             }
         }
     }
    ListModel {
        id: originalModel

        // Başlangıçta 101 adet öğe ekleyelim.
        Component.onCompleted: {
            for (var i = 0; i < 101; i++) {
                originalModel.append({"text": "1" });
            }
        }
    }

    ListModel {
        id: listmodell
    }


    Button {
        x: 496
        y: 26
        text: "Çiftleri Gizle"
        onClicked: {
            listmodell.clear();
            for (var i = 0; i < originalModel.count; i++) {
                if (i % 2 !== 0) {
                    listmodell.append(originalModel.get(i));
                    console.log(listmodell.count)
                }
            }
        }
    }


    Button {
        x: 630
        y: 32
        text: "Çiftleri Göster"
        onClicked: {
            listmodell.clear();
            for (var i = 0; i < originalModel.count; i++) {
                listmodell.append(originalModel.get(i));
                console.log(listmodell.count)
            }
        }
    }



    ListView {
        id: one
        x: 391
        y: 98
        z: 1
        width: 80
        height: 5000
        visible: true

        interactive: false
        contentY: 0
        cacheBuffer: 323
        maximumFlickVelocity: 5000
        contentHeight: 5500
        flickDeceleration: 3000
        clip: false

        model: listmodell

        delegate: Text {
            color: "#284863"
            text: model.text
            font.pixelSize: 18
            padding: 10
        }

        Component.onCompleted: {
            for (var i = 0; i < originalModel.count; i++) {
                listmodell.append(originalModel.get(i));
            }
        }
    }
}

