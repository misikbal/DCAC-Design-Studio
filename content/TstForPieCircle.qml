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
//    ChartView {
//           id: chartView
//           title: "Donut Chart"
//           anchors.fill: parent
//           antialiasing: true

//           PieSeries {
//               id: donutSeries
//               holeSize: 0.5  // Donut deliği boyutu

//               PieSlice { label: "Slice 1"; value: 10.0 }
//               PieSlice { label: "Slice 2"; value: 20.0 }
//               PieSlice { label: "Slice 3"; value: 30.0 }
//               PieSlice { label: "Slice 4"; value: 15.0 }
//               PieSlice { label: "Slice 5"; value: 25.0 }
//               PieSlice { label: "Slice 6"; value: 12.5 }

//               Component.onCompleted: {
//                   for (var i=0; i < count; i++) {
//                       var slice = at(i);
//                       slice.explodeDistanceFactor = 0.2;  // Parçanın ne kadar öne çıkacağı
//                       slice.clicked.connect(function() {
//                           slice.exploded = !slice.exploded;  // Parçanın yer değiştirmesi
//                       })
//                   }
//               }
//           }
//       }




//    ChartView {
//           id: chartView
//           title: "Donut Chart"
//           anchors.fill: parent
//           antialiasing: true

//           PieSeries {
//               id: donutSeries
//               holeSize: 0.5  // Donut deliği boyutu

//               PieSlice { label: "Slice 1"; value: 10.0 }
//               PieSlice { label: "Slice 2"; value: 20.0 }
//               PieSlice { label: "Slice 3"; value: 30.0 }
//               PieSlice { label: "Slice 4"; value: 15.0 }
//               PieSlice { label: "Slice 5"; value: 25.0 }
//               PieSlice { label: "Slice 6"; value: 12.5 }

//               Component.onCompleted: {
//                   for (var i = 0; i < count; i++) {
//                       (function(index) {
//                           var slice = at(index);
//                           slice.explodeDistanceFactor = 0.2;  // Parçanın ne kadar öne çıkacağı
//                           slice.clicked.connect(function() {
//                               slice.exploded = !slice.exploded;  // Parçanın yer değiştirmesi
//                           })
//                       })(i);
//                   }
//               }
//           }
//       }





    ChartView {
            id: chartView
            anchors.fill: parent
            antialiasing: true
               legend.visible: false

            PieSeries {
                id: donutSeries
                holeSize: 0.3  // Donut deliği boyutu

                PieSlice {
                    label: "Slice 1";
                    value: 10.0
                    color:"#121212"
                }
                PieSlice {
                    label: "Slice 2";
                    value: 20.0
                }
                PieSlice {  label: "Slice 3"; value: 30.0 }
                PieSlice { label: "Slice 4"; value: 15.0 }
                PieSlice { label: "Slice 5";  value: 25.0 }
                PieSlice { label: "Slice 6";value: 12.5 }

                function resetExploded() {
                    for (var i = 0; i < count; i++) {
                        var slice = at(i);
                        slice.exploded = false;
                    }
                }

                Component.onCompleted: {
                    for (var i = 0; i < count; i++) {
                        (function(index) {
                            var slice = at(index);
                            slice.explodeDistanceFactor = 0.2;  // Parçanın ne kadar öne çıkacağı
                            slice.clicked.connect(function() {
                                resetExploded();
                                slice.exploded = true;
                            })
                        })(i);
                    }
                }
            }
        }










}


