import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15


Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#ffffff"
    border.color: "#ffffff"

    property bool forUpdateHold: true

    Component.onCompleted: {
        turnVectorAnim.start()
        arcEnd.start()
    }
    Image {
        id: unbalance
        x: 0
        y: 0
        width: 2560/2
        source: "images/HelpBG.svg"
        fillMode: Image.PreserveAspectFit
        PropertyAnimation {
            id: turnVectorAnim
            target: turnVectors
            loops: -1
            property: "rotation"
            duration: 2500
            from:0
            to: 360
        }

        Image {
            id: qr
            x: 562
            y: 448
            width: 146/2
            source: "images/qr.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: ourLogo
            x: 379
            y: 448
            width: 352/2
            source: "images/ourLogo.png"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id: mouseArea
            x: 15
            y: 626
            width: 315
            height: 83
            onClicked: {
                if(forUpdateHold===true){
                    turnVectorAnim.pause()
                    forUpdateHold=false
                }
                else{
                    turnVectorAnim.resume()
                    forUpdateHold=true
                }
            }
        }

        Rectangle {
            id: rectangle1
            x: 315
            y: 76
            width: 28
            height: 249
            color: "#ffffff"
        }


    }


    PropertyAnimation {
        id: arcEnd
        target: arc
        loops: -1
        property: "end"
        duration: 2500
        from:-360
        to: 0
    }

    Image {
        id: ovalForHelpPage
        x: 480
        y: 68
        width: 630/2
        source: "images/OvalForHelpPage.svg"
        fillMode: Image.PreserveAspectFit

        ArcItem {
            id: arc
            x: 0
            y: 0
            width: 315
            height: 315
            strokeColor: "#ffffff"
            end: -360
            strokeWidth: 13
            fillColor: "#00000000"
        }
    }

    Image {
        id: turnVectors
        x: 508
        y: 96
        width: 518/2
        source: "images/TurnVectors.svg"
        rotation: 140
        fillMode: Image.PreserveAspectFit
    }





}


