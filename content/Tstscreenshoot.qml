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
    height: 800
    color: "#ffffff"
    border.color: "#ffffff"


    Item {
        id: contentItem
        x: 0
        y: 0
        width: 1280
        height: 800

        MouseArea {
            id: mouseArea
            x: 1080
            y: 428
            width: 200
            height: 100
            onClicked: {
                viewer.visible=false
                rectangle2.visible=false
            }
        }
    }

    Button {
        text: "Ekran Görüntüsü Al"
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        onClicked: {
            contentItem.grabToImage(function(result) {
                var fileName = "screenshot_" + new Date().getTime() + ".png";
                result.saveToFile(fileName);
                viewer.visible=true
                rectangle2.visible=true
                viewer.source = "file:///" + fileName; /*Bu kısma bizim home ve root'u yazmamız lazım */
            });
        }
    }

    Image {
        id: viewer
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        z:1
        width: 200
        height: 200
        visible: false
        source: ""

        Image {
            id: save
            x: 20
            y: -86
            source: "images/save.svg"
            width: 114/2
            fillMode: Image.PreserveAspectFit
        }


        Image {
            id: delete1
            x: 125
            y: -85
            width: 114/2
            source: "images/delete.svg"
            fillMode: Image.PreserveAspectFit
        }

    }

    Rectangle {
        id: rectangle2
        x: 1080
        y: 528
        width: 200
        height: 200
        visible: false
        color: "#eff2f6"
        border.color: "#e1e5ea"
        border.width: 1
    }
}
