import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15


Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#ffffff"
    border.color: "#ffffff"

    Image {
        id: locationSettings
        x: 0
        y: 0
        width: 2560/2
        source: "images/LocationSettings.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: locationSettingsMiddle
        x: 365
        y: 22
        width: 960/2
        source: "images/LocationSettingsMiddle.png"
        fillMode: Image.PreserveAspectFit
    }


}


