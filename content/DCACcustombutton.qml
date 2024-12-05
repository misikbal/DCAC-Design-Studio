import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.10
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0



Item {
    id : button
    x:32
    width: menuButtonRectId.width
    height: menuButtonRectId.height

    ////***MENU button glow COLORs for open and close MENU***////
    property string menubuttonandglowBGColorclose: "#FAF7FF"
    property string menubuttonGlowColoropen: "#F63838"
    ////***MENU button text COLORs for open and close MENU***////
    property string textMenuButtonColorClose: "#FAF7FF"
    property string textMenuButtonColor: "#F63838"
    ////***MENU button COLORs for open and close MENU***////
    property string menubuttonandglowmainBGColor: "#1A0010"
    property string menubuttonBGColor1and3: "#48545C"

    /***You can change property any page
    when you added here your property with property alias***/
    property alias buttonText: menubuttonText.text
    property alias buttonTextColor: menubuttonText.color
    property alias menubuttonText: menubuttonText
    property alias kerem6: kerem6


    signal buttonClicked

    function calldcacfunc(){
        console.log("woork??")

        if(x===0)
        {
            x=40
            kerem6.color=menubuttonGlowColoropen
            menubuttonText.color=textMenuButtonColor

            //                buttonglows2.color=menubuttonGlowColoropen
//            kerem6.color=menubuttonGlowColoropen
        }
        else
        {
            x=0


        }
    }
    //        Rectangle {

    //            id : containerRectId
    //            width: buttonTextId.implicitWidth + 20
    //            height: buttonTextId.implicitHeight + 20
    //            color: "#f63838"
    //            radius: 4
    //            border {
    //                color: "#02CBF1"
    //                width : 2
    //            }

    //            Text {
    //                id : buttonTextId
    //                text : "Button"
    //                anchors.centerIn: parent
    //            }

    //            MouseArea {
    //                anchors.fill: parent
    //                onClicked: {
    //                    //console.log("Clicked ON :"+ buttonTextId.text)
    //                    rootId.buttonClicked()
    //                }
    //            }
    //        }

    Button {
        id: menuButtonRectId
        x: 0
        y: 0

        width: 210
        height: 50
        text: qsTr("")
        font.pointSize: 16
        background: Rectangle {
            gradient: Gradient {
                orientation: Gradient.Vertical
                GradientStop {
                    id:buttonglows1
                    position: 0
                    color: menubuttonBGColor1and3
                }

                GradientStop {
                    id:buttonglows2
                    position: 0.5
                    color: menubuttonandglowmainBGColor
                }

                GradientStop {
                    id:buttonglows3
                    position: 1
                    color: menubuttonBGColor1and3
                }
            }
        }


        RectangularGlow {
            id: kerem6
            color: menubuttonandglowBGColorclose
            anchors.fill: menuButtonRectId
            spread: 0.13
            glowRadius: 11


            cornerRadius: 10
            cached: false
            clip: false
        }

        Rectangle {
            id: rectangle10
            width: 210
            height: 50
            gradient: Gradient {
                GradientStop {
                    id:buttoncolor1
                    position: 0
                    color: menubuttonBGColor1and3
                }

                GradientStop {
                    id:buttoncolor2
                    position: 0.5
                    color: menubuttonandglowmainBGColor
                }

                GradientStop {
                    id:buttoncolor3
                    position: 1
                    color: menubuttonBGColor1and3
                }

                orientation: Gradient.Vertical
            }
        }



        Text {
            id: menubuttonText
            x: 0
            y: 0
            width: 210
            height: 50
            color: textMenuButtonColorClose
            text: qsTr(" ")
            font.pixelSize: 19
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
        }

        palette.buttonText: "#ffffff"





        MouseArea {
            anchors.fill: parent
            onClicked: {

                button.buttonClicked()
                calldcacfunc()
                //console.log("Clicked ON :"+ buttonTextId.text)
            }
        }

    }



}
