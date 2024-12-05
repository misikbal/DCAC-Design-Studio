import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15



Item {
    ListModel {
        ListElement {
            name: "Record 1"
        }

        // Add more ListElement items as needed

        function containsElement(elementName) {
            for (var i = 0; i < count; i++) {
                if (get(i).name === elementName) {
                    return true;
                }
            }
            return false;
        }

        function createListElement(name) {
            var newElement = { "name": name };
            append(newElement);
            return newElement;
        }
    }
}
