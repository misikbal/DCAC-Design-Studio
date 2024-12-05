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

    Tumbler {
        id: hourTumbler
        delegate: Item {
            width: tumbler.width / 2
            height: tumbler.height
            Rectangle {
                width: parent.width
                height: parent.height
                color: tumbler.currentIndex === index ? "lightblue" : "white"
                Text {
                    text: index
                    font.pixelSize: 20
                    anchors.centerIn: parent
                }
            }
        }
        model: 24

    }

    Tumbler {
        id: minuteTumbler
        delegate: Item {
            width: tumbler.width / 2
            height: tumbler.height
            Rectangle {
                width: parent.width
                height: parent.height
                color: tumbler.currentIndex === index ? "lightblue" : "white"
                Text {
                    text: index < 10 ? "0" + index : index
                    font.pixelSize: 20
                    anchors.centerIn: parent
                }
            }
        }
        model: 60

    }

    Label {
        text: hourTumbler.currentIndex + ":" + (minuteTumbler.currentIndex < 10 ? "0" + minuteTumbler.currentIndex : minuteTumbler.currentIndex)
        anchors.centerIn: parent
    }

}

