import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15

import Qt.labs.calendar 1.0

import Qt.labs.folderlistmodel 2.15
import QtQuick.LocalStorage 2.15
import Qt.labs.settings 1.1

Rectangle {
    id: rectangle1
    width: 1
    height: 1
    visible: true
    color: "#f7f8fa"
    border.color: "#ffffff"

    property alias appSettings: appSettings

    Settings {
           id: appSettings
           category: "MyAppSettings"
       }
}





