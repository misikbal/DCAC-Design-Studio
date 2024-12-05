import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.10
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0



Item {
    id : customBGrectangle
    x:0
    width: 80
    height: 35

    signal clickedSignal(string text)
    signal nonclickedSignal(string text)
    property alias rectangle1: rectangle1
    property alias rectangle: rectangle


    MouseArea {
        id: mouseAreaForCurrent
        x: 0
        y: 0
        width: 80
        height: parent.height
        onClicked: {
            if(rectangle1.x===24)
            {
                rectangle1.x=48
                rectangle.color= "#FCAE18"
                clickedSignal("kerem");
            }

            else
            {
                rectangle1.x=24
                rectangle.color= "#617284"
                nonclickedSignal("kerem");
            }
        }

    }

    Rectangle {
        id: rectangle
        x: 20
        y: 5
        width: 50
        height: 25
        color: "#617284"
        radius: 12.5
    }

    Rectangle {
        id: rectangle1
        x: 24
        y: 9
        width: 17
        height: 17
        color: "#ffffff"
        radius: 9
    }





}
