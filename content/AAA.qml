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
    color: "#f7f8fa"
    border.color: "#f7f8fa"

    ListView {
        id: listView
        anchors.fill: parent

        model: ListModel {
                     id: myListModelMemoryInfo
            ListElement {
                name: "Acord 1"
                dateText: "03.02.1997"
                sizeText: "04:05"
            }
            ListElement {
                name: "AAcord 2"
                dateText: "04.02.1997"
                sizeText: "05:05"
            }
            ListElement {
                name: "Bcord 3"
                dateText: "05.02.1997"
                sizeText: "06:05"
            }
        }

        // ListView'in içeriğini alfabetik sırala
        Component.onCompleted: {
            var sortedModel = []
            for (var i = 0; i < count; ++i) {
                var item = myListModelMemoryInfo.get(i)
                sortedModel.push({name: item.name, dateText: item.dateText, sizeText: item.sizeText})
            }
            sortedModel.sort(function(a, b) {
                return a.name.localeCompare(b.name)
            })
            model.clear()
            for (i = 0; i < sortedModel.length; ++i) {
                model.append(sortedModel[i])
            }
        }

        delegate: Item {
            width: listView.width
            height: 50

            Rectangle {
                width: parent.width
                height: parent.height - 1
                color: "lightblue"

                Text {
                    anchors.centerIn: parent
                    text: model.name
                }
            }
        }
    }
}
