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

    property int xValue: 0
       property bool running: false

       ChartView {
           id: chartView
           anchors.fill: parent
           antialiasing: true

           ValueAxis {
               id: xAxis
               min: 0
               max: 5
               tickCount: 11
           }

           ValueAxis {
               id: yAxis
               min: 0
               max: 100
               tickCount: 11
           }

           LineSeries {
               id: lineSeries
               axisX: xAxis
               axisY: yAxis
               name: "Random Data"
           }
       }

       Timer {
              id: timer
              interval: 1000; running: false; repeat: true
              onTriggered: {
                  var yValue = Math.floor(Math.random() * 101);
                  lineSeries.append(xValue, yValue);
                  xValue += 1;

                  if (xValue > 5) {
                      xAxis.min = xValue - 5;
                      xAxis.max = xValue;
                  }
              }
          }

          ColumnLayout {
              anchors.bottom: parent.bottom
              anchors.horizontalCenter: parent.horizontalCenter

              Button {
                  text: running ? "Stop" : "Start"
                  onClicked: {
                      running = !running;
                      timer.running = running;
                      if (!running) {
                          xValue = 0;
                          xAxis.min = 0;
                          xAxis.max = 5;
                          lineSeries.clear();
                      }
                  }
              }
          }
      }
