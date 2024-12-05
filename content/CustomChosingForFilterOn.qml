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
    width: 350
    height: 50
    property alias forPulseOn: forPulseOn
    property alias forPulseOff: forPulseOff

    signal clickedSignal(string text)
    signal nonclickedSignal(string text)
//    property bool pulseOnVisible: false

    PropertyAnimation {
        id: clickedPulseX
        target: forPulseOn
        property: "x"
        duration: 150
        from:-150
        to: 0
    }
    MouseArea{
        id:clickorno
    width: parent.width
    height: parent.height
    onClicked: {
    if(forPulseOn.visible===false)
    {
        forPulseOn.visible=true
        clickedPulseX.start()
        clickedSignal("kerem");
    }
    else{
        forPulseOn.visible=false
        nonclickedSignal("kerem");
    }
    }
    }



    Image {
        id: forPulseOff
        x: 0
        y: 4
        width:302/2
        source: "images/ForPulseOff.svg"
        fillMode: Image.PreserveAspectFit
    }
    Image {
        id: forPulseOn
        x: 0
        y: 5
        width:302/2
        visible: true
        source: "images/ForPulseOn.svg"
        fillMode: Image.PreserveAspectFit
    }
}
