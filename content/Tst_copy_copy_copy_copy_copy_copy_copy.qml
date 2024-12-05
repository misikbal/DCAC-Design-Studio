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
        id: flickable5
        x: 15
        y: 657
        width: 322
        height: 56
        layer.enabled: true
        contentWidth: 4400
        contentX: 0
        clip: true
        flickDeceleration: 3000
        maximumFlickVelocity: 5000

        Repeater {
            model: 51 // Toplam 51 öğe oluşturulacak

            delegate: CustomChosingForFilterHarmonics {
                x: index * 86 // Her öğenin x konumu 86 artışla ayarlanır
                filtertexttext.text: {
                            if (index === 0) return "0th";
                            else if (index === 1) return "1st";
                            else if (index === 2) return "2nd";
                            else if (index === 3) return "3rd";
                            else if (index === 21) return "21st";
                            else if (index === 22) return "22nd";
                            else if (index === 23) return "23rd";
                            else if (index === 31) return "31st";
                            else if (index === 32) return "32nd";
                            else if (index === 33) return "33rd";
                            else if (index === 41) return "41st";
                            else if (index === 42) return "42nd";
                            else if (index === 43) return "43rd";
                            else if (index >= 4 && index <= 51) return (index) + "th";
                            else return "";
                        }
                onClickedSignal: {
                    // Tıklama işlemleri burada
                }
                onNonclickedSignal: {
                    // Diğer işlemler burada
                }
            }
        }
    }


}
