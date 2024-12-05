import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.10
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0



StackView {
    id: stackViewStatusForQtR01
    y: 72
    width: 1280
    height: 728
    visible: true

    Rectangle {
        id: stackViewRectangle
        y: 0
        color: "#F7F8FA"
        radius: 6
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.leftMargin: 0
        //            anchors.left: parent.left
        //            anchors.right: parent.right
        //            anchors.rightMargin: stackViewStatusForQtR01.width/64
        //            anchors.leftMargin: stackViewStatusForQtR01.width/4
        rotation: 0

    }


}
