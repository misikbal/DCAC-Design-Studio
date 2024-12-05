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

    ChartView {
           id: chartView
           anchors.fill: parent
           legend.visible: false
           title: "Örnek Grafik"
           antialiasing: true

           LineSeries {
               id: lineSeries
               name: "Örnek Seri"
               XYPoint { x: 0; y: 0 }
               XYPoint { x: 1; y: 2 }
               XYPoint { x: 2; y: 3 }
               XYPoint { x: 3; y: 1.5 }
               XYPoint { x: 4; y: 2.5 }
               // Diğer noktaları buraya ekleyebilirsiniz
           }

           MouseArea {
               anchors.fill: parent
               onClicked: {
                   // ChartView sınırlarını belirleyin
                   var leftBoundary = chartView.plotArea.left;
                   var rightBoundary = chartView.plotArea.right;
                   var topBoundary = chartView.plotArea.top;
                   var bottomBoundary = chartView.plotArea.bottom;

                   // Tıklama konumunun sınırlar içerisinde olup olmadığını kontrol edin
                   if (mouseX >= leftBoundary && mouseX <= rightBoundary && mouseY >= topBoundary && mouseY <= bottomBoundary) {
                       var pointValue = chartView.mapToValue(Qt.point(mouseX, mouseY), lineSeries);
                       var pointPosition = chartView.mapToPosition(pointValue, lineSeries);
                       cursorItem.x = pointPosition.x;
                       cursorItem.y = pointPosition.y;
                       cursorText.text = "X: " + pointValue.x.toFixed(2) + " Y: " + pointValue.y.toFixed(2);
                       cursorText.visible = true;
                   }
               }
           }


           Rectangle {
               id: cursorItem
               width: 10
               height: 10
               color: "red"
               visible: false
               anchors.centerIn: parent
           }

           Text {
               id: cursorText
               anchors.top: cursorItem.bottom
               anchors.horizontalCenter: cursorItem.horizontalCenter
               visible: false
           }
       }

    Rectangle {
        x: -538
        y: 251
        width: 300
          height: 50
          border.color: "#d9d9d9"
          border.width: 1
          color: "#ffffff"

          Text {
              id: chosenText
              anchors.centerIn: parent
          }

          MouseArea {
              anchors.fill: parent
              onClicked: {
                  listView.visible = !listView.visible
              }
          }

          ListView {
              id: listView
              x: 0
              width: parent.width
              height: 150
              anchors.top: parent.top
              spacing: 5
              anchors.topMargin: -200
              visible: false

              model: ListModel {
                  ListElement { name: "Element 1" }
                  ListElement { name: "Element 2" }
                  ListElement { name: "Element 3" }
                  ListElement { name: "Element 5" }
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
                              chosenText.text = model.name
                              listView.visible = false
                          }
                      }
                  }
              }
          }
      }


    Item {
        x: -721
        y: 809
        width: 800
        height: 600

        Text {
            id: textOutput
            y: 563
            color: "white"
            text: "Sinüs eğrisi üzerinde bir noktaya tıklayın"
            anchors.bottom: parent.bottom
            anchors.horizontalCenterOffset: 22
            anchors.bottomMargin: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    ChartView {
        id: line
        x: 1630
        y: 31
        width: 564
        height: 336
        antialiasing: true
        legend.visible: false
        ValueAxis{

            id:xAxis
            labelsVisible: false
        }

        ValueAxis{
            id:yAxis
            labelsVisible: false
        }
        LineSeries {

            name: "LineSeries"
            axisX: xAxis
            axisY: yAxis
            XYPoint {
                x: 0
                y: 2
            }

            XYPoint {
                x: 1
                y: 1.2
            }

            XYPoint {
                x: 2
                y: 3.3
            }

            XYPoint {
                x: 5
                y: 2.1
            }
        }

        Rectangle {
            id: rectangle1
            x: 6
            y: 12
            width: 60
            height: 307
            color: "#ffffff"
        }

        Rectangle {
            id: rectangle2
            x: 41
            y: 284
            width: 503
            height: 21
            color: "#ffffff"
        }
    }

    Rectangle {
        id: rectanglerPF
        x: 1103
        y: 891
        width: 942
        height: 150
        color: "#ffffff"
        radius: 0
        border.color: "#dde1e6"
        border.width: 1
        Image {
            x: -500
            y: -5
            width: 2600
            height: 180
            opacity: 1
            visible: false
            source: "images/graph2.png"
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: graphsPhaseA1
            x: -167
            y: 17
            height: 103
            source: "images/GraphsPhaseA.svg"
            fillMode: Image.Pad
        }

        Image {
            x: -1700
            y: -5
            width: 2600
            height: 180
            visible: false
            source: "images/graph1.png"
            fillMode: Image.PreserveAspectFit
        }
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: Item {
                width: rectanglerPF.width
                height: rectanglerPF.height
                Rectangle {
                    width: rectanglerPF.adapt ? rectanglerPF.width : Math.min(rectanglerPF.width, rectanglerPF.height)+250
                    height: rectanglerPF.adapt ? rectanglerPF.height : width+250
                    radius: 0
                    anchors.centerIn: parent
                }
            }
        }
    }

    Image {
        id: graphsPhaseA
        x: 676
        y: -150
        source: "images/GraphsPhaseA.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: graphsPhaseB
        x: 795
        y: -471
        source: "images/GraphsPhaseB.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: graphsPhaseC
        x: 772
        y: -346
        source: "images/GraphsPhaseC.svg"
        fillMode: Image.PreserveAspectFit
    }






}

