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
    clip: true


    SwipeView {
        id: swipeView
        width: 543
        anchors.top: parent.top
        anchors.bottom: radioBar.top
        anchors.bottomMargin: 38
        clip: true
        anchors.rightMargin: 399
        anchors.leftMargin: 338
        anchors.topMargin: -70
        anchors.left: parent.left
        anchors.right: parent.right
        currentIndex: 0

        Rectangle {
            id: rectangle8
            color: "red"

            Text {
                anchors.centerIn: parent
                text: "Rectangle 8"
            }
        }

        Rectangle {
            id: rectangleForPieChart
            color: "blue"

            Text {
                anchors.centerIn: parent
                text: "Rectangle for Pie Chart"
            }
        }
    }

    Row {
          id: radioBar
          y: 688
          anchors.bottom: parent.bottom
          anchors.horizontalCenterOffset: -31
          anchors.bottomMargin: 0
          anchors.horizontalCenter: parent.horizontalCenter
          spacing: 20

          RadioButton {
              text: "Rectangle 8"
              checked: swipeView.currentIndex === 0
              onCheckedChanged: if (checked) swipeView.currentIndex = 0
          }

          RadioButton {
              text: "Rectangle for Pie Chart"
              checked: swipeView.currentIndex === 1
              onCheckedChanged: if (checked) swipeView.currentIndex = 1
          }
      }

}

