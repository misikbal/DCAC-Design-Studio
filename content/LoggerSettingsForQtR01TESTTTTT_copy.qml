import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import Qt.labs.calendar 1.0

import QtQuick.Dialogs 1.3
import Qt.labs.folderlistmodel 2.15
import QtQuick.LocalStorage 2.15
import Qt.labs.settings 1.1

Rectangle {
    id: rectangle1
    width: 1280
    height: 728
    color: "#f7f8fa"
    border.color: "#ffffff"
    function saveText() {
        appSettings.setValue("myText", inputText.text);
    }

    function loadText() {
        inputText.text = appSettings.value("myText", "");
    }
    // Ayarlar nesnesi
      Settings {
          id: appSettings
          category: "MyAppSettings"

      }

      // Ana sayfa
      Page {
          anchors.fill: parent

          // Kaydetme ve geri çağırma işlevleri


          // Arayüz
          Column {
              anchors.centerIn: parent
              spacing: 10

              TextField {
                  id: inputText
                  placeholderText: "Text girin"
                  width: parent.width
              }

              Row {
                  spacing: 10

                  Button {
                      text: "Kaydet"
                      onClicked: {saveText();


                      }
                  }

                  Button {
                      text: "Geri yükle"
                      onClicked: loadText();
                  }
              }
          }
      }
}






