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
    x:32
    width: menuButtonRectId.width
    height: menuButtonRectId.height


    Button {
        id: menuButtonRectId
        x: 0
        y: 0

        width: 215
        height: 18
        text: qsTr("")
        font.pointSize: 16
        background: Rectangle {
            id:rect1
            width: 1000
            height: 1000

            color:"#FF5555"
        }

        palette.buttonText: "#ffffff"

    }

}
