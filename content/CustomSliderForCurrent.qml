import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.10
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0


Item {
    id : customBGrectangle
    x:0
    width: 240
    height: 35
    property alias handleRect: handleRect
    antialiasing: true
    property alias slider: slider
    signal clickedSignal(string text)

    Rectangle{
        x: 13
        y: 13
        width: slider.width
        height: 10
        radius: 55
        color: "#C9D1D9"
    }
    Slider {
        id: slider
        x: 13
        y: -2
        width: 215
        height: 40
        antialiasing: true
        stepSize: 0.1


        to: 500000
        value: 500000



        // Control topunu tanımla
        handle: Rectangle {
            id: handleRect
            width: 30 // Control topunun genişliği
            height: 30 // Control topunun yüksekliği
            radius: width / 2 // Daire şeklinde control topu yapmak için köşe yarıçapı
            color: "transparent" // Control topunun rengi, burada şeffaf olarak ayarlandı

            // Control topunun ortalanması için x ve y konumlarını ayarla
            x: 0.000425 * slider.value - width / 2
            y: parent.height / 2 - height / 2

            // Mavi yuvarlak görüntüsü için bir iç dairesel grafik ekle
            Rectangle {
                width: parent.width * 0.8 // Mavi yuvarlak çapı
                height: parent.height * 0.8 // Mavi yuvarlak çapı
                radius: width / 2 // Daire şeklinde yapmak için köşe yarıçapı
                color: "#217efd"  // Mavi yuvarlağın rengi
                anchors.centerIn: parent // Mavi yuvarlağın ortalanması
            }
        }

        background: Rectangle {
            x:0
            y:15
            height: 10
            width: handleRect.x+3
            radius: 55
             color: "#617284" // Slider'ın çubuğunun rengi kırmızı olarak ayarlandı
         }


        // Slider'ın değeri değiştiğinde
        onValueChanged: {
            clickedSignal("kerem")
        }


    }



}
