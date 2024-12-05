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
    width: 280
    height: 35
    property alias mouseAreaForCurrent: mouseAreaForCurrent
    property alias checkBoxOFF: checkBoxOFF
    property alias checkBoxOn: checkBoxOn

    signal clickedSignal(string text)
    signal nonclickedSignal(string text)

    Image {
        id: checkBoxOFF
        x: 5
        y: 7
        width: 22
        height: 22
        source: "images/CheckBoxOFF.svg"
        fillMode: Image.PreserveAspectFit
        MouseArea {
            id: mouseAreaForCurrent
            x: -20
            y: -7
            width: 280
            height: 34
            enabled: true
            onClicked: {
                if(checkBoxOn.visible===false)
                {
                checkBoxOFF.source="images/CheckBoxONBG.svg"
                checkBoxOn.visible=true
                clickedSignal("kerem");
                }
                else
                {
                    checkBoxOFF.source="images/CheckBoxOFF.svg"
                    checkBoxOn.visible=false
                    nonclickedSignal("kerem");
                }
            }

        }

    }

    Image {
        id: checkBoxOn
        x: 10
        y: 14
        width: 11
        visible: false
        source: "images/CheckBoxOn.svg"
        fillMode: Image.PreserveAspectFit
    }





}
