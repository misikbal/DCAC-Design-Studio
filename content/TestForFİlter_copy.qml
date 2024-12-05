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

    Image {
        id: bGHeader1
        x: 2
        y: 138
        width: 324
        height: 87
        source: "/images/BGHeader.svg"
        fillMode: Image.PreserveAspectFit

        Image {
            id: bgForHeader32
            x: 0
            width: 150
            anchors.top: parent.top
            anchors.bottom: bGHeader1.top
            source: "images/BGHeader.svg"
            anchors.topMargin: -7
            anchors.bottomMargin: 7
            fillMode: Image.Stretch

            Text {
                id: loggerText111
                x: 10
                y: 0
                width: 121
                height: 44
                color: "#284863"
                text: qsTr("Graph1")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            CustomButtonHeaderBlackBG {
                x: 90
                y: 44
                width: 57
                height: 46
                clip: true
            }

            Image {
                id: okUp111
                x: 112
                y: 62
                width: 28/2
                source: "images/OkUp.svg"
                fillMode: Image.PreserveAspectFit
                rotation: 180
            }

            Rectangle {
                id: rectangle1010
                x: 10
                y: 44
                width: 80
                height: 46
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
                Rectangle {
                    id: backgroundList111
                    x: 0
                    y: 45
                    width: 85
                    height: 175
                    visible: false
                    color: "#ffffff"
                }

                Text {
                    id: chosenText111
                    color: "#284863"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 18
                    text: "Voltage"
                    anchors.leftMargin: 5
                }

                MouseArea {
                    anchors.fill: parent
                    anchors.rightMargin: -60
                    anchors.topMargin: -5
                    anchors.bottomMargin: -5
                    anchors.leftMargin: -5
                    onClicked: {

                        if(okUp111.rotation===0)
                        {
                            okUp111.rotation=180
                            backgroundList111.visible=false
                            listView1111.visible=false

                        }
                        else
                        {
                            okUp111.rotation=0
                            backgroundList111.visible=true
                            listView1111.visible=true

                        }
                    }
                }

                ListView {
                    id: listView1111
                    x: 0
                    width: parent.width
                    height: 500
                    visible: false
                    anchors.top: parent.top
                    anchors.topMargin: 44
                    model: ListModel {
                        ListElement {
                            name: "Voltage"
                        }

                        ListElement {
                            name: "Current"
                        }

                        ListElement {
                            name: "Power"
                        }


                    }
                    delegate: Item {
                        width: listView1111.width
                        height: 50
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

                                    chosenText111.text = model.name
                                    listView1111.visible = false
                                    backgroundList111.visible=false
                                    okUp111.rotation=180
                                    backgroundList111.visible=false
                                    listView1111.visible=false

                                }
                            }
                        }
                    }
                    spacing: 5
                }
            }
        }

        Image {
            id: bgForHeader42
            x: 156
            y: 4
            width: 150
            anchors.top: parent.top
            anchors.bottom: bGHeader1.top
            source: "images/BGHeader.svg"
            anchors.topMargin: -7
            anchors.bottomMargin: 7
            fillMode: Image.Stretch
            Text {
                id: loggerText2
                x: 10
                y: 0
                width: 121
                height: 44
                color: "#284863"
                text: qsTr("Graph2")
                font.letterSpacing: -2
                font.pixelSize: 19
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }

            CustomButtonHeaderBlackBG {
                x: 90
                y: 44
                width: 57
                height: 46
                clip: true
            }

            Image {
                id: okUp222
                x: 112
                y: 62
                width: 28/2
                source: "images/OkUp.svg"
                fillMode: Image.PreserveAspectFit
                rotation: 180
            }

            Rectangle {
                id:rectangle222
                x: 10
                y: 44
                width: 80
                height: 46
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
                Rectangle {
                    id:backgroundList222
                    x: 0
                    y: 45
                    width: 85
                    height: 175
                    visible: false
                }

                Text {
                   id:chosenText222
                    color: "#284863"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 18
                    anchors.leftMargin: 5
                    text: "Current"
                }

                MouseArea {
                    anchors.fill: parent
                    anchors.rightMargin: -60
                    anchors.topMargin: -5
                    anchors.bottomMargin: -5
                    anchors.leftMargin: -5
                    onClicked: {

                                if(okUp222.rotation===0)
                                {
                                    okUp222.rotation=180
                                    backgroundList222.visible=false
                                    listView2222.visible=false

                                }
                                else
                                {
                                    okUp222.rotation=0
                                    backgroundList222.visible=true
                                    listView2222.visible=true

                                }
                            }
                }

                ListView {
                    id:listView2222
                    x: 0
                    width: parent.width
                    height: 500
                    visible: false
                    anchors.top: parent.top
                    anchors.topMargin: 44
                    model: ListModel {
                        ListElement {
                            name: "Voltage"
                        }

                        ListElement {
                            name: "Current"
                        }

                        ListElement {
                            name: "Power"
                        }
                    }
                    delegate: Item {
                        width: listView1111.width
                        height: 50
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

                                            chosenText222.text = model.name
                                            listView2222.visible = false
                                            backgroundList222.visible=false
                                            okUp222.rotation=180
                                            backgroundList222.visible=false
                                            listView2222.visible=false

                                        }
                            }
                        }
                    }
                    spacing: 5
                }
            }
        }


    }


}


