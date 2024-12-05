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
    width: 1280
    height: 680

    ////***MENU button glow COLORs for open and close MENU***////
    property string customrectangleBG: "#DFE2E3"

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        z: 1
        width: 1280
        height: 680
        color: customrectangleBG
    }




}
