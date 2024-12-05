import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtCharts 2.3


Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#ffffff"
    border.color: "#ffffff"


    ListView {
        id: listView
        x: 0
        width: 60
        height: 500
        anchors.top: parent.top
        spacing: 5
        anchors.topMargin: 8
        visible: true

        model: ListModel {
            ListElement { name: "H1" }
            ListElement { name: "H2" }
            ListElement { name: "H3" }
            ListElement { name: "H4" }
            ListElement { name: "H5" }

        }

        delegate: Item {
            width: listView.width
            height: 50

            Rectangle {
                width: parent.width
                height: 50

                color: "#EFF2F6"

                Text {
                    anchors.centerIn: parent
                    text: model.name
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        nameOfLoggerText1.text = model.name
                        chosenText.text = model.name
                        listView.visible = false
                        backgroundList.visible=false
                    }
                }
            }
        }
    }




}

