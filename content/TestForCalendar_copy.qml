import QtQuick 2.15

import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.1

//import Qt.labs.calendar 1.0



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


    Rectangle {
           anchors.fill: parent
           color: "#ffffff"

           Calendar {
               id: customCalendar
               width: parent.width
               height: parent.height
               frameVisible: true
               weekNumbersVisible: false
               focus: true

               property var startDate: undefined
               property var stopDate: undefined

               style: CalendarStyle {
                   dayDelegate: Item {
                       width: customCalendar.width / 7
                       height: customCalendar.height / 7

                       Rectangle {
                           anchors.fill: parent
                           border.color: "transparent"
                           color: styleData.selected ? selectedDateColor : "transparent"
                       }

                       Rectangle {
                           anchors.centerIn: parent
                           width: 30
                           height: 30
                           color: "transparent"

                           Text {
                               text: styleData.date.getDate()
                               font.pixelSize: 16
                               anchors.centerIn: parent
                               color: {
                                   var color = invalidDatecolor;
                                   if (styleData.valid) {
                                       color = styleData.visibleMonth ? sameMonthDateTextColor : differentMonthDateTextColor;
                                       if (styleData.selected) {
                                           color = selectedDateTextColor;
                                       }
                                   }
                                   color;
                               }
                           }
                       }

                       MouseArea {
                           anchors.fill: parent
                           onClicked: {
                               customCalendar.stopDate = undefined;
                               console.log("Tıklanan Tarih: " + styleData.date);
                           }
                       }
                   }
               }
           }
       }

}

