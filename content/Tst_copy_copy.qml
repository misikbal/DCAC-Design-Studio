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

    Flickable {
        x: 0
        y: 164
        width: 800  // ScrollView genişliği
        height: 400
        clip: true
        contentWidth: countOfBars.count*40  // ScrollView yüksekliği

//        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOn

        ChartView {
                        width: countOfBars.count*40  // ChartView genişliği. Bu değeri değiştirerek grafiğin genel genişliğini ayarlayabilirsiniz.
            height: parent.height
            legend.alignment: Qt.AlignBottom
            antialiasing: true
            legend.visible: false

            BarSeries {
                id: mySeries

                Component.onCompleted: {
                    for (var i = 0; i < 99; i++) {
                        countOfBars.categories[i] = i
                    }
                }
                axisX: BarCategoryAxis {
                    id: countOfBars
                    categories: ["2007", "2008", "2009", "2010", "2011", "2012", "2013"]
                }
                BarSet {
                    values: [2, 2, 3, 4, 5, 6, 1]
                    onClicked: console.debug("Bob clicked!" + index + " " + this.at(index))
                }
                BarSet {
                    values: [5, 1, 2, 4, 1, 7, 2]
                    onClicked: console.debug("Susan clicked!" + index + " " + this.at(index))
                }
            }
        }
    }




}

