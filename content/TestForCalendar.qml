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


    Calendar {
        id: calendar
        width: 336
        height:500
        frameVisible: true





        weekNumbersVisible: false
        // selectedDate: new Date(2014, 0, 1)
        focus: true
        property var startDate: undefined
        property var stopDate: undefined



        style: CalendarStyle {
       dayDelegate: Item {
                readonly property color sameMonthDateTextColor: "#444"
                readonly property color selectedDateColor: "#3778d0"
                readonly property color selectedDateTextColor: "white"
                readonly property color differentMonthDateTextColor: "#bbb"
                readonly property color invalidDatecolor: "#dddddd"
                property var dateOnFocus: styleData.date
         Rectangle {
                    anchors.fill: parent
                    border.color: "transparent"
                    color: /*styleData.date !== undefined &&*/ styleData.selected ? selectedDateColor : "transparent"

                }

                Rectangle{
                    id:fl
                    anchors.fill: parent
                    property bool flag: false
                    color: ((dateOnFocus>calendar.startDate) && (dateOnFocus< calendar.stopDate))?"#55555555":
                           (calendar.startDate !==undefined && dateOnFocus.getTime()===calendar.startDate.getTime())?"#3778d0":"transparent"
                }


                MouseArea{
                    anchors.fill: parent
                    propagateComposedEvents: true
                    onPressed: {

//                        calendar.startDate=styleData.date
                         calendar.stopDate= undefined
                        console.log("Tıklanan Tarih: " + styleData.date);

                        mouse.accepted = false
                    }
                }

                Label {
                           id: dayDelegateText
                           text: styleData.date.getDate()
                           anchors.horizontalCenter: parent.horizontalCenter // Orta hizalanmış
                           anchors.top: parent.top // Üst kenara hizalanmış
                           anchors.topMargin: 45
                           color: {
                               var color = invalidDatecolor;
                               if (styleData.valid) {
                                   // Date is within the valid range.
                                   color = styleData.visibleMonth ? sameMonthDateTextColor : differentMonthDateTextColor;
                                   if (styleData.selected) {
                                       color = selectedDateTextColor;
                                   }
                               }
                               color;
                           }
                       }

            }
        }
    }



}

