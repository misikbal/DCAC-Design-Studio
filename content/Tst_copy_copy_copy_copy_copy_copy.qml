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



    Button {
        x: 135
        y: 0
        text: "buttonkapat2"
        onClicked: {
            if (fundamental.text == "") {
            var removedItem = harmonicnames.get(1).text;
            fundamental.text = removedItem;
            harmonicnames.remove(1);

//            harmonicnames.remove(2)
              }
        }
    }

    Button {
        text: "buttonkapat"
        onClicked: {
            if (fundamental.text == "") {
            var removedItem = harmonicnames.get(1).text;
            fundamental.text = removedItem;
            harmonicnames.remove(1);

//            harmonicnames.remove(2)
              }
        }
    }

    Button {
        x: 0
        y: 71
        text: "buttonaç"
        onClicked: {
             if (fundamental.text !== "") {
                 harmonicnames.insert(1, {"text": fundamental.text});
                 fundamental.text = ""; // fundamental'ı temizle
             }
         }
              }


    Flickable {
        id: flickable
        x: 913
        y: 60
        width: 367
        height: 643
        contentY: 0
        clip: true
        flickDeceleration: 1000
        maximumFlickVelocity: 5000
        contentHeight: 2600



    ListModel {
            id: harmonicnames

            // Başlangıçta 101 adet öğe ekleyelim.
            Component.onCompleted: {
                for (var i = 0; i < 51; i++) {
                    harmonicnames.append({"text": "H" + (i)})
                }
            }
        }

    ListModel {
        id: harmonicnamesForFilter
    }


        ListView {
            id: harmonicnameslistview
            x: 12
            y: 12
            z:1
            width: 150
            height: 5000
            visible: true

            interactive: false
            contentY: 0
            cacheBuffer: 323
            maximumFlickVelocity: 5000
            contentHeight: 5500
            flickDeceleration: 3000
            clip: false

            spacing: 29
            model: harmonicnames

            delegate: Text {
                color: "#284863"
                text: model.text
                font.pixelSize: 18


            }
        }
    }

Text {
    id: fundamental
    x: 409
    y: 403
    text: qsTr("")
    font.pixelSize: 12
}

}
