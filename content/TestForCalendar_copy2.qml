import QtQuick 2.15

import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.1



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
        id: root

     // public
        function set(date) { // new Date(2019, 10 - 1, 4)
            selectedDate = new Date(date)
            positionViewAtIndex((selectedDate.getFullYear()) * 12 + selectedDate.getMonth(), ListView.Center) // index from month year
        }

        signal clicked(date date);  // onClicked: print('onClicked', date.toDateString())

     // private
        property date selectedDate: new Date()

        width: 500;  height: 100 // default size
        snapMode:    ListView.SnapOneItem
        orientation: Qt.Horizontal
        clip:        true

        model: 3000 * 12 // index == months since January of the year 0

        delegate: Item {
            property int year:      Math.floor(index / 12)
            property int month:     index % 12 // 0 January
            property int firstDay:  new Date(year, month, 1).getDay() // 0 Sunday to 6 Saturday

            width: root.width;  height: root.height

            Column {
                Item { // month year header
                    width: root.width;  height: root.height - grid.height

                    Text { // month year
                        anchors.centerIn: parent
                        text: ['January', 'February', 'March', 'April', 'May', 'June',
                               'July', 'August', 'September', 'October', 'November', 'December'][month] + ' ' + year
                        font {pixelSize: 0.5 * grid.cellHeight}
                    }
                }

                Grid { // 1 month calender
                    id: grid

                    width: root.width;  height: 0.875 * root.height
                    property real cellWidth:  width  / columns;
                    property real cellHeight: height / rows // width and height of each cell in the grid.

                    columns: 7 // days
                    rows:    7

                    Repeater {
                        model: grid.columns * grid.rows // 49 cells per month

                        delegate: Rectangle { // index is 0 to 48
                            property int day:  index - 7 // 0 = top left below Sunday (-7 to 41)
                            property int date: day - firstDay + 1 // 1-31

                            width: grid.cellWidth;  height: grid.cellHeight
                            border.width: 0.3 * radius
                            border.color: new Date(year, month, date).toDateString() == selectedDate.toDateString()  &&  text.text  &&  day >= 0?
                                          'black': 'transparent' // selected
                            radius: 0.02 * root.height
                            opacity: !mouseArea.pressed? 1: 0.3  //  pressed state

                            Text {
                                id: text2

                                anchors.centerIn: parent
                                font.pixelSize: 0.5 * parent.height
                                font.bold:      new Date(year, month, date).toDateString() == new Date().toDateString() // today
                                text: {
                                    if(day < 0)                                               ['S', 'M', 'T', 'W', 'T', 'F', 'S'][index] // Su-Sa
                                    else if(new Date(year, month, date).getMonth() == month)  date // 1-31
                                    else                                                      ''
                                }
                            }

                            MouseArea {
                                id: mouseArea

                                anchors.fill: parent
                                enabled:    text.text  &&  day >= 0

                                onClicked: {
                                    selectedDate = new Date(year, month, date)
                                    root.clicked(selectedDate)
                                }
                            }
                        }
                    }
                }
            }
        }

         // Component.onCompleted: set(new Date()) // today (otherwise Jan 0000)
    }
}

