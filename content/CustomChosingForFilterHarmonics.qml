import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.10
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0



Item {
    id : button
    x:0
    width: 86
    height: 50
    property alias whenclicked: whenclicked
    property alias whennonclicked: whennonclicked
    property alias filtertexttext: filtertext
    property alias rectangleBG1: rectangleBG1
    property alias rectangleBG: rectangleBG

    property bool isClicked: true

    signal clickedSignal(string text)
    signal nonclickedSignal(string text)
//    property bool pulseOnVisible: false

    ParallelAnimation {
        id: whenclicked
        ColorAnimation {
        target: filtertext
        property: "color"
        duration: 1
        from:"#ffffff"
        to: "#284863"
        }
        NumberAnimation{
        target: rectangleBG
        property: "x"
        duration: 100
        from: 5
        to: 43
        }
        NumberAnimation{
        target: rectangleBG
        property: "width"
        duration: 100
        from: 76
        to: 0
        }


    }

    ParallelAnimation {
        id: whennonclicked
        ColorAnimation {
        target: filtertext
        property: "color"
        duration: 1
        from:"#284863"
        to: "#ffffff"
        }
        NumberAnimation{
        target: rectangleBG
        property: "x"
        duration: 100
        from: 43
        to: 5
        }
        NumberAnimation{
        target: rectangleBG
        property: "width"
        duration: 100
        from: 0
        to: 76
        }


    }
    MouseArea{
        id:clickorno
    width: parent.width
    height: parent.height
    onClicked: {
    if(rectangleBG.x===5)
    {
        button.isClicked = false
        nonclickedSignal("kerem");
        whenclicked.start()
    }
    else{
        button.isClicked = true
        clickedSignal("kerem");
        whennonclicked.start()
    }
    }
    }


    Rectangle {
        id: rectangleBG1
        x: 5
        y: 6
        width: 76
        height: 38
        color: "#E1E7EA"
        radius: 19
        antialiasing: true
    }

    Rectangle {
        id: rectangleBG
        x: 5
        y: 6
        width: 76
        height: 38
        color: "#617284"
        radius: 19
        antialiasing: true
    }


    Text {
        id:filtertext
        x: 6
        y: 6
        width: 75
        height: 38
        color: "#ffffff"
        text: qsTr("00th")
        font.pixelSize: 19
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        clip: false
    }
}
