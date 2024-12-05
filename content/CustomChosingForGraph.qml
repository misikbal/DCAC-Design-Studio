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
    property alias filtertext: filtertext

    property alias forPulseOff: forPulseOff
    property alias forPulseOn: forPulseOn


    signal clickedSignal(string text)
    signal nonclickedSignal(string text)



//    ParallelAnimation {
//        id: whenclicked
//        ColorAnimation {
//        target: filtertext
//        property: "color"
//        duration: 1
//        from:"#ffffff"
//        to: "#284863"
//        }
//        NumberAnimation{
//        target: rectangleBG
//        property: "x"
//        duration: 100
//        from: 5
//        to: 43
//        }
//        NumberAnimation{
//        target: rectangleBG
//        property: "width"
//        duration: 100
//        from: 76
//        to: 0
//        }


//    }


    ParallelAnimation{
        id: whenclicked
        ColorAnimation {
            target: filtertext
            property: "color"
            duration: 1
            from:"#284863"
            to: "#ffffff"
        }
        NumberAnimation{
        target: forPulseOn
        property: "x"
        duration: 150
        from:-150
        to: -2
        }
    }


    ParallelAnimation {
        id: whennonclicked
        ColorAnimation {
        target: filtertext
        property: "color"
        duration: 1
        from:"#ffffff"
        to: "#284863"
        }
    }
    MouseArea{
        id:clickorno
    width: parent.width
    height: parent.height
    onClicked: {
    if(forPulseOn.visible===false)
    {
        forPulseOn.visible=true
        whenclicked.start()
        clickedSignal("kerem");
    }
    else{
        forPulseOn.visible=false
        whennonclicked.start()
        nonclickedSignal("kerem");
    }
    }
    }



    Image {
        id: forPulseOff
        x: -2
        y: -1
        width:302/1.8
        source: "images/ForGraphOff.svg"
        layer.enabled: true
        layer.effect: DropShadowEffect {
            id: dropShadow
            radius: 12
            samples: 20
            spread: 0.2
        }
        fillMode: Image.PreserveAspectFit
    }
    Image {
        id: forPulseOn
        x: -150
        y: -1
        width:302/1.8
        visible: false
        source: "images/ForGraphOn.svg"
        layer.enabled: true
        layer.effect: DropShadowEffect {
            id: dropShadow1
        }
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id:filtertext
        x: 41
        y: 6
        width: 112
        height: 38
        color: "#284863"
        text: qsTr("")
        font.pixelSize: 19
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        clip: false
    }
}
