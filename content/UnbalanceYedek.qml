import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtQuick.Shapes 1.0
import QtQuick.Layouts 1.10
import QtQuick.Timeline 1.0
import QtQuick3D 1.15



Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#ffffff"
    border.color: "#ffffff"

    Rectangle {
    id: __multi__selection__

    Text {
    id: unbalanceHeaderText
    x: 158
    y: 174
    width: 222
    height: 138/2
    color: "#284863"
    text: qsTr("Unbalance")
    font.letterSpacing: -2
    font.pixelSize: 26
    verticalAlignment: Text.AlignVCenter
    wrapMode: Text.Wrap
    font.family: "Akshar"
    }

    RectangleItem {
    id: rectangle222
    x: 134
    y: 139
    width: 265
    height: 265
    strokeWidth: -1
    PieItem {
    id: pie3
    x: 60
    y: 48
    width: 280/2
    height: 280/2
    strokeColor: "#00ff0000"
    end: 420
    begin: 300
    gradient: RadialGradient {
    centerY: 68.5
    focalRadius: 0
    focalY: 68.5
    centerRadius: 68.5
    focalX: 68.5
    centerX: 68.5
    GradientStop {
    position: 0
    color: "#217efd"
    }

    GradientStop {
    position: 1
    color: "#00217efd"
    }
    }
    }

    Image {
    id: group9791
    x: 130
    y: 115
    width: 135/2
    source: "images/Group 9791.svg"
    fillMode: Image.PreserveAspectFit
    rotation: 30
    transformOrigin: Item.Left
    }

    PieItem {
    id: pie2
    x: 60
    y: 48
    width: 280/2
    height: 280/2
    strokeColor: "#00ff0000"
    end: 300
    begin: 180
    gradient: RadialGradient {
    centerY: 68.5
    focalRadius: 0
    focalY: 68.5
    centerRadius: 68.5
    focalX: 68.5
    centerX: 68.5
    GradientStop {
    position: 0
    color: "#fcae18"
    }

    GradientStop {
    position: 1
    color: "#00217efd"
    }
    }
    }

    Image {
    id: group9789
    x: 130
    y: 115
    width: 135/2
    source: "images/Group 9789.svg"
    fillMode: Image.PreserveAspectFit
    rotation: 160
    transformOrigin: Item.Left
    }

    PieItem {
    id: pie1
    x: 60
    y: 48
    width: 280/2
    height: 280/2
    strokeColor: "#00ff0000"
    end: 180
    begin: 60
    gradient: RadialGradient {
    centerY: 68.5
    focalRadius: 0
    focalY: 68.5
    centerRadius: 68.5
    focalX: 68.5
    centerX: 68.5
    GradientStop {
    position: 0
    color: "#ff5654"
    }

    GradientStop {
    position: 1
    color: "#00217efd"
    }
    }
    }

    Image {
    id: group97901
    x: 130
    y: 115
    width: 135/2
    height: 6
    source: "images/Group 9790.svg"
    fillMode: Image.PreserveAspectFit
    rotation: 270
    transformOrigin: Item.Left
    }
    fillColor: "#008b2626"
    }

    Text {
    id: text10
    x: 141
    y: 444
    width: 90
    height: 50/2
    color: "#284863"
    text: qsTr("A: 119.2°")
    font.letterSpacing: -2
    font.pixelSize: 21
    verticalAlignment: Text.AlignVCenter
    wrapMode: Text.Wrap
    font.styleName: "Light"
    font.family: "Akshar"
    }

    Text {
    id: text12
    x: 225
    y: 444
    width: 90
    height: 50/2
    color: "#284863"
    text: qsTr("B: 119.2°")
    font.letterSpacing: -2
    font.pixelSize: 21
    verticalAlignment: Text.AlignVCenter
    wrapMode: Text.Wrap
    font.styleName: "Light"
    font.family: "Akshar"
    }

    Text {
    id: text222
    x: 309
    y: 444
    width: 90
    height: 50/2
    color: "#284863"
    text: qsTr("C: 119.2°")
    font.letterSpacing: -2
    font.pixelSize: 21
    verticalAlignment: Text.AlignVCenter
    wrapMode: Text.Wrap
    font.styleName: "Light"
    font.family: "Akshar"
    }

    Image {
    id: ellipse203
    x: 178
    y: 169
    width: 336/2
    source: "images/Ellipse 203.svg"
    fillMode: Image.PreserveAspectFit
    rotation: 0
    }
    }

    Item {
        id: __materialLibrary__
    }

    GroupItem {
        x: 704
        y: -13
        Image {
            x: 0
            y: 0
            width: 367
            source: "images/Menu.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            x: 12
            y: 425
            width: 285/2
            height: 480/2
            color: "#284863"
            text: qsTr("THD \nTHD \nTDD")
            font.letterSpacing: -2
            font.pixelSize: 19
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Bold"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 12
            y: 445
            width: 180/2
            height: 480/2
            color: "#284863"
            text: qsTr("Voltage \nCurrent \nCurrent")
            font.letterSpacing: -2
            font.pixelSize: 19
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 87
            y: 434
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("25,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        CustomHeaderForPhaseN {
            x: 294
            y: 383
            width: 133/2
            height: 62/2
            clip: true
        }

        CustomHeaderForPhaseC {
            x: 223
            y: 383
            width: 133/2
            height: 62/2
            clip: true
        }

        CustomHeaderForPhaseB {
            x: 152
            y: 383
            width: 133/2
            height: 62/2
            clip: true
        }

        CustomHeaderForPhaseA {
            x: 81
            y: 383
            width: 133/2
            height: 62/2
            clip: true
        }

        Text {
            x: 229
            y: 375
            width: 60
            height: 96/2
            color: "#ffffff"
            text: qsTr("Phase C")
            font.letterSpacing: -2
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            x: 182
            y: 84
            width: 150/2
            height: 500/2
            color: "#284863"
            text: qsTr("116 \n122 \n221 \n121 \n100")
            font.letterSpacing: -2
            font.pixelSize: 19
            verticalAlignment: Text.AlignTop
            lineHeight: 2.1
            wrapMode: Text.Wrap
            z: 1
            font.family: "Akshar"
        }

        Text {
            x: 87
            y: 375
            width: 60
            height: 96/2
            color: "#ffffff"
            text: qsTr("Phase A")
            font.letterSpacing: -2
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            x: 278
            y: 87
            width: 150/2
            height: 500/2
            color: "#fcae18"
            text: qsTr("58 \n60 \n55 \n60 \n40")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignTop
            lineHeight: 2.3
            wrapMode: Text.Wrap
            z: 1
            font.family: "Akshar"
            styleColor: "#000000"
        }

        Text {
            x: 300
            y: 375
            width: 120/2
            height: 96/2
            color: "#ffffff"
            text: qsTr("Phase N")
            font.letterSpacing: -2
            font.pixelSize: 16
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            x: 331
            y: 87
            width: 150/2
            height: 500/2
            color: "#ff5854"
            text: qsTr("58 \n60 \n55 \n60 \n40")
            font.letterSpacing: -2
            font.pixelSize: 17
            verticalAlignment: Text.AlignTop
            lineHeight: 2.3
            wrapMode: Text.Wrap
            z: 1
            font.family: "Akshar"
            styleColor: "#000000"
        }

        CustomButtonHeaderWhiteBG {
            x: 178
            y: 20
            width: 150/2
            height: 99/2
            clip: true
        }

        CustomButtonHeaderWhiteBG {
            x: 257
            y: 20
            width: 200/2
            height: 99/2
            clip: true
        }

        CustomButtonHeaderBlackBG {
            x: 12
            y: 20
            width: 325/2
            height: 99/2
            clip: true
        }

        Text {
            x: 185
            y: 20
            width: 250/2
            height: 96/2
            color: "#284863"
            text: qsTr("Events")
            font.letterSpacing: -2
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            x: 262
            y: 20
            width: 250/2
            height: 96/2
            color: "#284863"
            text: qsTr("Risks")
            font.letterSpacing: -2
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            x: 12
            y: 71
            width: 285/2
            height: 480/2
            color: "#284863"
            text: qsTr("Dips \nSweels \nInterrruptions \nRVC \nSags")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignVCenter
            lineHeight: 2
            wrapMode: Text.Wrap
            z: 1
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 25
            y: 20
            width: 250/2
            height: 96/2
            color: "#ffffff"
            text: qsTr("Event Types")
            font.letterSpacing: -2
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        CustomButtonHeaderWhiteBG {
            x: 25
            y: 314
            width: 664/2
            height: 99/2
            clip: true
        }

        Text {
            x: 237
            y: 315
            width: 250/2
            height: 96/2
            color: "#284863"
            text: qsTr("2,214")
            font.letterSpacing: -2
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        CustomButtonHeaderBlackBG {
            x: 12
            y: 314
            width: 361/2
            height: 99/2
            clip: true
        }

        Text {
            x: 25
            y: 315
            width: 250/2
            height: 96/2
            color: "#ffffff"
            text: qsTr("Total Event")
            font.letterSpacing: -2
            font.pixelSize: 20
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Column {
            x: 257
            y: 84
            width: 290/2
            spacing: 39/2
            Repeater {
                model: 5
                Image {
                    x: 0
                    y: 0
                    width: 48/2
                    source: "images/Group 9730.svg"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        Column {
            x: 310
            y: 84
            width: 290/2
            spacing: 39/2
            Repeater {
                model: 5
                Image {
                    x: 0
                    y: 0
                    width: 48/2
                    source: "images/Group 9729.svg"
                    fillMode: Image.PreserveAspectFit
                }
            }
        }

        Text {
            x: 158
            y: 434
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("25,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 229
            y: 434
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("25,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 300
            y: 434
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("225,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 87
            y: 504
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("25,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 158
            y: 504
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("25,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 229
            y: 504
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("25,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 300
            y: 504
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("25,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 87
            y: 574
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("25,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 158
            y: 574
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("25,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 229
            y: 574
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("25,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }

        Text {
            x: 300
            y: 574
            width: 150/2
            height: 50
            color: "#284863"
            text: qsTr("25,47")
            font.letterSpacing: -2
            font.pixelSize: 40/2
            verticalAlignment: Text.AlignTop
            lineHeight: 3
            wrapMode: Text.Wrap
            z: 1
            font.styleName: "Light"
            font.family: "Akshar"
            clip: true
        }
    }
}

