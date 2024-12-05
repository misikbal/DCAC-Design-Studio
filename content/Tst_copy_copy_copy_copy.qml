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


    Rectangle {
        width: frame.implicitWidth + 10
        height: frame.implicitHeight + 10

        function formatText(count, modelData) {
            var data = count === 12 ? modelData + 1 : modelData;
            return data.toString().length < 2 ? "0" + data : data;
        }

        FontMetrics {
            id: fontMetrics
        }

        Component {
            id: delegateComponent

            Label {
                text: "H"+(Tumbler.tumbler.count, modelData)
                opacity: 0.95 - Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount / 2)
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: fontMetrics.font.pixelSize * 2
            }
        }


        Frame {
            id: frame
            padding: 0
            anchors.centerIn: parent

            Row {
                id: row

                Tumbler {
                    id: minutesTumbler
                    model: 51
                    delegate: delegateComponent
                }

            }
        }
    }

    Text {
        id: text1
        x: 106
        y: 77
        text: (minutesTumbler.currentIndex < 10 ? "0" + minutesTumbler.currentIndex : minutesTumbler.currentIndex)
        font.pixelSize: 50
    }


}

