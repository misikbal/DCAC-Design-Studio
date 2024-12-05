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
        id: flickable
        x: 913
        y: 60
        width: 367
        height: 643
        contentY: 0
        clip: true
        flickDeceleration: 3000
        maximumFlickVelocity: 5000
        contentHeight: 0




    ListModel {
                id: harmonicnames

                // Başlangıçta 101 adet öğe ekleyelim.
                Component.onCompleted: {
                    for (var i = 0; i < 101; i++) {
                        harmonicnames.append({"text": "H" + (0.5*i)})
                    }
                }
            }

            ListView {
                id: harmonicnameslistview
                x: 22
                y: 80
                z:1
                width: 150
                height: 5000

                interactive: false
                contentY: 0
                cacheBuffer: 323
                maximumFlickVelocity: 5000
                contentHeight: 5500
                flickDeceleration: 3000
                clip: false

                model: harmonicnames

                delegate: Text {
                    color: "#284863"
                    text: model.text
                    font.pixelSize: 18
                    padding: 10
                }
            }

    ListModel {
                id: listmodell

                // Başlangıçta 101 adet öğe ekleyelim.
                Component.onCompleted: {
                    for (var i = 0; i < 101; i++) {
                        listmodell.append({"text": "0 " })
                    }
                }
            }

            ListView {
                id: listviewtestt
                x: 81
                y: 80
                z:1
                width: 150
                height: 5000

                interactive: false
                contentY: 0
                cacheBuffer: 323
                maximumFlickVelocity: 5000
                contentHeight: 5500
                flickDeceleration: 3000
                clip: false

                model: listmodell

                delegate: Text {
                    color: "#284863"
                    text: model.text
                    font.pixelSize: 18
                    padding: 10
                }
            }
//            Connections {
//                target: uartID
//                function onUart_DataChanged() {
//                    for (var i = 0; i < listmodell.count; i++) {
//                        listmodell.setProperty(i, "text", uartID.getUartData(i))
//                    }

//                }
//            }

}

}

