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

    Rectangle {
    id: rectanglerPF
    x: 219
    y: 452
    width: 150
    height: 150
    color: "#ffffff"
    radius: 100
    border.color: "#dde1e6"
    border.width: 1
    layer.effect: OpacityMask {
    maskSource: Item {
    width: rectanglerPF.width
    height: rectanglerPF.height
    Rectangle {
    width: rectanglerPF.adapt ? rectanglerPF.width : Math.min(rectanglerPF.width, rectanglerPF.height)
    height: rectanglerPF.adapt ? rectanglerPF.height : width
    radius: 100
    anchors.centerIn: parent
    }
    }
    }
    layer.enabled: true

    Image {
    id: imagePF2
    x: -500
    y: 45
    width: 2600
    height: 180
    visible: true
    source: "images/graph22.png"
    fillMode: Image.PreserveAspectFit
    }

    Image {
    id: imagePF1
    x: -1700
    y: 45
    width: 2600
    height: 180
    visible: true
    source: "images/graph11.png"
    fillMode: Image.PreserveAspectFit
    }

    Text {
    id: text52
    x: 35
    y: 20
    width: 158/2
    height: 50/2
    color: "#284863"
    text: qsTr("kVAR")
    font.letterSpacing: -2
    font.pixelSize: 25
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    wrapMode: Text.Wrap
    font.styleName: "Regular"
    font.family: "Akshar"
    }

    Text {
    id: text53
    x: 35
    y: 100
    width: 158/2
    height: 50/2
    color: "#ffffff"
    text: qsTr("kW")
    font.letterSpacing: -2
    font.pixelSize: 25
    horizontalAlignment: Text.AlignHCenter
    verticalAlignment: Text.AlignVCenter
    wrapMode: Text.Wrap
    font.styleName: "Regular"
    font.family: "Akshar"
    }
    }
}

