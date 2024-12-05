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
    color: "#f7f8fa"
    border.color: "#ffffff"

    property int counterForN: 1
    property var historyForSLD: []


    Component.onCompleted: {
        //console.log(mouseArea1Y.visible)

    }

    Rectangle {
        id: rectangle1
        x: 0
        y: 0
        width: 696/2
        height: 1456/2
        color: "#ffffff"
        border.color: "#e1e5ea"

        Flickable {
            id: flickable
            x: 0
            y: 8
            visible: true
            width: 348
            height: 435
            ScrollBar.vertical: ScrollBar {
                x: 330
                width: 10
                z:1
                height: 650
                policy: ScrollBar.AlwaysOn
                size: flickable.height / flickable.contentHeight
                //                position: flickable.contentY / flickable.contentHeight
                position:0
                anchors.right: parent.right
                anchors.rightMargin: 8
                contentItem: Rectangle {
                    implicitHeight: parent.height / 2
                    implicitWidth: parent.width
                    color: "gray"
                    radius: 5
                }
            }

            clip: true
            contentHeight: 600


            SequentialAnimation{
                id:animationRectsClicked
                loops: -1

                ParallelAnimation{
                    PropertyAnimation {
                        target: rectangleForCom1
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: rectangleForCom2
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: rectangleForCom3
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: rectangleForCom4
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: rectangleForCom5
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: rectangleForCom6
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: rectangleForCom7
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: rectangleForCom8
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: rectangleForCom9
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: rectangleForCom10
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                }
                ParallelAnimation{
                    PropertyAnimation {
                        target: rectangleForCom1
                        property: "opacity"
                        duration: 1000
                        to: 0
                    }
                    PropertyAnimation {
                        target: rectangleForCom2
                        property: "opacity"
                        duration: 1000
                        to: 0
                    }
                    PropertyAnimation {
                        target: rectangleForCom3
                        property: "opacity"
                        duration: 1000
                        to: 0
                    }
                    PropertyAnimation {
                        target: rectangleForCom4
                        property: "opacity"
                        duration: 1000
                        to: 0
                    }
                    PropertyAnimation {
                        target: rectangleForCom5
                        property: "opacity"
                        duration: 1000
                        to: 0
                    }
                    PropertyAnimation {
                        target: rectangleForCom6
                        property: "opacity"
                        duration: 1000
                        to: 0
                    }
                    PropertyAnimation {
                        target: rectangleForCom7
                        property: "opacity"
                        duration: 1000
                        to: 0
                    }
                    PropertyAnimation {
                        target: rectangleForCom8
                        property: "opacity"
                        duration: 1000
                        to: 0
                    }
                    PropertyAnimation {
                        target: rectangleForCom9
                        property: "opacity"
                        duration: 1000
                        to: 0
                    }
                    PropertyAnimation {
                        target: rectangleForCom10
                        property: "opacity"
                        duration: 1000
                        to: 0
                    }
                }
            }


            Image {
                id: sLDBGForImages1
                x: 3
                y: 7
                width: 314/2
                source: "images/SLDBGForImages.svg"
                antialiasing: true
                fillMode: Image.PreserveAspectFit

                MouseArea {
                    id: mouseArea
                    x: 0
                    y: 0
                    width: 157
                    height: 100
                    antialiasing: true
                    onClicked: {
                        if(dropZone11.opacity!==0){
                            com11.source="images/Com4.svg"

                            mouseArea1.visible=false
                            comBM11.source="images/Com4.svg"
                            bmBox1.text="Utility"
                            infoText.text="Selected the Utility"
                            bmBoxRect1.border.color="#d6e0e7"
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0

                            bmBoxRect1.border.color="#217efd"

                            rectangle1.x=-500
                            rectangleForUtility.x=0
                            rectangle3.visible=false
                            rectangle4.visible=false
                            rectangle3.rotation=0
                            comBM11.visible=true

                            if(mouseArea1.visible===false && mouseArea2.visible===false){
                                rectanglenode1.visible=true
                            }

                        }
                        if(dropZone12.opacity!==0){
                            com12.source="images/Com4.svg"

                            mouseArea2.visible=false
                            comBM12.source="images/Com4.svg"
                            bmBox2.text="Utility"
                            infoText.text="Selected the Utility"
                            bmBoxRect2.border.color="#d6e0e7"
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect2.border.color="#217efd"

                            rectangle1.x=-500
                            rectangleForUtility.x=0
                            rectangle5.visible=false
                            rectangle6.visible=false
                            rectangle5.rotation=0
                            comBM12.visible=true

                            if(mouseArea1.visible===false && mouseArea2.visible===false){
                                rectanglenode1.visible=true
                            }


                        }

                        if(dropZone14.opacity!==0){
                            com14.source="images/Com4.svg"

                            mouseArea4.visible=false
                            comBM14.source="images/Com4.svg"
                            bmBox4.text="Utility"
                            infoText.text="Selected the Utility"
                            bmBoxRect4.border.color="#d6e0e7"
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect4.border.color="#217efd"

                            rectangle1.x=-500
                            rectangleForUtility.x=0
                        }
                        if(dropZone15.opacity!==0){
                            com15.source="images/Com4.svg"

                            mouseArea5.visible=false
                            comBM15.source="images/Com4.svg"
                            bmBox5.text="Utility"
                            infoText.text="Selected the Utility"
                            bmBoxRect5.border.color="#d6e0e7"
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect5.border.color="#217efd"

                            rectangle1.x=-500
                            rectangleForUtility.x=0
                        }
                    }


                }

                Rectangle {
                    id: rectangleForCom1
                    x: 1
                    y: 4
                    width: 155
                    height: 66
                    opacity: 0
                    color: "#00ffffff"
                    radius: 8
                    border.color: "#217efd"
                    border.width: 3
                }

                Text {
                    x: 0
                    y: 65
                    width: 157
                    height: 36
                    color: "#284863"
                    text: qsTr("Utility")
                    font.letterSpacing: -1.4
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Image {
                    id: component1
                    x: 26
                    y: 15
                    width: 212/2
                    source: "images/Component4.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
            }

            Image {
                id: sLDBGForImages2
                x: 167
                y: 7
                width: 314/2
                source: "images/SLDBGForImages.svg"
                MouseArea {
                    x: 0
                    y: 0
                    width: 157
                    height: 100
                    antialiasing: true

                    onClicked: {
                        if(dropZone11.opacity!==0){
                            com11.source="images/Com1.svg"

                            mouseArea1.visible=false
                            comBM11.source="images/Com1.svg"
                            bmBox1.text="Transformer"
                            infoText.text="Selected the Transformer"
                            bmBoxRect1.border.color="#d6e0e7"
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0

                            rectangle1.x=-500
                            rectangleForTransformer.x=0
                            bmBoxRect1.border.color="#217efd"

                            rectangle3.visible=false
                            rectangle4.visible=false
                            rectangle3.rotation=0
                            comBM11.visible=true

                            if(mouseArea2.visible===false && mouseArea2.visible===false){
                                rectanglenode1.visible=true
                            }

                        }
                        if(dropZone12.opacity!==0){
                            com12.source="images/Com1.svg"

                            mouseArea2.visible=false
                            comBM12.source="images/Com1.svg"
                            bmBox2.text="Transformer"
                            infoText.text="Selected the Transformer"
                            bmBoxRect2.border.color="#d6e0e7"
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0

                            rectangle1.x=-500
                            rectangleForTransformer.x=0
                            bmBoxRect2.border.color="#217efd"
                        }

                        if(dropZone14.opacity!==0){
                            com14.source="images/Com1.svg"

                            mouseArea4.visible=false
                            comBM14.source="images/Com1.svg"
                            bmBox4.text="Transformer"
                            infoText.text="Selected the Transformer"
                            bmBoxRect4.border.color="#d6e0e7"
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0

                            rectangle1.x=-500
                            rectangleForTransformer.x=0
                            bmBoxRect4.border.color="#217efd"
                        }
                        if(dropZone15.opacity!==0){
                            com15.source="images/Com1.svg"

                            mouseArea5.visible=false
                            comBM15.source="images/Com1.svg"
                            bmBox5.text="Transformer"
                            infoText.text="Selected the Transformer"
                            bmBoxRect5.border.color="#d6e0e7"
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0

                            rectangle1.x=-500
                            rectangleForTransformer.x=0
                            bmBoxRect5.border.color="#217efd"
                        }


                    }

                }

                Rectangle {
                    id: rectangleForCom2
                    x: 1
                    y: 4
                    width: 155
                    height: 66
                    opacity: 0
                    color: "#00ffffff"
                    radius: 10/2
                    border.color: "#217efd"
                    border.width: 3
                }

                Text {
                    x: 0
                    y: 65
                    width: 157
                    height: 36
                    color: "#284863"
                    text: qsTr("Transformer")
                    font.letterSpacing: -1.4
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Image {
                    x: 26
                    y: 15
                    width: 212/2
                    source: "images/Component1.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: sLDBGForImages3
                x: 3
                y: 115
                width: 314/2
                source: "images/SLDBGForImages.svg"
                MouseArea {
                    x: 0
                    y: 0
                    width: 157
                    height: 100
                    antialiasing: true
                    onClicked: {
                        if(dropZone11.opacity!==0){
                            com11.source="images/Com2.svg"

                            mouseArea1.visible=false
                            comBM11.source="images/Com2.svg"
                            bmBox1.text="VSD"
                            infoText.text="Selected the VSD"
                            bmBoxRect1.border.color="#d6e0e7"
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect1.border.color="#217efd"

                            rectangle1.x=-500
                            rectangleForVSD.x=0
                            rectangle3.visible=false
                            rectangle4.visible=false
                            rectangle3.rotation=0
                            comBM11.visible=true

                            if(mouseArea1.visible===false && mouseArea2.visible===false){
                                rectanglenode1.visible=true
                            }


                        }
                        if(dropZone12.opacity!==0){
                            com12.source="images/Com2.svg"

                            mouseArea2.visible=false
                            comBM12.source="images/Com2.svg"
                            bmBox2.text="VSD"
                            infoText.text="Selected the VSD"
                            bmBoxRect2.border.color="#d6e0e7"
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect2.border.color="#217efd"
                        }

                        if(dropZone14.opacity!==0){
                            com14.source="images/Com2.svg"

                            mouseArea4.visible=false
                            comBM14.source="images/Com2.svg"
                            bmBox4.text="VSD"
                            infoText.text="Selected the VSD"
                            bmBoxRect4.border.color="#d6e0e7"
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect4.border.color="#217efd"
                        }
                        if(dropZone15.opacity!==0){
                            com15.source="images/Com2.svg"

                            mouseArea5.visible=false
                            comBM15.source="images/Com2.svg"
                            bmBox5.text="VSD"
                            infoText.text="Selected the VSD"
                            bmBoxRect5.border.color="#d6e0e7"
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect5.border.color="#217efd"
                        }
                    }

                }

                Rectangle {
                    id: rectangleForCom3
                    x: 1
                    y: 4
                    width: 155
                    height: 66
                    opacity: 0
                    color: "#00ffffff"
                    radius: 10/2
                    border.color: "#217efd"
                    border.width: 3
                }

                Text {
                    x: 0
                    y: 65
                    width: 157
                    height: 36
                    color: "#284863"
                    text: qsTr("VSD")
                    font.letterSpacing: -1.4
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Image {
                    x: 26
                    y: 15
                    width: 212/2
                    source: "images/Component2.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: sLDBGForImages4
                x: 167
                y: 115
                width: 314/2
                source: "images/SLDBGForImages.svg"
                MouseArea {
                    x: 0
                    y: 0
                    width: 157
                    height: 100
                    antialiasing: true

                    onClicked: {
                        if(dropZone11.opacity!==0){
                            com11.source="images/Com3.svg"

                            mouseArea1.visible=false
                            comBM11.source="images/Com3.svg"
                            bmBox1.text="Motor"
                            infoText.text="Selected the Motor"
                            bmBoxRect1.border.color="#d6e0e7"
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect1.border.color="#217efd"

                            rectangle1.x=-500
                            rectangleForMotor.x=0
                            rectangle3.visible=false
                            rectangle4.visible=false
                            rectangle3.rotation=0
                            comBM11.visible=true

                            if(mouseArea1.visible===false && mouseArea2.visible===false){
                                rectanglenode1.visible=true
                            }
                        }
                        if(dropZone12.opacity!==0){
                            com12.source="images/Com3.svg"

                            mouseArea2.visible=false
                            comBM12.source="images/Com3.svg"
                            bmBox2.text="Motor"
                            infoText.text="Selected the Motor"
                            bmBoxRect2.border.color="#d6e0e7"
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect2.border.color="#217efd"
                        }

                        if(dropZone14.opacity!==0){
                            com14.source="images/Com3.svg"

                            mouseArea4.visible=false
                            comBM14.source="images/Com3.svg"
                            bmBox4.text="Motor"
                            infoText.text="Selected the Motor"
                            bmBoxRect4.border.color="#d6e0e7"
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                        }
                        if(dropZone15.opacity!==0){
                            com15.source="images/Com3.svg"

                            mouseArea5.visible=false
                            comBM15.source="images/Com3.svg"
                            bmBox5.text="Motor"
                            infoText.text="Selected the Motor"
                            bmBoxRect5.border.color="#d6e0e7"
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect5.border.color="#217efd"
                        }
                    }

                }

                Rectangle {
                    id: rectangleForCom4
                    x: 1
                    y: 4
                    width: 155
                    height: 66
                    opacity: 0
                    color: "#00ffffff"
                    radius: 10/2
                    border.color: "#217efd"
                    border.width: 3
                }

                Text {
                    x: 0
                    y: 65
                    width: 157
                    height: 36
                    color: "#284863"
                    text: qsTr("Motor")
                    font.letterSpacing: -1.4
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Image {
                    x: 26
                    y: 15
                    width: 212/2
                    source: "images/Component3.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: sLDBGForImages5
                x: 3
                y: 223
                width: 314/2
                source: "images/SLDBGForImages.svg"
                MouseArea {
                    x: 0
                    y: 0
                    width: 157
                    height: 100
                    antialiasing: true

                    onClicked: {
                        if(dropZone11.opacity!==0){
                            com11.source="images/Com5.svg"

                            mouseArea1.visible=false
                            comBM11.source="images/Com5.svg"
                            bmBox1.text="Circuit Breaker"
                            infoText.text="Selected the Circuit Breaker"
                            bmBoxRect1.border.color="#d6e0e7"
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect1.border.color="#217efd"

                            rectangle1.x=-500
                            rectangleForCircuitBreaker.x=0
                            rectangle3.visible=false
                            rectangle4.visible=false
                            rectangle3.rotation=0
                            comBM11.visible=true

                            if(mouseArea1.visible===false && mouseArea2.visible===false){
                                rectanglenode1.visible=true
                            }
                        }
                        if(dropZone12.opacity!==0){
                            com12.source="images/Com5.svg"

                            mouseArea2.visible=false
                            comBM12.source="images/Com5.svg"
                            bmBox2.text="Circuit Breaker"
                            infoText.text="Selected the Circuit Breaker"
                            bmBoxRect2.border.color="#d6e0e7"
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect2.border.color="#217efd"
                        }

                        if(dropZone14.opacity!==0){
                            com14.source="images/Com5.svg"

                            mouseArea4.visible=false
                            comBM14.source="images/Com5.svg"
                            bmBox4.text="Circuit Breaker"
                            infoText.text="Selected the Circuit Breaker"
                            bmBoxRect4.border.color="#d6e0e7"
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect4.border.color="#217efd"
                        }
                        if(dropZone15.opacity!==0){
                            com15.source="images/Com5.svg"

                            mouseArea5.visible=false
                            comBM15.source="images/Com5.svg"
                            bmBox5.text="Circuit Breaker"
                            infoText.text="Selected the Circuit Breaker"
                            bmBoxRect5.border.color="#d6e0e7"
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect5.border.color="#217efd"
                        }
                    }

                }

                Rectangle {
                    id: rectangleForCom5
                    x: 1
                    y: 4
                    width: 155
                    height: 66
                    opacity: 0
                    color: "#00ffffff"
                    radius: 10/2
                    border.color: "#217efd"
                    border.width: 3
                }

                Text {
                    x: 0
                    y: 65
                    width: 157
                    height: 36
                    color: "#284863"
                    text: qsTr("Circuit Breaker")
                    font.letterSpacing: -1.4
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Image {
                    x: 26
                    y: 15
                    width: 212/2
                    source: "images/Component5.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: sLDBGForImages6
                x: 167
                y: 223
                width: 314/2
                source: "images/SLDBGForImages.svg"
                MouseArea {
                    x: 0
                    y: 0
                    width: 157
                    height: 100
                    antialiasing: true

                    onClicked: {
                        if(dropZone11.opacity!==0){
                            com11.source="images/Com6.svg"

                            mouseArea1.visible=false
                            comBM11.source="images/Com6.svg"
                            bmBox1.text="Load"
                            infoText.text="Selected the Load"
                            bmBoxRect1.border.color="#d6e0e7"
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect1.border.color="#217efd"
                        }
                        if(dropZone12.opacity!==0){
                            com12.source="images/Com6.svg"

                            mouseArea2.visible=false
                            comBM12.source="images/Com6.svg"
                            bmBox2.text="Load"
                            infoText.text="Selected the Load"
                            bmBoxRect2.border.color="#d6e0e7"
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect2.border.color="#217efd"
                        }

                        if(dropZone14.opacity!==0){
                            com14.source="images/Com6.svg"

                            mouseArea4.visible=false
                            comBM14.source="images/Com6.svg"
                            bmBox4.text="Load"
                            infoText.text="Selected the Load"
                            bmBoxRect4.border.color="#d6e0e7"
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect4.border.color="#217efd"
                        }
                        if(dropZone15.opacity!==0){
                            com15.source="images/Com6.svg"

                            mouseArea5.visible=false
                            comBM15.source="images/Com6.svg"
                            bmBox5.text="Load"
                            infoText.text="Selected the Load"
                            bmBoxRect5.border.color="#d6e0e7"
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect5.border.color="#217efd"
                        }
                    }

                }

                Rectangle {
                    id: rectangleForCom6
                    x: 1
                    y: 4
                    width: 155
                    height: 66
                    opacity: 0
                    color: "#00ffffff"
                    radius: 10/2
                    border.color: "#217efd"
                    border.width: 3
                }

                Text {
                    x: 0
                    y: 65
                    width: 157
                    height: 36
                    color: "#284863"
                    text: qsTr("Load")
                    font.letterSpacing: -1.4
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Image {
                    x: 26
                    y: 15
                    width: 212/2
                    source: "images/Component6.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: sLDBGForImages7
                x: 3
                y: 331
                width: 314/2
                source: "images/SLDBGForImages.svg"
                MouseArea {
                    x: 0
                    y: 0
                    width: 157
                    height: 100
                    antialiasing: true

                    onClicked: {
                        if(dropZone11.opacity!==0){
                            com11.source="images/Com7.svg"

                            mouseArea1.visible=false
                            comBM11.source="images/Com7.svg"
                            bmBox1.text="Generator"
                            infoText.text="Selected the Generator"
                            bmBoxRect1.border.color="#d6e0e7"
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect1.border.color="#217efd"

                            rectangle1.x=-500
                            rectangleForGenerator.x=0
                            rectangle3.visible=false
                            rectangle4.visible=false
                            rectangle3.rotation=0
                            comBM11.visible=true

                            if(mouseArea1.visible===false && mouseArea2.visible===false){
                                rectanglenode1.visible=true
                            }
                        }
                        if(dropZone12.opacity!==0){
                            com12.source="images/Com7.svg"

                            mouseArea2.visible=false
                            comBM12.source="images/Com7.svg"
                            bmBox2.text="Generator"
                            infoText.text="Selected the Generator"
                            bmBoxRect2.border.color="#d6e0e7"
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect2.border.color="#217efd"
                        }

                        if(dropZone14.opacity!==0){
                            com14.source="images/Com7.svg"

                            mouseArea4.visible=false
                            comBM14.source="images/Com7.svg"
                            bmBox4.text="Generator"
                            infoText.text="Selected the Generator"
                            bmBoxRect4.border.color="#d6e0e7"
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect4.border.color="#217efd"
                        }
                        if(dropZone15.opacity!==0){
                            com15.source="images/Com7.svg"

                            mouseArea5.visible=false
                            comBM15.source="images/Com7.svg"
                            bmBox5.text="Generator"
                            infoText.text="Selected the Generator"
                            bmBoxRect5.border.color="#d6e0e7"
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect5.border.color="#217efd"
                        }
                    }

                }

                Rectangle {
                    id: rectangleForCom7
                    x: 1
                    y: 4
                    width: 155
                    height: 66
                    opacity: 0
                    color: "#00ffffff"
                    radius: 10/2
                    border.color: "#217efd"
                    border.width: 3
                }

                Text {
                    x: 0
                    y: 65
                    width: 157
                    height: 36
                    color: "#284863"
                    text: qsTr("Generator")
                    font.letterSpacing: -1.4
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Image {
                    x: 26
                    y: 15
                    width: 212/2
                    source: "images/Component7.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: sLDBGForImages8
                x: 167
                y: 331
                width: 314/2
                source: "images/SLDBGForImages.svg"
                MouseArea {
                    x: 0
                    y: 0
                    width: 157
                    height: 100
                    antialiasing: true

                    onClicked: {
                        if(dropZone11.opacity!==0){
                            com11.source="images/Com8.svg"

                            mouseArea1.visible=false
                            comBM11.source="images/Com8.svg"
                            bmBox1.text="Filter"
                            infoText.text="Selected the Filter"
                            bmBoxRect1.border.color="#d6e0e7"
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect1.border.color="#217efd"
                        }
                        if(dropZone12.opacity!==0){
                            com12.source="images/Com8.svg"

                            mouseArea2.visible=false
                            comBM12.source="images/Com8.svg"
                            bmBox2.text="Filter"
                            infoText.text="Selected the Filter"
                            bmBoxRect2.border.color="#d6e0e7"
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect2.border.color="#217efd"
                        }

                        if(dropZone14.opacity!==0){
                            com14.source="images/Com8.svg"

                            mouseArea4.visible=false
                            comBM14.source="images/Com8.svg"
                            bmBox4.text="Filter"
                            infoText.text="Selected the Filter"
                            bmBoxRect4.border.color="#d6e0e7"
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect4.border.color="#217efd"
                        }
                        if(dropZone15.opacity!==0){
                            com15.source="images/Com8.svg"

                            mouseArea5.visible=false
                            comBM15.source="images/Com8.svg"
                            bmBox5.text="Filter"
                            infoText.text="Selected the Filter"
                            bmBoxRect5.border.color="#d6e0e7"
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect5.border.color="#217efd"
                        }
                    }

                }

                Rectangle {
                    id: rectangleForCom8
                    x: 1
                    y: 4
                    width: 155
                    height: 66
                    opacity: 0
                    color: "#00ffffff"
                    radius: 10/2
                    border.color: "#217efd"
                    border.width: 3
                }

                Text {
                    x: 0
                    y: 65
                    width: 157
                    height: 36
                    color: "#284863"
                    text: qsTr("Filter")
                    font.letterSpacing: -1.4
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Image {
                    x: 26
                    y: 15
                    width: 212/2
                    source: "images/Component8.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: sLDBGForImages9
                x: 3
                y: 439
                width: 314/2
                source: "images/SLDBGForImages.svg"
                MouseArea {
                    x: 0
                    y: 0
                    width: 157
                    height: 100
                    antialiasing: true

                    onClicked: {
                        if(dropZone11.opacity!==0){
                            com11.source="images/Com9.svg"

                            mouseArea1.visible=false
                            comBM11.source="images/Com9.svg"
                            bmBox1.text="UPS"
                            infoText.text="Selected the UPS"
                            bmBoxRect1.border.color="#d6e0e7"
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect1.border.color="#217efd"
                        }
                        if(dropZone12.opacity!==0){
                            com12.source="images/Com9.svg"

                            mouseArea2.visible=false
                            comBM12.source="images/Com9.svg"
                            bmBox2.text="UPS"
                            infoText.text="Selected the UPS"
                            bmBoxRect2.border.color="#d6e0e7"
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect2.border.color="#217efd"
                        }

                        if(dropZone14.opacity!==0){
                            com14.source="images/Com9.svg"

                            mouseArea4.visible=false
                            comBM14.source="images/Com9.svg"
                            bmBox4.text="UPS"
                            infoText.text="Selected the UPS"
                            bmBoxRect4.border.color="#d6e0e7"
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect4.border.color="#217efd"
                        }
                        if(dropZone15.opacity!==0){
                            com15.source="images/Com9.svg"

                            mouseArea5.visible=false
                            comBM15.source="images/Com9.svg"
                            bmBox5.text="UPS"
                            infoText.text="Selected the UPS"
                            bmBoxRect5.border.color="#d6e0e7"
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect5.border.color="#217efd"
                        }
                    }

                }

                Rectangle {
                    id: rectangleForCom9
                    x: 1
                    y: 4
                    width: 155
                    height: 66
                    opacity: 0
                    color: "#00ffffff"
                    radius: 10/2
                    border.color: "#217efd"
                    border.width: 3
                }

                Text {
                    x: 0
                    y: 65
                    width: 157
                    height: 36
                    color: "#284863"
                    text: qsTr("UPS")
                    font.letterSpacing: -1.4
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Image {
                    x: 26
                    y: 15
                    width: 212/2
                    source: "images/Component9.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Image {
                id: sLDBGForImages10
                x: 167
                y: 439
                width: 314/2
                source: "images/SLDBGForImages.svg"
                MouseArea {
                    x: 0
                    y: 0
                    width: 157
                    height: 100
                    antialiasing: true

                    onClicked: {
                        if(dropZone11.opacity!==0){
                            com11.source="images/Com10.svg"

                            mouseArea1.visible=false
                            comBM11.source="images/Com10.svg"
                            bmBox1.text="Rectifier"
                            infoText.text="Selected the Rectifier"
                            bmBoxRect1.border.color="#d6e0e7"
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect1.border.color="#217efd"
                        }
                        if(dropZone12.opacity!==0){
                            com12.source="images/Com10.svg"

                            mouseArea2.visible=false
                            comBM12.source="images/Com10.svg"
                            bmBox2.text="Rectifier"
                            infoText.text="Selected the Rectifier"
                            bmBoxRect2.border.color="#d6e0e7"
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect2.border.color="#217efd"
                        }

                        if(dropZone14.opacity!==0){
                            com14.source="images/Com10.svg"

                            mouseArea4.visible=false
                            comBM14.source="images/Com10.svg"
                            bmBox4.text="Rectifier"
                            infoText.text="Selected the Rectifier"
                            bmBoxRect4.border.color="#d6e0e7"
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect4.border.color="#217efd"
                        }
                        if(dropZone15.opacity!==0){
                            com15.source="images/Com10.svg"

                            mouseArea5.visible=false
                            comBM15.source="images/Com10.svg"
                            bmBox5.text="Rectifier"
                            infoText.text="Selected the Rectifier"
                            bmBoxRect5.border.color="#d6e0e7"
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                            bmBoxRect5.border.color="#217efd"
                        }
                    }

                }

                Rectangle {
                    id: rectangleForCom10
                    x: 1
                    y: 4
                    width: 155
                    height: 66
                    opacity: 0
                    color: "#00ffffff"
                    radius: 10/2
                    border.color: "#217efd"
                    border.width: 3
                }

                Text {
                    x: 0
                    y: 65
                    width: 157
                    height: 36
                    color: "#284863"
                    text: qsTr("Rectifier")
                    font.letterSpacing: -1.4
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                }

                Image {
                    x: 26
                    y: 15
                    width: 212/2
                    source: "images/Component10.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }
            //        contentHeight: myListModelMemoryInfo.count * 75;

        }

        Rectangle {
            id: rectangle11
            x: 5
            y: 457
            width: 338
            height: 2
            color: "#dce8ef"
        }

        Rectangle {
            id: rectangle12
            x: 11
            y: 465
            width: 324
            height: 60
            color: "#f7f8fa"

            Text {
                x: 8
                y: 12
                width: 157
                height: 36
                color: "#284863"
                text: qsTr("Use the node")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
        }

    }


    Rectangle {
        id: rectangleForTransformer
        x: -365
        y: 0
        width: 696/2
        height: 1456/2
        color: "#ffffff"
        border.color: "#e1e5ea"
        Rectangle {
            x: 10
            y: 34
            width: 200
            height: 1
            color: "#284863"
        }
        Image {
            id: saveTheSetup
            x: 20
            y: 672
            width: 616/2
            source: "images/SaveTheSetup.svg"
            fillMode: Image.PreserveAspectFit
            MouseArea{
                width: parent.width+20
                height: parent.height
                anchors.left: parent.left
                anchors.leftMargin: -10
                onClicked: {
                    if(bmBoxRect1.border.color=="#217efd" && rectangleForTransformer.x===0){
                        text11.text=textPower.text+"kVA" +"\n" +  chosenText22.text
                    }
                    if(bmBoxRect2.border.color=="#217efd" && rectangleForTransformer.x===0){
                        text12.text=textPower.text+"kVA" +"\n" +  chosenText22.text
                    }

                    if(bmBoxRect4.border.color=="#217efd" && rectangleForTransformer.x===0){
                        text14.text=textPower.text+"kVA" +"\n" +  chosenText22.text
                    }
                    if(bmBoxRect5.border.color=="#217efd" && rectangleForTransformer.x===0){
                        text15.text=textPower.text+"kVA" +"\n" +  chosenText22.text
                    }
                    bmBoxRect1.border.color="#d6e0e7"
                    bmBoxRect2.border.color="#d6e0e7"

                    bmBoxRect4.border.color="#d6e0e7"
                    bmBoxRect5.border.color="#d6e0e7"

                    rectangle1.x=0
                    rectangleForTransformer.x=-500
                    infoText.text="You are changed setup parameters for transformer"

                }
            }
            Text {
                x: 0
                y: 0
                width: 308
                height: 48
                color: "#ffffff"
                text: qsTr("Save The Setup")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }
        }

        Text {
            id: transformerHeaderText
            x: 10
            y: 5
            width: 157
            height: 36
            color: "#284863"
            text: qsTr("Transformer")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }


        Rectangle {
            x: 10
            y: 47
            width: 328
            height: 326
            color: "#f7f8fa"
            border.color: "#b0adb1b4"
            Text {
                x: 8
                y: 10
                width: 157
                height: 41
                color: "#284863"
                text: qsTr("Power")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                x: 8
                y: 54
                width: 157
                height: 41
                color: "#284863"
                text: qsTr("Primer Voltage")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                x: 8
                y: 98
                width: 157
                height: 41
                color: "#284863"
                text: qsTr("Seconder Voltage")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                x: 8
                y: 142
                width: 157
                height: 41
                color: "#284863"
                text: qsTr("Phase")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                x: 8
                y: 186
                width: 157
                height: 41
                color: "#284863"
                text: qsTr("Z")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                x: 8
                y: 230
                width: 157
                height: 41
                color: "#284863"
                text: qsTr("X / R")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                x: 270
                y: 10
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("kVA")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                x: 270
                y: 54
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("V")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                x: 270
                y: 98
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("V")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                x: 270
                y: 142
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("°")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Rectangle {
                x: 141
                y: 10
                width: 140
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textPower
                    x: 5
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("250")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textPower.focus=true
                    }
                }
            }

            Rectangle {
                x: 141
                y: 54
                width: 140
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    x: 5
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("Transformer1")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                //                MouseArea {
                //                    x: -130
                //                    y: -10
                //                    width: parent.width+140
                //                    height: parent.height+20
                //                    onClicked: {
                //                        recordFileNameTextInput1.focus=true
                //                    }
                //                }
            }

            Rectangle {
                x: 141
                y: 98
                width: 140
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    x: 5
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("250")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }


            }

            Rectangle {
                x: 141
                y: 142
                width: 140
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    x: 5
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("Transformer1")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }


            }

            Rectangle {
                x: 141
                y: 186
                width: 140
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    x: 5
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("250")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

            }

            Rectangle {
                x: 141
                y: 230
                width: 140
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    x: 5
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("Transformer1")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }


            }

            Text {
                x: 8
                y: 274
                width: 157
                height: 41
                color: "#284863"
                text: qsTr("Type")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id: rectangle122
                x: 141
                y: 274
                width: 182
                height: 40
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1

                Image {
                    id: okUp22
                    x: 163
                    y: 16
                    width: 14
                    source: "images/okUp22.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 180
                }

                Text {
                    id: chosenText22
                    color: "#284863"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 16
                    text: qsTr("Step Up")
                    anchors.leftMargin: 5
                }

                MouseArea {
                    anchors.fill: parent
                    anchors.leftMargin: -5
                    anchors.topMargin: -5
                    anchors.rightMargin: -1
                    onClicked: {

                        if(okUp22.rotation===0)
                        {
                            okUp22.rotation=180
                            backgroundList22.visible=false
                            listView22.visible=false

                        }
                        else
                        {
                            okUp22.rotation=0
                            backgroundList22.visible=true
                            listView22.visible=true


                        }
                    }
                    anchors.bottomMargin: -5
                }


            }
            Rectangle {
                id: backgroundList22
                x: 141
                y: 164
                width: 182
                height: 110
                visible: false
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
            }
            ListView {
                id: listView22
                x: 141
                y: 164
                width:rectangle122.width
                height: backgroundList22.height
                visible: false
                clip: true


                model: ListModel {
                    ListElement { name: "Step Up" }
                    ListElement { name: "Step Down" }
                    ListElement { name: "Phase Shift" }



                }

                delegate: Item {
                    width: listView22.width
                    height: 60

                    Rectangle {
                        width: parent.width
                        height: 50

                        color: "#EFF2F6"

                        Text {
                            anchors.centerIn: parent
                            text: model.name
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                chosenText22.text = model.name
                            }
                        }
                    }
                }
            }


        }

        Image {
            id: bGForHeader12
            x: 10
            y: 405
            width: 328
            height: 54
            source: "images/BGForHeader.svg"
            Text {
                x: 8
                y: 0
                width: 94
                height: 54
                color: "#284863"
                text: qsTr("Rename")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }


            Rectangle {
                x: 141
                y: 6
                width: 182
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:recordFileNameTextInput1
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("Transformer1")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }
                MouseArea{
                    x:-130
                    y:-10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        recordFileNameTextInput1.focus=true
                    }
                }
            }
            fillMode: Image.Stretch
        }
    }

    Rectangle {
        id: rectangleRight
        x: 907
        y: 0
        width: 745/2
        height: 1456/2
        color: "#ffffff"
        border.color: "#e1e5ea"
    }

    Rectangle {
        id: rectangleMiddle
        x: 355
        y: 0
        width: 1090/2
        height: 1456/2
        color: "#ffffff"
        border.color: "#e1e5ea"

        Image {
            id: bottomForSLD
            x: 8
            y: 619
            width: 1060/2
            source: "images/BottomForSLD.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit

            Text {
                id:bmBox1
                x: 0
                y: 0
                width: 106
                height: 43
                color: "#284863"
                text: qsTr("Empty")
                font.letterSpacing: -1.4
                font.pixelSize: 18
                lineHeight: 0.8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Text {
                id: bmBox2
                x: 106
                y: 0
                width: 106
                height: 43
                color: "#284863"
                text: qsTr("Empty")
                font.letterSpacing: -1.4
                font.pixelSize: 18
                lineHeight: 0.8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }


            Text {
                id: bmBox3
                x: 212
                y: 0
                width: 106
                height: 43
                color: "#284863"
                text: qsTr("Rectifier")
                font.letterSpacing: -1.4
                font.pixelSize: 18
                lineHeight: 0.8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }



            Text {
                id: bmBox4
                x: 318
                y: 0
                width: 106
                height: 43
                color: "#284863"
                text: qsTr("Empty")
                font.letterSpacing: -1.4
                font.pixelSize: 18
                lineHeight: 0.8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }



            Text {
                id: bmBox5
                x: 424
                y: 0
                width: 106
                height: 43
                color: "#284863"
                text: qsTr("Empty")
                font.letterSpacing: -1.4
                font.pixelSize: 18
                lineHeight: 0.8
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }


            Rectangle {
                id:bmBoxRect1
                x: 0
                y: 0
                width: 106
                height: 101
                visible: true
                color: "#003bb53b"
                border.color: "#d6e0e7"
                border.width: 3
                SequentialAnimation{
                    id:animationClick15
                    loops: -1
                    PropertyAnimation {
                        target: dropZone15
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: dropZone15
                        property: "opacity"
                        duration: 1000
                        to: 0.001
                    }
                }
                SequentialAnimation{
                    id:animationClick14
                    loops: -1
                    PropertyAnimation {
                        target: dropZone14
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: dropZone14
                        property: "opacity"
                        duration: 1000
                        to: 0.001
                    }
                }

                SequentialAnimation{
                    id:animationClick12
                    loops: -1
                    PropertyAnimation {
                        target: dropZone12
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: dropZone12
                        property: "opacity"
                        duration: 1000
                        to: 0.001
                    }
                }

                SequentialAnimation{
                    id:animationClick11
                    loops: -1
                    PropertyAnimation {
                        target: dropZone11
                        property: "opacity"
                        duration: 1000
                        to: 1
                    }
                    PropertyAnimation {
                        target: dropZone11
                        property: "opacity"
                        duration: 1000
                        to: 0.001
                    }
                }

                Image {
                    id: comBM11
                    x: 0
                    y: 39
                    width: 106
                    antialiasing: true
                    source: "images/BlankImage.svg"
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id: mouseArea1
                    x: 0
                    y: 0
                    width: 106
                    height: 100
                    visible: true
                    antialiasing: true
                    onClicked: {
                        if(rectangle3.rotation===0){
                            anim1.start()
                            bmBox1.text="Delete"
                            animationClick11.start()
                            animationRectsClicked.start()
                            //                            console.log(counterForN)
                            bmBoxRect2.border.color="#d6e0e7"
                            anim2close.start()
                            bmBoxRect4.border.color="#d6e0e7"
                            anim4close.start()
                            bmBoxRect5.border.color="#d6e0e7"
                            anim5close.start()
                            if(bmBox2.text==="Delete"){
                                bmBox2.text="Empty"
                            }
                            if(bmBox4.text==="Delete"){
                                bmBox4.text="Empty"
                            }
                            if(bmBox5.text==="Delete"){
                                bmBox5.text="Empty"
                            }

                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0

                        }

                        else {
                            anim1close.start()
                            bmBox1.text="Empty"
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                        }
                    }
                    ParallelAnimation{
                        id:anim1
                        PropertyAnimation {
                            target: bmBoxRect1
                            property: "border.color"
                            duration: 200
                            to: "#217efd"
                        }
                        PropertyAnimation {
                            id: menubuttonClickedMenuAnimRect7
                            target: rectangle3
                            property: "rotation"
                            duration: 200
                            to: 45
                        }
                        PropertyAnimation {
                            id: menubuttonClickedMenuAnimRect7x
                            target: rectangle4
                            property: "rotation"
                            duration: 200
                            to: 135
                        }
                        SequentialAnimation{
                            ParallelAnimation{
                                PropertyAnimation {
                                    target: rectangle4
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                                PropertyAnimation {
                                    target: rectangle3
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                            }
                            ParallelAnimation{
                                PropertyAnimation {
                                    target: rectangle4
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                                PropertyAnimation {
                                    target: rectangle3
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                            }
                        }
                    }

                    ParallelAnimation{
                        id:anim1close
                        PropertyAnimation {
                            target: bmBoxRect1
                            property: "border.color"
                            duration: 200
                            to: "#D6E0E7"
                        }
                        PropertyAnimation {
                            target: rectangle3
                            property: "rotation"
                            duration: 200
                            to: 0
                        }
                        PropertyAnimation {
                            target: rectangle4
                            property: "rotation"
                            duration: 200
                            to: 90
                        }
                        SequentialAnimation{
                            ParallelAnimation{
                                PropertyAnimation {
                                    target: rectangle4
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                                PropertyAnimation {
                                    target: rectangle3
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                            }
                            ParallelAnimation{
                                PropertyAnimation {
                                    target: rectangle4
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                                PropertyAnimation {
                                    target: rectangle3
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                            }
                        }
                    }
                }


                Rectangle {
                    id: rectangle3
                    x: 31
                    y: 58
                    width: 45
                    height: 5
                    color: "#617284"
                    antialiasing: true
                }

                Rectangle {
                    id: rectangle4
                    x: 31
                    y: 58
                    width: 45
                    height: 5
                    color: "#617284"
                    rotation: 90
                    antialiasing: true
                }

                MouseArea {
                    id: mouseArea1Y
                    x: 0
                    y: 0
                    width: 106
                    height: 100
                    visible:
                        if(mouseArea1.visible){
                            false
                        }
                        else{
                            true
                        }
                    antialiasing: true
                    onClicked: {
                        if(rectangle3.rotation===0){
                            rectangle3.visible=true
                            rectangle4.visible=true
                            comBM11.visible=false
                            anim1.start()
                            bmBox1.text="Delete"
                            animationClick11.start()
                            animationRectsClicked.start()
                            bmBoxRect2.border.color="#d6e0e7"
                            anim2close.start()
                            bmBoxRect4.border.color="#d6e0e7"
                            anim4close.start()
                            bmBoxRect5.border.color="#d6e0e7"
                            anim5close.start()
                            if(bmBox2.text==="Delete"){
                                bmBox2.text="Empty"
                            }
                            if(bmBox4.text==="Delete"){
                                bmBox4.text="Empty"
                            }
                            if(bmBox5.text==="Delete"){
                                bmBox5.text="Empty"
                            }

                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0




                        }

                        else {
                            anim1close.start()
                            bmBox1.text="Empty"
                            rectanglenode1.visible=false
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0

                            com11.source="images/BlankImage.svg"
                            text11.text=" "
                        }
                    }


                }




            }

            Rectangle {
                id:bmBoxRect2
                x: 106
                y: 0
                width: 106
                height: 101
                visible: true
                color: "#003bb53b"
                border.color: "#d6e0e7"
                border.width: 3

                Image {
                    id: comBM12
                    x: 0
                    y: 39
                    width: 106
                    source: "images/BlankImage.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }





                MouseArea {
                    id: mouseArea2
                    x: 0
                    y: 0
                    width: 106
                    height: 100
                    onClicked: {
                        if(rectangle5.rotation===0){
                            anim2.start()
                            bmBox2.text="Delete"
                            animationClick12.start()
                            animationRectsClicked.start()
                            bmBoxRect1.border.color="#d6e0e7"
                            anim1close.start()
                            bmBoxRect4.border.color="#d6e0e7"
                            anim4close.start()
                            bmBoxRect5.border.color="#d6e0e7"
                            anim5close.start()
                            if(bmBox1.text==="Delete"){
                                bmBox1.text="Empty"
                            }
                            if(bmBox4.text==="Delete"){
                                bmBox4.text="Empty"
                            }
                            if(bmBox5.text==="Delete"){
                                bmBox5.text="Empty"
                            }
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                        }

                        else {
                            anim2close.start()
                            bmBox2.text="Empty"
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0

                        }
                    }
                    ParallelAnimation {
                        id:anim2
                        PropertyAnimation {
                            target: bmBoxRect2
                            property: "border.color"
                            duration: 200
                            to: "#217efd"
                        }
                        PropertyAnimation {
                            target: rectangle5
                            property: "rotation"
                            duration: 200
                            to: 45
                        }

                        PropertyAnimation {
                            target: rectangle6
                            property: "rotation"
                            duration: 200
                            to: 135
                        }

                        SequentialAnimation {
                            ParallelAnimation {
                                PropertyAnimation {
                                    target: rectangle6
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }

                                PropertyAnimation {
                                    target: rectangle5
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                            }

                            ParallelAnimation {
                                PropertyAnimation {
                                    target: rectangle6
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }

                                PropertyAnimation {
                                    target: rectangle5
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                            }
                        }
                    }
                    ParallelAnimation{
                        id:anim2close
                        PropertyAnimation {
                            target: bmBoxRect2
                            property: "border.color"
                            duration: 200
                            to: "#D6E0E7"
                        }
                        PropertyAnimation {
                            target: rectangle5
                            property: "rotation"
                            duration: 200
                            to: 0
                        }
                        PropertyAnimation {
                            target: rectangle6
                            property: "rotation"
                            duration: 200
                            to: 90
                        }
                        SequentialAnimation{
                            ParallelAnimation{
                                PropertyAnimation {
                                    target: rectangle6
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                                PropertyAnimation {
                                    target: rectangle5
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                            }
                            ParallelAnimation{
                                PropertyAnimation {
                                    target: rectangle6
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                                PropertyAnimation {
                                    target: rectangle5
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                            }
                        }
                    }


                    antialiasing: true
                }

                Rectangle {
                    id: rectangle5
                    x: 31
                    y: 58
                    width: 45
                    height: 5
                    color: "#617284"
                    antialiasing: true
                }

                Rectangle {
                    id: rectangle6
                    x: 31
                    y: 58
                    width: 45
                    height: 5
                    color: "#617284"
                    antialiasing: true
                    rotation: 90
                }

                MouseArea {
                    id: mouseArea2Y
                    x: 0
                    y: 0
                    width: 106
                    height: 100
                    visible:
                        if(mouseArea2.visible){
                            false
                        }
                        else{
                            true
                        }
                    antialiasing: true
                    onClicked: {
                        if(rectangle5.rotation===0){
                            rectangle5.visible=true
                            rectangle6.visible=true
                            comBM12.visible=false
                            anim2.start()

                            bmBox2.text="Delete"
                            animationClick12.start()
                            animationRectsClicked.start()
                            bmBoxRect1.border.color="#d6e0e7"
                            anim1close.start()
                            bmBoxRect4.border.color="#d6e0e7"
                            anim4close.start()
                            bmBoxRect5.border.color="#d6e0e7"
                            anim5close.start()
                            if(bmBox1.text==="Delete"){
                                bmBox1.text="Empty"
                            }
                            if(bmBox4.text==="Delete"){
                                bmBox4.text="Empty"
                            }
                            if(bmBox5.text==="Delete"){
                                bmBox5.text="Empty"
                            }

                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                        }

                        else {
                            anim2close.start()
                            bmBox2.text="Empty"
                            rectanglenode1.visible=false
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0

                            com12.source="images/BlankImage.svg"
                            text12.text=" "
                        }
                    }


                }



            }


            Rectangle {
                id: bmBoxRect3
                x: 212
                y: 0
                width: 106
                height: 101
                visible: true
                color: "#003bb53b"
                border.color: "#217efd"
                border.width: 3
                MouseArea {
                    id: mouseArea3
                    x: 0
                    y: 0
                    width: 106
                    height: 100
                    onClicked: {
                        if(bmBoxRect3.border.color=="#217efd"){
                            recForBottomMiddle.source="images/RecForBottomMiddle.svg"
                            bmBoxRect3.border.color="#d6e0e7"
                            rec1.visible=true
                            rec1Text13.visible=true
                            rectangleForLeftMenuRec1.x=-500
                        }
                        else if(bmBoxRect3.border.color=="#d6e0e7"){
                            recForBottomMiddle.source="images/SaveButton.svg"
                            bmBoxRect3.border.color="#217efd"
                            rectangleForLeftMenuRec1.x=0
                            //                            text13Rec1.visible=false
                            //                            rec1.visible=false
                        }

                    }
                }

                Image {
                    id: recForBottomMiddle
                    x: 32
                    y: 42
                    width: 83/2
                    source: "images/SaveButton.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
            }


            Rectangle {
                id: bmBoxRect4
                x: 318
                y: 0
                width: 106
                height: 101
                visible: true
                color: "#003bb53b"
                border.color: "#d6e0e7"
                border.width: 3
                Image {
                    id: comBM14
                    x: 0
                    y: 39
                    width: 106
                    source: "images/BlankImage.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                MouseArea {
                    id: mouseArea4
                    x: 0
                    y: 0
                    width: 106
                    height: 100
                    onClicked: {
                        if(rectangle7.rotation===0){
                            anim4.start()
                            bmBox4.text="Delete"
                            console.log(counterForN)

                            animationClick14.start()
                            animationRectsClicked.start()

                            bmBoxRect1.border.color="#d6e0e7"
                            anim1close.start()
                            bmBoxRect2.border.color="#d6e0e7"
                            anim2close.start()
                            bmBoxRect5.border.color="#d6e0e7"
                            anim5close.start()
                            if(bmBox1.text==="Delete"){
                                bmBox1.text="Empty"
                            }
                            if(bmBox2.text==="Delete"){
                                bmBox2.text="Empty"
                            }
                            if(bmBox5.text==="Delete"){
                                bmBox5.text="Empty"
                            }
                            dropZone11.opacity=0
                            dropZone12.opacity=0
                            dropZone15.opacity=0
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                        }

                        else {
                            anim4close.start()
                            bmBox4.text="Empty"

                            animationClick14.complete()
                            animationClick14.stop()

                            dropZone14.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                        }
                    }
                    ParallelAnimation {
                        id:anim4
                        PropertyAnimation {
                            target: bmBoxRect4
                            property: "border.color"
                            duration: 200
                            to: "#217efd"
                        }
                        PropertyAnimation {
                            target: rectangle7
                            property: "rotation"
                            duration: 200
                            to: 45
                        }

                        PropertyAnimation {
                            target: rectangle8
                            property: "rotation"
                            duration: 200
                            to: 135
                        }

                        SequentialAnimation {
                            ParallelAnimation {
                                PropertyAnimation {
                                    target: rectangle8
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }

                                PropertyAnimation {
                                    target: rectangle7
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                            }

                            ParallelAnimation {
                                PropertyAnimation {
                                    target: rectangle8
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }

                                PropertyAnimation {
                                    target: rectangle7
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                            }
                        }
                    }
                    ParallelAnimation{
                        id:anim4close
                        PropertyAnimation {
                            target: bmBoxRect4
                            property: "border.color"
                            duration: 200
                            to: "#D6E0E7"
                        }
                        PropertyAnimation {
                            target: rectangle7
                            property: "rotation"
                            duration: 200
                            to: 0
                        }
                        PropertyAnimation {
                            target: rectangle8
                            property: "rotation"
                            duration: 200
                            to: 90
                        }
                        SequentialAnimation{
                            ParallelAnimation{
                                PropertyAnimation {
                                    target: rectangle8
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                                PropertyAnimation {
                                    target: rectangle7
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                            }
                            ParallelAnimation{
                                PropertyAnimation {
                                    target: rectangle8
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                                PropertyAnimation {
                                    target: rectangle7
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                            }
                        }
                    }

                    Rectangle {
                        id: rectangle7
                        x: 31
                        y: 58
                        width: 45
                        height: 5
                        color: "#617284"
                        antialiasing: true
                    }

                    Rectangle {
                        id: rectangle8
                        x: 31
                        y: 58
                        width: 45
                        height: 5
                        color: "#617284"
                        antialiasing: true
                        rotation: 90
                    }
                    antialiasing: true
                }
            }


            Rectangle {
                id: bmBoxRect5
                x: 424
                y: 0
                width: 106
                height: 101
                visible: true
                color: "#003bb53b"
                border.color: "#d6e0e7"
                border.width: 3
                Image {
                    id: comBM15
                    x: 0
                    y: 39
                    width: 106
                    source: "images/BlankImage.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }
                MouseArea {
                    id: mouseArea5
                    x: 0
                    y: 0
                    width: 106
                    height: 100
                    onClicked: {
                        if(rectangle9.rotation===0){
                            anim5.start()
                            bmBox5.text="Delete"

                            animationClick15.start()
                            animationRectsClicked.start()
                            bmBoxRect1.border.color="#d6e0e7"
                            anim1close.start()
                            bmBoxRect2.border.color="#d6e0e7"
                            anim2close.start()
                            bmBoxRect4.border.color="#d6e0e7"
                            anim4close.start()
                            if(bmBox1.text==="Delete"){
                                bmBox1.text="Empty"
                            }
                            if(bmBox2.text==="Delete"){
                                bmBox2.text="Empty"
                            }
                            if(bmBox4.text==="Delete"){
                                bmBox4.text="Empty"
                            }
                            dropZone11.opacity=0
                            dropZone12.opacity=0
                            dropZone14.opacity=0
                            animationClick11.complete()
                            animationClick11.stop()
                            dropZone11.opacity=0
                            animationClick12.complete()
                            animationClick12.stop()
                            dropZone12.opacity=0
                            animationClick14.complete()
                            animationClick14.stop()
                            dropZone14.opacity=0
                        }

                        else {
                            anim5close.start()
                            bmBox5.text="Empty"

                            animationClick15.complete()
                            animationClick15.stop()
                            dropZone15.opacity=0
                            animationRectsClicked.complete()
                            animationRectsClicked.stop()
                            rectangleForCom1.opacity=0
                            rectangleForCom2.opacity=0
                            rectangleForCom3.opacity=0
                            rectangleForCom4.opacity=0
                            rectangleForCom5.opacity=0
                            rectangleForCom6.opacity=0
                            rectangleForCom7.opacity=0
                            rectangleForCom8.opacity=0
                            rectangleForCom9.opacity=0
                            rectangleForCom10.opacity=0
                        }
                    }

                    ParallelAnimation {
                        id:anim5
                        PropertyAnimation {
                            target: bmBoxRect5
                            property: "border.color"
                            duration: 200
                            to: "#217efd"
                        }
                        PropertyAnimation {
                            target: rectangle9
                            property: "rotation"
                            duration: 200
                            to: 45
                        }

                        PropertyAnimation {
                            target: rectangle10
                            property: "rotation"
                            duration: 200
                            to: 135
                        }

                        SequentialAnimation {
                            ParallelAnimation {
                                PropertyAnimation {
                                    target: rectangle10
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }

                                PropertyAnimation {
                                    target: rectangle9
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                            }

                            ParallelAnimation {
                                PropertyAnimation {
                                    target: rectangle10
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }

                                PropertyAnimation {
                                    target: rectangle9
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                            }
                        }
                    }
                    ParallelAnimation{
                        id:anim5close
                        PropertyAnimation {
                            target: bmBoxRect5
                            property: "border.color"
                            duration: 200
                            to: "#D6E0E7"
                        }
                        PropertyAnimation {
                            target: rectangle9
                            property: "rotation"
                            duration: 200
                            to: 0
                        }
                        PropertyAnimation {
                            target: rectangle10
                            property: "rotation"
                            duration: 200
                            to: 90
                        }
                        SequentialAnimation{
                            ParallelAnimation{
                                PropertyAnimation {
                                    target: rectangle10
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                                PropertyAnimation {
                                    target: rectangle9
                                    property: "scale"
                                    duration: 100
                                    to: 1.3
                                }
                            }
                            ParallelAnimation{
                                PropertyAnimation {
                                    target: rectangle10
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                                PropertyAnimation {
                                    target: rectangle9
                                    property: "scale"
                                    duration: 100
                                    to: 1
                                }
                            }
                        }
                    }

                    Rectangle {
                        id: rectangle9
                        x: 31
                        y: 58
                        width: 45
                        height: 5
                        color: "#617284"
                        antialiasing: true
                    }

                    Rectangle {
                        id: rectangle10
                        x: 31
                        y: 58
                        width: 45
                        height: 5
                        color: "#617284"
                        antialiasing: true
                        rotation: 90
                    }
                    antialiasing: true
                }
            }
        }
    }

    Rectangle {
        id: rectangleForRec1
        x: 360
        y: 9
        width: 1070/2
        height: 300/2
        visible: true
        color: "#f7f8fa"
        border.color: "#e1e5ea"

        Rectangle {
            id: dropZone11
            x: 3
            y: 23
            width: 106
            height: 84/2
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone12
            x: 109
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone14
            x: 321
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone15
            x: 427
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: rectanglenode1
            x: 103
            y: 39
            width: 11
            height: 11
            visible:
            {
                if(mouseArea1.visible===false && mouseArea2.visible===false){
                    true
                }
                else {
                    false
                }

            }
            onVisibleChanged: {
                if (visible) {
                    counterForN += 1
                }
                else {
                    counterForN -= 1
                }
            }
            color: "#617284"
            radius: 6
            antialiasing: true

            Text {
                id: rec1Text16
                x: -4
                y: -38
                width: 20
                height: 27
                visible: true
                color: "#284863"
                text: qsTr("n1")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
        }

        Image {
            id: rec1
            x: 215
            y: 36
            width: 106
            visible: false
            source: "images/Rec.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com11
            x: 3
            y: 23
            width: 106
            antialiasing: true
            source: "images/BlankImage.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com12
            x: 109
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com14
            x: 321
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com15
            x: 427
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id:text11
            x: 3
            y: 66
            width: 106
            height: 76
            color: "#284863"
            text: qsTr(" ")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: text12
            x: 109
            y: 66
            width: 106
            height: 76
            color: "#284863"
            text: qsTr(" ")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: text14
            x: 321
            y: 66
            width: 106
            height: 76
            color: "#284863"
            text: qsTr(" ")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: text15
            x: 427
            y: 66
            width: 106
            height: 76
            color: "#284863"
            text: qsTr(" ")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: rec1Text13
            x: 215
            y: 1
            width: 106
            height: 27
            visible: false
            color: "#284863"
            text: qsTr("Rec1")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "SemiBold"
            font.family: "Akshar"
        }

        Text {
            id: rec1Text11
            x: 3
            y: 1
            width: 100
            height: 27
            visible: true
            color: "#284863"
            text: qsTr("")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: rec1Text12
            x: 115
            y: 1
            width: 100
            height: 27
            visible: false
            color: "#284863"
            text: qsTr("")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: rec1Text14
            x: 321
            y: 1
            width: 106
            height: 27
            visible: false
            color: "#284863"
            text: qsTr("")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: rec1Text15
            x: 427
            y: 1
            width: 106
            height: 27
            visible: false
            color: "#284863"
            text: qsTr("")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

    }



    Rectangle {
        id: rectangleForRec1Y
        x: 360
        y: 9
        width: 1070/2
        height: 300/2
        visible:
            if(rectangleForRec1.visible){
                false
            }
            else{
                true
            }

        color: "#f7f8fa"
        border.color: "#e1e5ea"

        Rectangle {
            id: dropZone11Y
            x: 3
            y: 23
            width: 106
            height: 84/2
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone12Y
            x: 109
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone14Y
            x: 321
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone15Y
            x: 427
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        //        Rectangle {
        //            id: rectanglenode1Y
        //            x: 103
        //            y: 39
        //            width: 11
        //            height: 11
        //            visible:
        //            {
        //                if(mouseArea1.visible===false && mouseArea2.visible===false){
        //                    true
        //                }
        //                else {
        //                    false
        //                }

        //            }

        //            color: "#617284"
        //            radius: 6
        //            antialiasing: true

        //        }
        Image {
            id: rec1Y
            x: 215
            y: 36
            width: 106
            visible: false
            source: "images/Rec.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com11Y
            x: 3
            y: 23
            width: 106
            antialiasing: true
            source: "images/BlankImage.svg"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com12Y
            x: 109
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com14Y
            x: 321
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com15Y
            x: 427
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id:text11Y
            x: 3
            y: 66
            width: 106
            height: 76
            color: "#284863"
            text: qsTr(" ")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: text12Y
            x: 109
            y: 66
            width: 106
            height: 76
            color: "#284863"
            text: qsTr(" ")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: text14Y
            x: 321
            y: 66
            width: 106
            height: 76
            color: "#284863"
            text: qsTr(" ")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

        Text {
            id: text15Y
            x: 427
            y: 66
            width: 106
            height: 76
            color: "#284863"
            text: qsTr(" ")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "SemiBold"
        }

    }


    Rectangle {
        id: rectangleForRec2
        x: 360
        y: 159
        width: 1070/2
        height: 300/2
        visible: false
        color: "#f7f8fa"
        border.color: "#e1e5ea"
        Rectangle {
            id: dropZone21
            x: 3
            y: 23
            width: 106
            height: 84/2
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone22
            x: 109
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone24
            x: 321
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone25
            x: 427
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Image {
            x: 215
            y: 36
            width: 106
            source: "images/Rec.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: com21
            x: 3
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com22
            x: 109
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com24
            x: 321
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com25
            x: 427
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }
    }

    Rectangle {
        id: rectangleForRec3
        x: 360
        y: 309
        width: 1070/2
        height: 300/2
        visible: false
        color: "#f7f8fa"
        border.color: "#e1e5ea"
        Rectangle {
            id: dropZone31
            x: 3
            y: 23
            width: 106
            height: 84/2
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone32
            x: 109
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone34
            x: 321
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone35
            x: 427
            y: 23
            width: 106
            height: 42
            opacity: 0
            visible: true
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Image {
            x: 215
            y: 36
            width: 106
            source: "images/Rec.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }
        Image {
            id: com31
            x: 3
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com32
            x: 109
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }


        Image {
            id: com34
            x: 321
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }



        Image {
            id: com35
            x: 427
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }
    }

    Rectangle {
        id: rectangleForRec4
        x: 360
        y: 459
        width: 1070/2
        height: 300/2
        visible: false
        color: "#f7f8fa"
        border.color: "#e1e5ea"

        Rectangle {
            id: dropZone41
            x: 3
            y: 23
            width: 106
            height: 84/2
            visible: false
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone42
            x: 109
            y: 23
            width: 106
            height: 42
            visible: false
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone44
            x: 321
            y: 23
            width: 106
            height: 42
            visible: false
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Rectangle {
            id: dropZone45
            x: 427
            y: 23
            width: 106
            height: 42
            visible: false
            color: "#003bb53b"
            radius: 6
            border.color: "#217efd"
            border.width: 3
        }

        Image {
            id: com41
            x: 3
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com42
            x: 109
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com44
            x: 321
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: com45
            x: 427
            y: 23
            width: 106
            source: "images/BlankImage.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }


        Image {
            x: 215
            y: 36
            width: 106
            source: "images/Rec.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }
    }

    Rectangle {
        id: bGForHeader1
        x: 11
        y: 531
        width: 648/2
        height: 130
        color: "#f7f8fa"
        border.color: "#a3adb1b4"
        Text {
            x: 8
            y: 0
            width: 150
            height: 40
            color: "#284863"
            text: qsTr("Info")
            font.letterSpacing: -2
            font.pixelSize: 19
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            font.family: "Akshar"
        }

        Image {
            x: 50
            y: 326
            width: 66
            height: 43
            source: "images/Accept.svg"
            MouseArea {
                x: -30
                y: -10
                width: parent.width+60
                height: parent.height+20
                onClicked: {

                }
            }
            fillMode: Image.PreserveAspectFit
        }

        Image {
            x: 208
            y: 326
            width: 66
            height: 43
            source: "images/Cancel.svg"
            MouseArea {
                x: -30
                y: -10
                width: parent.width+60
                height: parent.height+20
                onClicked: {

                }
            }
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id:infoText
            x: 8
            y: 33
            width: 315
            height: 91
            color: "#284863"
            text: "Please select the job you want to do"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }
    }

    Rectangle {
        id: rectangleForLeftMenuRec1
        x: 0
        y: -900
        width: 696/2
        height: 1456/2
        color: "#ffffff"
        border.color: "#e1e5ea"

        Rectangle {
            id: bGForHeader1222
            x: 11
            y: 531
            width: 648/2
            height: 130
            color: "#f7f8fa"
            border.color: "#a3adb1b4"

            Text {
                x: 8
                y: 0
                width: 150
                height: 40
                color: "#284863"
                text: qsTr("Info")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "Bold"
            }


            SequentialAnimation{
                id:progressBarAnim
                NumberAnimation{
                    target: progressBar
                    property: "value"
                    duration: 1
                    to: 0
                }
                NumberAnimation{
                    target: progressBar
                    property: "indeterminate"
                    duration: 3000
                    from: 0
                    to: 1
                }
                NumberAnimation{
                    target: progressBar
                    property: "indeterminate"
                    duration: 3500
                    from: 1
                    to: 0
                }
                NumberAnimation{
                    target: progressBar
                    property: "value"
                    duration: 3000
                    from: 0
                    to: 100
                }
            }

            ProgressBar {
                id: progressBar
                x: 398
                y: -888
                width: 293
                height: 15
                to: 100
                value: 0
            }
            Image {
                id:accept
                x: 50
                y: 236
                width: 66
                height: 43
                source: "images/Accept.svg"
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    x: -30
                    y: -10
                    width: parent.width+60
                    height: parent.height+20
                    onClicked: {
                        if(rectangle88.x===renameBG.x &&rectangle88.y===renameBG.y){
                            progressBar.z=0
                            rename.color = "#617284"
                            renameFileNameAnim2.start()
                            undo.color = "#617284"
                            delete2.color = "#617284"
                            acceptAndCancelAnim2.start()
                            infoText22.text="Please select the job you want to do"
                            rectangle88.x=-600

                            //                            if (lastAction.action === "rename") {
                            //                                infoText22.text="SLD name has been changed"
                            //                                acceptAndCancelAnim2.start()
                            //                            }
                        }
                        else if(rectangle88.x===deleteBG.x && rectangle88.y===deleteBG.y){

                            rectangleForRec1.visible=false
                            delete2.color = "#617284"
                            renameFileNameAnim2.start()
                            undo.color = "#617284"
                            redo.color = "#617284"
                            rename.color = "#617284"
                            acceptAndCancelAnim2.start()
                            rectangle88.x=-600
                        }

                        else if (rectangle88.x===undoBG.x && rectangle88.y===undoBG.y){
                            progressBar.z=0
                            undo.color = "#617284"
                            renameFileNameAnim2.start()
                            rename.color = "#617284"
                            delete2.color = "#617284"
                            rectangle88.x=-600

                            if (historyForSLD.length > 0) {
                                //                                var lastAction = historyForSLD.pop();
                                //                                if (lastAction.action === "rename") {
                                //                                    infoText22.text="SLD name has been changed"
                                //                                    acceptAndCancelAnim2.start()
                                //                                }
                                //                                else
                                var lastAction = historyForSLD.pop();
                                //                                    if (lastAction.action === "delete") {
                                //                                    acceptAndCancelAnim2.start()
                                //                                    infoText22.text="Please select the job you want to do"
                                //                                    if(rectangleForRec1.visible===false){
                                //                                        rectangleForRec1.visible=true
                                //                                    }
                                //                                    else{
                                //                                        rectangleForRec1.visible=false
                                //                                    }

                                //                                }

                                if (lastAction.action === "undo") {
                                    acceptAndCancelAnim2.start()
                                    infoText22.text="Please select the job you want to do"
                                    if(rectangleForRec1.visible===false){
                                        rectangleForRec1.visible=true
                                    }
                                    else{
                                        rectangleForRec1.visible=false
                                    }

                                }
                            }




                        }
                        else if (rectangle88.x===redoBG.x && rectangle88.y===redoBG.y){
                            progressBar.z=0
                            undo.color = "#617284"
                            renameFileNameAnim2.start()
                            rename.color = "#617284"
                            delete2.color = "#617284"
                            rectangle88.x=-600
                            if(rectangleForRec1.visible===false){
                                rectangleForRec1.visible=true
                            }
                        }
                        renameFileNameAnim2.start()
                    }
                }
            }

            Image {
                id:cancel
                x: 208
                y: 236
                width: 66
                height: 43
                source: "images/Cancel.svg"
                fillMode: Image.PreserveAspectFit
                MouseArea {
                    x: -30
                    y: -10
                    width: parent.width+60
                    height: parent.height+20
                    onClicked: {

                    }
                }
            }

            Text {
                id: infoText22
                x: 8
                y: 33
                width: 315
                height: 91
                color: "#284863"
                text: "Please select the job you want to do"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                clip: true
            }
        }

        Image {
            id: renameBG
            x: 10
            y: 301
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Rename")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            ListModel {
                id: undoNamesModel
            }

            MouseArea {
                id: mouseArea111
                x: 0
                y: 0
                width: 158
                height: 101
                onPressedChanged: {
                    //                    if (pressed) {
                    rectangle88.x=renameBG.x
                    rectangle88.y=renameBG.y
                    delete2.color="#617284"
                    undo.color="#617284"
                    rename.color = "#217EFD"
                    renameFileNameAnim.start()
                    historyForSLD.push({
                                           action: "rename",
                                           index: rectangleForRec1
                                       }
                                       );

                    infoText22.text="Do you want to change name of SLD?"
                    acceptAndCancelAnim.start()

                }
            }

            Rectangle {
                id:rename
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent

                scale: mouseArea111.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: file_dock_add
                    x: 12
                    y: 12
                    width: 45/2
                    source: "images/icon-park-outline_file-editing-one.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }


                ParallelAnimation{
                    id:renameFileNameAnim
                    NumberAnimation {
                        target: bGForHeader12
                        property: "y"
                        duration: 150
                        to:605
                    }
                    NumberAnimation {
                        target: bGForHeader12
                        property: "z"
                        duration: 1
                        to:1
                    }
                }
                ParallelAnimation{
                    id:renameFileNameAnim2
                    NumberAnimation {
                        target: bGForHeader12
                        property: "y"
                        duration: 150
                        to:550
                    }
                    NumberAnimation {
                        target: bGForHeader12
                        property: "z"
                        duration: 1
                        to:0
                    }
                }

                ParallelAnimation{
                    id:acceptAndCancelAnim
                    NumberAnimation {
                        target: accept
                        property: "y"
                        duration: 150
                        to:70
                    }
                    NumberAnimation {
                        target: cancel
                        property: "y"
                        duration: 150
                        to:70
                    }
                }

                ParallelAnimation{
                    id:acceptAndCancelAnim2
                    NumberAnimation {
                        target: accept
                        property: "y"
                        duration: 150
                        to:236
                    }
                    NumberAnimation {
                        target: cancel
                        property: "y"
                        duration: 150
                        to:236
                    }
                }
            }
            fillMode: Image.Tile
        }

        Image {
            id: deleteBG
            x: 180
            y: 301
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Delete")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id:delete2
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent
                scale: mouseArea222.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: trash
                    x: 12
                    y: 12
                    source: "images/Trash.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                    width: 45/2
                }

                MouseArea {
                    id: mouseArea222
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        rectangle88.x=deleteBG.x
                        rectangle88.y=deleteBG.y
                        delete2.color = "#217EFD"
                        rename.color = "#617284"
                        undo.color="#617284"
                        redo.color="#617284"

                        renameFileNameAnim2.start()
                        infoText22.text="Do you want to delete SLD?"
                        acceptAndCancelAnim.start()

                        historyForSLD.push({
                                               action: "delete",
                                               index: rectangleForRec1
                                           }
                                           );
                    }
                }
            }
            fillMode: Image.Tile
        }


        Image {
            id: undoBG
            x: 10
            y: 413
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.height: 202
            sourceSize.width: 315
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Undo")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                id:undo
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                anchors.verticalCenterOffset: -18
                anchors.horizontalCenterOffset: -1
                anchors.centerIn: parent
                scale: mouseArea333.containsMouse ? 0.95 : 1.0

                Behavior on scale {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    id: refresh
                    x: 13
                    y: 11
                    width: 45/2
                    source: "images/Refresh.svg"
                    mirror: true
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id: mouseArea333
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {

                        if (pressed) {
                            rectangle88.x=undoBG.x
                            rectangle88.y=undoBG.y
                            undo.color = "#217EFD"
                            delete2.color = "#617284"
                            rename.color = "#617284"

                            renameFileNameAnim2.start()
                            undo.color = "#617284"
                            renameFileNameAnim2.start()
                            rename.color = "#617284"
                            delete2.color = "#617284"

                            infoText22.text="Do you want to perform the undo?"
                            acceptAndCancelAnim.start()

                            historyForSLD.push({
                                                   action: "undo",
                                                   index: rectangleForRec1
                                               }
                                               );


                        }
                    }
                }

            }

            fillMode: Image.Tile
        }



        Image {
            id: redoBG
            x: 180
            y: 413
            width: 315/2
            height: 202/2
            source: "images/BGForHeader.svg"
            sourceSize.width: 315
            sourceSize.height: 202
            fillMode: Image.Tile
            Text {
                x: 0
                y: 54
                width: 157
                height: 47
                color: "#284863"
                text: qsTr("Redo")
                font.letterSpacing: -2
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "SemiBold"
                font.family: "Akshar"
            }

            Rectangle {
                id: redo
                x: 9
                y: 0
                width: 47
                height: 47
                color: "#617284"
                radius: 23.5
                scale: mouseArea7.containsMouse ? 0.95 : 1.0
                anchors.verticalCenterOffset: -18
                anchors.centerIn: parent
                anchors.horizontalCenterOffset: -1
                Behavior {
                    NumberAnimation {
                        duration: 50
                    }
                }

                Image {
                    x: 13
                    y: 11
                    width: 45/2
                    source: "images/Refresh.svg"
                    antialiasing: true
                    fillMode: Image.PreserveAspectFit
                }

                MouseArea {
                    id:mouseArea7
                    x: -54
                    y: -10
                    width: 158
                    height: 101
                    onPressedChanged: {
                        rectangle88.x=redoBG.x
                        rectangle88.y=redoBG.y
                        redo.color = "#217EFD"
                        delete2.color = "#617284"
                        rename.color = "#617284"
                        undo.color="#617284"

                        renameFileNameAnim2.start()
                        redo.color = "#617284"
                        renameFileNameAnim2.start()
                        rename.color = "#617284"
                        delete2.color = "#617284"

                        infoText22.text="Do you want to perform the redo?"
                        acceptAndCancelAnim.start()
                        historyForSLD.push({
                                               action: "redo",
                                               index: rectangleForRec1
                                           }
                                           );

                    }
                }
            }

        }


        Rectangle {
            x: 10
            y: 34
            width: 200
            height: 1
            color: "#284863"
        }

        Image {
            x: 20
            y: 672
            width: 616/2
            source: "images/SaveTheSetup.svg"
            fillMode: Image.PreserveAspectFit
            Text {
                x: 0
                y: 0
                width: 308
                height: 48
                color: "#ffffff"
                text: qsTr("Start To Analyse")
                font.letterSpacing: -1.4
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                lineHeight: 0.8
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
            MouseArea {
                width: parent.width+20
                height: parent.height
                anchors.left: parent.left
                anchors.leftMargin: -10
                onClicked: {
                    if(bmBoxRect1.border.color=="#217efd" && rectangleForLeftMenuRec1.x===0){
                        text11.text=textUtility.text+"kVA" +"\n" +  chosenText22.text
                    }
                    if(bmBoxRect2.border.color=="#217efd" && rectangleForLeftMenuRec1.x===0){
                        text12.text=textUtility.text+"kVA" +"\n" +  chosenText22.text
                    }

                    if(bmBoxRect4.border.color=="#217efd" && rectangleForLeftMenuRec1.x===0){
                        text14.text=textUtility.text+"kVA" +"\n" +  chosenText22.text
                    }
                    if(bmBoxRect5.border.color=="#217efd" && rectangleForLeftMenuRec1.x===0){
                        text15.text=textUtility.text+"kVA" +"\n" +  chosenText22.text
                    }
                    bmBoxRect1.border.color="#d6e0e7"
                    bmBoxRect2.border.color="#d6e0e7"

                    bmBoxRect4.border.color="#d6e0e7"
                    bmBoxRect5.border.color="#d6e0e7"
                    rectangle1.x=0
                    rectangleForLeftMenuRec1.x=-500
                    infoText.text="You are changed setup parameters for transformer"

                }
            }
        }

        Text {
            x: 10
            y: 5
            width: 157
            height: 36
            color: "#284863"
            text: qsTr("Rec")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        Rectangle {
            x: 10
            y: 47
            width: 328
            height: 236
            color: "#f7f8fa"
            border.color: "#b0adb1b4"
            Text {
                x: 8
                y: 10
                width: 157
                height: 41
                color: "#284863"
                text: qsTr("Take SLD from")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 8
                y: 54
                width: 157
                height: 41
                color: "#284863"
                text: qsTr("Taken SLD name")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 8
                y: 98
                width: 157
                height: 41
                color: "#284863"
                text: qsTr("Save SLD to")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 8
                y: 142
                width: 157
                height: 41
                color: "#284863"
                text: qsTr("The name of SLD")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 270
                y: 10
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("kVA")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }


            Rectangle {
                x: 8
                y: 186
                width: 315
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    x: 5
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("SLD-DC&AC2")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }
            }

            Rectangle {
                x: 141
                y: 99
                width: 182
                height: 40
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
                Image {
                    id:okUp25
                    x: 163
                    y: 16
                    width: 14
                    source: "images/okUp22.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Text {
                    id:chosenText25
                    color: "#284863"
                    text: qsTr("SD CARD")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 16
                    anchors.leftMargin: 5
                }

                MouseArea {
                    anchors.fill: parent
                    anchors.leftMargin: -5
                    anchors.topMargin: -5
                    anchors.rightMargin: -1
                    onClicked: {

                        if(okUp25.rotation===180)
                        {
                            okUp25.rotation=0
                            backgroundList25.visible=false
                            listView25.visible=false
                        }
                        else
                        {
                            okUp25.rotation=180
                            backgroundList25.visible=true
                            listView25.visible=true
                        }
                    }
                    anchors.bottomMargin: -5
                }
            }

            Rectangle {
                id: backgroundList25
                x: 141
                y: 139
                width: 182
                height: 110
                visible: false
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
            }

            ListView {
                id:listView25
                x: 141
                y: 139
                width: backgroundList25.width
                height: backgroundList25.height
                visible: false
                delegate: Item {
                    width: listView25.width
                    height: 60
                    Rectangle {
                        width: parent.width
                        height: 50
                        color: "#eff2f6"
                        Text {
                            text: model.name
                            anchors.centerIn: parent
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                chosenText25.text = model.name
                            }
                        }
                    }
                }
                clip: true
                model: ListModel {
                    ListElement {
                        name: "USB"
                    }

                    ListElement {
                        name: "SD CARD"
                    }

                    ListElement {
                        name: "Internal Memory"
                    }
                }
            }


            Rectangle {
                x: 141
                y: 55
                width: 182
                height: 40
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
                Image {
                    id:okUp24
                    x: 163
                    y: 16
                    width: 14
                    source: "images/okUp22.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Text {
                    id:chosenText24
                    color: "#284863"
                    text: qsTr("SLD-DC&AC1")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 16
                    anchors.leftMargin: 5
                }

                MouseArea {
                    anchors.fill: parent
                    anchors.leftMargin: -5
                    anchors.topMargin: -5
                    anchors.rightMargin: -1
                    onClicked: {

                        if(okUp24.rotation===180)
                        {
                            okUp24.rotation=0
                            backgroundList24.visible=false
                            listView24.visible=false
                        }
                        else
                        {
                            okUp24.rotation=180
                            backgroundList24.visible=true
                            listView24.visible=true
                        }
                    }
                    anchors.bottomMargin: -5
                }
            }

            Rectangle {
                id: backgroundList24
                x: 141
                y: 95
                width: 182
                height: 110
                visible: false
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
            }

            ListView {
                id:listView24
                x: 141
                y: 95
                width: backgroundList24.width
                height: backgroundList24.height
                visible: false
                delegate: Item {
                    width: listView24.width
                    height: 60
                    Rectangle {
                        width: parent.width
                        height: 50
                        color: "#eff2f6"
                        Text {
                            text: model.name
                            anchors.centerIn: parent
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                chosenText24.text = model.name
                            }
                        }
                    }
                }
                clip: true
                model: ListModel {
                    ListElement {
                        name: "SLD-DC&AC1"
                    }

                    ListElement {
                        name: "RecordTest"
                    }

                    ListElement {
                        name: "Record1"
                    }

                    ListElement {
                        name: "Record2"
                    }
                }
            }


            Rectangle {
                x: 141
                y: 10
                width: 182
                height: 40
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
                Image {
                    id:okUp23
                    x: 163
                    y: 16
                    width: 14
                    source: "images/okUp22.svg"
                    fillMode: Image.PreserveAspectFit
                    rotation: 0
                }

                Text {
                    id:chosenText23
                    color: "#284863"
                    text: qsTr("USB")
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 16
                    anchors.leftMargin: 5
                }

                MouseArea {
                    anchors.fill: parent
                    anchors.leftMargin: -5
                    anchors.topMargin: -5
                    anchors.rightMargin: -1
                    onClicked: {

                        if(okUp23.rotation===180)
                        {
                            okUp23.rotation=0
                            backgroundList23.visible=false
                            listView23.visible=false
                        }
                        else
                        {
                            okUp23.rotation=180
                            backgroundList23.visible=true
                            listView23.visible=true
                        }
                    }
                    anchors.bottomMargin: -5
                }
            }

            Rectangle {
                id: backgroundList23
                x: 141
                y: 50
                width: 182
                height: 110
                visible: false
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
            }

            ListView {
                id:listView23
                x: 141
                y: 50
                width: rectangle122.width
                height: backgroundList22.height
                visible: false
                delegate: Item {
                    width: listView22.width
                    height: 60
                    Rectangle {
                        width: parent.width
                        height: 50
                        color: "#eff2f6"
                        Text {
                            text: model.name
                            anchors.centerIn: parent
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {
                                chosenText23.text = model.name
                            }
                        }
                    }
                }
                clip: true
                model: ListModel {
                    ListElement {
                        name: "USB"
                    }

                    ListElement {
                        name: "SD CARD"
                    }

                    ListElement {
                        name: "Internal Memory"
                    }
                }
            }


        }
    }

    RectangleItem {
        id: rectangle88
        x: -600
        y: 300
        width: 160
        height: 103
        visible: true
        radius: 0
        strokeWidth: 1
        strokeColor: "#217efd"
        fillColor: "#00ffffff"
    }

    Rectangle {
        id: rectangleForUtility
        x: -739
        y: 0
        width: 696/2
        height: 1456/2
        color: "#ffffff"
        border.color: "#e1e5ea"
        Rectangle {
            x: 10
            y: 34
            width: 200
            height: 1
            color: "#284863"
        }

        Image {
            x: 20
            y: 672
            width: 616/2
            source: "images/SaveTheSetup.svg"
            MouseArea {
                width: parent.width+20
                height: parent.height
                anchors.left: parent.left
                onClicked: {
                    if(bmBoxRect1.border.color=="#217efd" && rectangleForUtility.x===0){
                        text11.text=textUtility.text+"MVA" +"\n" + textUtilityRV.text+"kV"
                    }
                    if(bmBoxRect2.border.color=="#217efd" && rectangleForUtility.x===0){
                        text12.text=textUtility.text+"MVA" +"\n" + textUtilityRV.text+"kV"
                    }

                    if(bmBoxRect4.border.color=="#217efd" && rectangleForUtility.x===0){
                        text14.text=textUtility.text+"MVA" +"\n" + textUtilityRV.text+"kV"
                    }
                    if(bmBoxRect5.border.color=="#217efd" && rectangleForUtility.x===0){
                        text15.text=textUtility.text+"MVA" +"\n" + textUtilityRV.text+"kV"
                    }
                    bmBoxRect1.border.color="#d6e0e7"
                    bmBoxRect2.border.color="#d6e0e7"

                    bmBoxRect4.border.color="#d6e0e7"
                    bmBoxRect5.border.color="#d6e0e7"

                    rectangle1.x=0
                    rectangleForUtility.x=-500
                    infoText.text="You are changed setup parameters for Utility"

                }
                anchors.leftMargin: -10
            }

            Text {
                x: 0
                y: 0
                width: 308
                height: 48
                color: "#ffffff"
                text: qsTr("Save The Setup")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
            fillMode: Image.PreserveAspectFit
        }

        Text {
            x: 10
            y: 5
            width: 157
            height: 36
            color: "#284863"
            text: qsTr("Utility")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        Image {
            x: 10
            y: 42
            width: 328
            height: 250
            source: "images/BGForHeader.svg"

            Text {
                x: 8
                y: 104
                width: 135
                height: 41
                color: "#284863"
                text: qsTr("Z")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 141
                y: 104
                width: 140
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textZ
                    x: 5
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("250")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }
                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textZ.focus=true
                    }
                }
            }

            Text {
                x: 8
                y: 57
                width: 135
                height: 41
                color: "#284863"
                text: qsTr("X / R")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 141
                y: 57
                width: 140
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textXR
                    x: 5
                    y: 0
                    width: 181
                    height: 41
                    color: "#284863"
                    text: qsTr("1")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textXR.focus=true
                    }
                }

            }

            Text {
                x: 270
                y: 10
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("MVA")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
            Text {
                x: 8
                y: 4
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Power")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 141
                y: 10
                width: 140
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textUtility
                    x: 5
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("10")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textUtility.focus=true
                    }
                }
            }

            Text {
                x: 8
                y: 151
                width: 135
                height: 41
                color: "#284863"
                text: qsTr("Rated Voltage")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 141
                y: 151
                width: 140
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textUtilityRV
                    x: 5
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("230")
                    font.pixelSize: 16
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }
                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textUtilityRV.focus=true
                    }
                }
            }

            Text {
                x: 270
                y: 151
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("kV")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
            fillMode: Image.Stretch
        }
    }

    Rectangle {
        id: rectangleForVSD
        x: -1113
        y: 0
        width: 696/2
        height: 1456/2
        color: "#ffffff"
        border.color: "#e1e5ea"
        Rectangle {
            x: 10
            y: 34
            width: 200
            height: 1
            color: "#284863"
        }

        Image {
            x: 20
            y: 672
            width: 616/2
            source: "images/SaveTheSetup.svg"
            MouseArea {
                width: parent.width+20
                height: parent.height
                anchors.left: parent.left
                onClicked: {
                    if(bmBoxRect1.border.color=="#217efd" && rectangleForVSD.x===0){
                        text11.text=textVSD.text+"kVA" +"\n"
                    }
                    if(bmBoxRect2.border.color=="#217efd" && rectangleForVSD.x===0){
                        text12.text=textVSD.text+"kVA" +"\n"
                    }

                    if(bmBoxRect4.border.color=="#217efd" && rectangleForVSD.x===0){
                        text14.text=textVSD.text+"kVA" +"\n"
                    }
                    if(bmBoxRect5.border.color=="#217efd" && rectangleForVSD.x===0){
                        text15.text=textVSD.text+"kVA" +"\n"
                    }
                    bmBoxRect1.border.color="#d6e0e7"
                    bmBoxRect2.border.color="#d6e0e7"

                    bmBoxRect4.border.color="#d6e0e7"
                    bmBoxRect5.border.color="#d6e0e7"

                    rectangle1.x=0
                    rectangleForVSD.x=-500
                    infoText.text="You are changed setup parameters for VSD"

                }
                anchors.leftMargin: -10
            }

            Text {
                x: 0
                y: 0
                width: 308
                height: 48
                color: "#ffffff"
                text: qsTr("Save The Setup")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
            fillMode: Image.PreserveAspectFit
        }

        Text {
            x: 10
            y: 4
            width: 157
            height: 36
            color: "#284863"
            text: qsTr("VSD")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        Image {
            x: 10
            y: 42
            width: 328
            height: 54
            source: "images/BGForHeader.svg"
            Text {
                x: 270
                y: 6
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("kVA")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 8
                y: 0
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Main Source")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 141
                y: 6
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textVSD
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("250")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textVSD.focus=true
                    }
                }
            }
            fillMode: Image.Stretch
        }
    }

    Rectangle {
        id: rectangleForMotor
        x: -1482
        y: 0
        width: 696/2
        height: 1456/2
        color: "#ffffff"
        border.color: "#e1e5ea"
        Rectangle {
            x: 10
            y: 34
            width: 200
            height: 1
            color: "#284863"
        }

        Image {
            x: 20
            y: 672
            width: 616/2
            source: "images/SaveTheSetup.svg"
            MouseArea {
                width: parent.width+20
                height: parent.height
                anchors.left: parent.left
                onClicked: {
                    if(bmBoxRect1.border.color=="#217efd" && rectangleForMotor.x===0){
                        text11.text=textMotor.text+"rpm" +"\n"
                    }
                    if(bmBoxRect2.border.color=="#217efd" && rectangleForMotor.x===0){
                        text12.text=textMotor.text+"rpm" +"\n"
                    }

                    if(bmBoxRect4.border.color=="#217efd" && rectangleForMotor.x===0){
                        text14.text=textMotor.text+"rpm" +"\n"
                    }
                    if(bmBoxRect5.border.color=="#217efd" && rectangleForMotor.x===0){
                        text15.text=textMotor.text+"rpm" +"\n"
                    }
                    bmBoxRect1.border.color="#d6e0e7"
                    bmBoxRect2.border.color="#d6e0e7"

                    bmBoxRect4.border.color="#d6e0e7"
                    bmBoxRect5.border.color="#d6e0e7"

                    rectangle1.x=0
                    rectangleForMotor.x=-500
                    infoText.text="You are changed setup parameters for Motor"

                }
                anchors.leftMargin: -10
            }

            Text {
                x: 0
                y: 0
                width: 308
                height: 48
                color: "#ffffff"
                text: qsTr("Save The Setup")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
            fillMode: Image.PreserveAspectFit
        }

        Text {
            x: 10
            y: 4
            width: 157
            height: 36
            color: "#284863"
            text: qsTr("Motor")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        Image {
            x: 10
            y: 42
            width: 328
            height: 239
            source: "images/BGForHeader.svg"
            Text {
                x: 270
                y: 6
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("rpm")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 8
                y: 0
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Rated Speed")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 141
                y: 6
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textMotor
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("1450")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textMotor.focus=true
                    }
                }
            }

            Text {
                x: 270
                y: 52
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("Hz")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 8
                y: 46
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Frequency")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 141
                y: 52
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id: textFreq
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("50.1")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textFreq.focus=true
                    }
                }
            }

            Text {
                x: 270
                y: 98
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("V")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 8
                y: 92
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Rated Voltage")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 141
                y: 98
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textRatedVoltage
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("400")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textRatedVoltage.focus=true
                    }
                }
            }

            Text {
                x: 270
                y: 144
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("A")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 8
                y: 138
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Rated Current")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 141
                y: 144
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textRatedCurrent
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("1.05")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textRatedCurrent.focus=true
                    }
                }
            }

            Text {
                x: 270
                y: 190
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("kW")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 8
                y: 184
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Power")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 141
                y: 190
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textPow
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("0.37")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textPow.focus=true
                    }
                }
            }
            fillMode: Image.Stretch
        }
    }

    Rectangle {
        id: rectangleForCircuitBreaker
        x: -1854
        y: 0
        width: 696/2
        height: 1456/2
        color: "#ffffff"
        border.color: "#e1e5ea"
        Rectangle {
            x: 10
            y: 34
            width: 200
            height: 1
            color: "#284863"
        }

        Image {
            x: 20
            y: 672
            width: 616/2
            source: "images/SaveTheSetup.svg"
            fillMode: Image.PreserveAspectFit
            MouseArea {
                width: parent.width+20
                height: parent.height
                anchors.left: parent.left
                onClicked: {
                    if(bmBoxRect1.border.color=="#217efd" && rectangleForCircuitBreaker.x===0){
                        text11.text=textCurrentCB.text+"A" +"\n"
                    }
                    if(bmBoxRect2.border.color=="#217efd" && rectangleForCircuitBreaker.x===0){
                        text12.text=textCurrentCB.text+"A" +"\n"
                    }

                    if(bmBoxRect4.border.color=="#217efd" && rectangleForCircuitBreaker.x===0){
                        text14.text=textCurrentCB.text+"A" +"\n"
                    }
                    if(bmBoxRect5.border.color=="#217efd" && rectangleForCircuitBreaker.x===0){
                        text15.text=textCurrentCB.text+"A" +"\n"
                    }
                    bmBoxRect1.border.color="#d6e0e7"
                    bmBoxRect2.border.color="#d6e0e7"

                    bmBoxRect4.border.color="#d6e0e7"
                    bmBoxRect5.border.color="#d6e0e7"

                    rectangle1.x=0
                    rectangleForCircuitBreaker.x=-500
                    infoText.text="You are changed setup parameters for Circuit Breaker"

                }
                anchors.leftMargin: -10
            }

            Text {
                x: 0
                y: 0
                width: 308
                height: 48
                color: "#ffffff"
                text: qsTr("Save The Setup")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
        }

        Text {
            x: 10
            y: 4
            width: 157
            height: 36
            color: "#284863"
            text: qsTr("Circuit Breaker")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        Image {
            x: 10
            y: 42
            width: 328
            height: 146
            source: "images/BGForHeader.svg"
            fillMode: Image.Stretch

            Text {
                x: 271
                y: 6
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("Hz")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 9
                y: 0
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Frequency")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 142
                y: 6
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textFreqCB
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("50.1")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textFreq.focus=true
                    }
                }
            }

            Text {
                x: 271
                y: 52
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("V")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 9
                y: 46
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Rated Voltage")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 142
                y: 52
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("400")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textRatedVoltage.focus=true
                    }
                }
            }

            Text {
                x: 271
                y: 98
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("A")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 9
                y: 92
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Rated Current")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 142
                y: 98
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textCurrentCB
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("1.05")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textRatedCurrent.focus=true
                    }
                }
            }
        }
    }

    Rectangle {
        id: rectangleForGenerator
        x: -2224
        y: 0
        width: 696/2
        height: 1456/2
        color: "#ffffff"
        border.color: "#e1e5ea"
        Rectangle {
            x: 10
            y: 34
            width: 200
            height: 1
            color: "#284863"
        }

        Image {
            x: 20
            y: 672
            width: 616/2
            source: "images/SaveTheSetup.svg"
            fillMode: Image.PreserveAspectFit
            MouseArea {
                width: parent.width+20
                height: parent.height
                anchors.left: parent.left
                onClicked: {
                    if(bmBoxRect1.border.color=="#217efd" && rectangleForGenerator.x===0){
                        text11.text=textCurrentGenerator.text+"A" +"\n"
                    }
                    if(bmBoxRect2.border.color=="#217efd" && rectangleForGenerator.x===0){
                        text12.text=textCurrentGenerator.text+"A" +"\n"
                    }

                    if(bmBoxRect4.border.color=="#217efd" && rectangleForGenerator.x===0){
                        text14.text=textCurrentGenerator.text+"A" +"\n"
                    }
                    if(bmBoxRect5.border.color=="#217efd" && rectangleForGenerator.x===0){
                        text15.text=textCurrentGenerator.text+"A" +"\n"
                    }
                    bmBoxRect1.border.color="#d6e0e7"
                    bmBoxRect2.border.color="#d6e0e7"

                    bmBoxRect4.border.color="#d6e0e7"
                    bmBoxRect5.border.color="#d6e0e7"

                    rectangle1.x=0
                    rectangleForGenerator.x=-500
                    infoText.text="You are changed setup parameters for Generator"

                }
                anchors.leftMargin: -10
            }

            Text {
                x: 0
                y: 0
                width: 308
                height: 48
                color: "#ffffff"
                text: qsTr("Save The Setup")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
        }

        Text {
            x: 10
            y: 4
            width: 157
            height: 36
            color: "#284863"
            text: qsTr("Generator")
            font.letterSpacing: -1.4
            font.pixelSize: 17
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
            font.styleName: "Bold"
        }

        Image {
            x: 10
            y: 42
            width: 328
            height: 146
            source: "images/BGForHeader.svg"
            fillMode: Image.Stretch
            Text {
                x: 271
                y: 6
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("kW")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 9
                y: 0
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Rated Power")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 142
                y: 6
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("150")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textFreq.focus=true
                    }
                }
            }

            Text {
                x: 271
                y: 52
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("V")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 9
                y: 46
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Rated Voltage")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 142
                y: 52
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("400")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textRatedVoltage.focus=true
                    }
                }
            }

            Text {
                x: 271
                y: 98
                width: 50
                height: 41
                color: "#284863"
                text: qsTr("A")
                font.letterSpacing: -1.4
                font.pixelSize: 17
                horizontalAlignment: Text.AlignRight
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Text {
                x: 9
                y: 92
                width: 135
                height: 54
                color: "#284863"
                text: qsTr("Rated Current")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Rectangle {
                x: 142
                y: 98
                width: 145
                height: 41
                color: "#ffffff"
                radius: 0
                border.color: "#d9d9d9"
                TextInput {
                    id:textCurrentGenerator
                    x: 15
                    y: 0
                    width: 146
                    height: 41
                    color: "#284863"
                    text: qsTr("1.05")
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    clip: true
                }

                MouseArea {
                    x: -130
                    y: -10
                    width: parent.width+140
                    height: parent.height+20
                    onClicked: {
                        textRatedCurrent.focus=true
                    }
                }
            }
        }
    }

}
