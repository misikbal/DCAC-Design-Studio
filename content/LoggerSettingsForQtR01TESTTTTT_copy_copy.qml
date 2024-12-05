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
    width: 1280
    height: 728
    color: "#f7f8fa"
    border.color: "#ffffff"


    ButtonGroup {
        id: radioButtonGroup
    }

    Settings {
            id: appSettings
            category: "MyAppSettings"
        }

        Column {
            id: column
            anchors.fill: parent
            spacing: 20

            Repeater {
                id: repeater
                model: ListModel {
                    id: myListModel
                    ListElement {
                        name: "Record 1"
                    }
                }
                Rectangle {
                    width: 340
                    height: 55
                    color: "#EFF2F6"
                    radius: 0

                    RadioButton {
                        text: model.name
                        anchors.fill: parent
                        font.pixelSize: 18
                        ButtonGroup.group: radioButtonGroup

                        onClicked: {
                            // Tıklanan radioButton'ın metnini al ve bir işlevi çağır
                            clickedText.text = " " + text;
                            clickedText.color = "#284863";
                            rectangle1.isDialogOpen = false;
                            warningText.visible = false;
                        }
                    }
                }
            }

            Row {
                spacing: 10

                Button {
                    text: "Save"
                    onClicked: saveListModel()
                }

                Button {
                    text: "Load"
                    onClicked: loadListModel()
                }

                Button {
                    text: "Add Element"
                    onClicked: addListModelElement()
                }
            }
        }

        function saveListModel() {
            var listData = [];
            for (var i = 0; i < myListModel.count; i++) {
                listData.push(myListModel.get(i).name);
            }
            appSettings.setValue("listModelData", listData);
        }

        function loadListModel() {
            var listData = appSettings.value("listModelData", []);
            myListModel.clear();
            for (var i = 0; i < listData.length; i++) {
                myListModel.append({ "name": listData[i] });
            }
        }

        function addListModelElement() {
            myListModel.append({ "name": "New Record" });
        }
}






