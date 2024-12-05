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





    Image {
        id: unbalance
        x: 0
        y: 0
        width: 2560/2
        source: "images/SingleLineDiagramSettings.svg"
        fillMode: Image.PreserveAspectFit

        Rectangle {
            id: rectangle12
            x: 0
            y: 0
            width: 929
            height: 728
            color: "#ffffff"
        }
    }

    Rectangle {
        id: rectangleForConnection
        x: 450
        y: 67
        width: 434
        height: 2
        visible: false
        color: "#617284"
    }


    Item {
        Timer {
            interval: 10; running: true; repeat: true
            onTriggered:{
                if(sources.x===dropZone.x || transformers.x===dropZone.x || vsd.x===dropZone.x || motors.x===dropZone.x || filters.x===dropZone.x || rectifiers.x===dropZone.x || generators.x===dropZone.x)
                {
                    rectangleForConnection.visible=true
                    rectangleForConnection.width=110
                    connectPoint.x=sources.x+124
                    connectPoint.y=sources.y+51
                }
                else{
                    rectangleForConnection.visible=false
                    connectPoint.y=-255

                }

            }
            //                onTriggered:uartDeneme.writeData("write")
        }
    }




    Image {
        id: bGForHeader32
        x: 12
        y: 89
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        fillMode: Image.Tile
        sourceSize.height: 202
        sourceSize.width: 315

        Image {
            id: source1
            x: 53
            y: 8
            width: 103/2
            source: "images/source.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: unbalanceHeaderText
            x: 0
            y: 60
            width: 158
            height: 41
            color: "#284863"
            text: qsTr("Source")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
        }
    }

    Image {
        id: bGForHeader33
        x: 178
        y: 89
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        fillMode: Image.Tile
        sourceSize.height: 202
        sourceSize.width: 315

        Image {
            id: transformer
            x: 53
            y: 8
            width: 103/2
            source: "images/transformer.svg"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: unbalanceHeaderText1
            x: 0
            y: 60
            width: 158
            height: 41
            color: "#284863"
            text: qsTr("Transformer")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
        }
    }

    Image {
        id: bGForHeader34
        x: 12
        y: 197
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        sourceSize.height: 202
        sourceSize.width: 315
        fillMode: Image.Tile

        Text {
            id: unbalanceHeaderText2
            x: 0
            y: 60
            width: 158
            height: 41
            color: "#284863"
            text: qsTr("VSD")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
        }

        Image {
            id: vsd
            x: 53
            y: 8
            width: 103/2
            source: "images/vsd.svg"
            fillMode: Image.PreserveAspectFit
        }
    }

    Image {
        id: bGForHeader35
        x: 178
        y: 197
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        sourceSize.height: 202
        sourceSize.width: 315
        fillMode: Image.Tile

        Text {
            id: unbalanceHeaderText12
            x: 0
            y: 60
            width: 158
            height: 41
            color: "#284863"
            text: qsTr("Motor")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
        }

        Image {
            id: motor
            x: 53
            y: 8
            width: 103/2
            source: "images/motor.svg"
            fillMode: Image.PreserveAspectFit
        }
    }

    Image {
        id: bGForHeader36
        x: 12
        y: 304
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        sourceSize.height: 202
        sourceSize.width: 315
        fillMode: Image.Tile

        Text {
            id: unbalanceHeaderText111
            x: 0
            y: 60
            width: 158
            height: 41
            color: "#284863"
            text: qsTr("Filter")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
        }

        Image {
            id: filter
            x: 53
            y: -49
            width: 103/2
            source: "images/filter.svg"
            fillMode: Image.PreserveAspectFit
        }
    }

    Image {
        id: bGForHeader37
        x: 178
        y: 304
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        sourceSize.height: 202
        sourceSize.width: 315
        fillMode: Image.Tile
        Text {
            id: unbalanceHeaderText112
            x: 0
            y: 60
            width: 158
            height: 41
            color: "#284863"
            text: qsTr("Rectifier")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
        }
        Image {
            id: rectifier
            x: 53
            y: 8
            width: 103/2
            source: "images/rectifier.svg"
            fillMode: Image.PreserveAspectFit
        }
    }

    Image {
        id: bGForHeader38
        x: 12
        y: 413
        width: 315/2
        height: 202/2
        source: "images/BGForHeader.svg"
        sourceSize.height: 202
        sourceSize.width: 315
        fillMode: Image.Tile
        Text {
            id: unbalanceHeaderText113
            x: 0
            y: 60
            width: 158
            height: 41
            color: "#284863"
            text: qsTr("Generator")
            font.letterSpacing: -2
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            font.family: "Akshar"
        }
        Image {
            id: generator
            x: 53
            y: 8
            width: 103/2
            source: "images/generator.svg"
            fillMode: Image.PreserveAspectFit
        }
    }

    Rectangle{
        id:sources
        x:25
        y:60
        width: 132
        height: 125
        radius:6
        color:"#00efefef"
        border.color: "black"
        border.width: 0
        Drag.active: dragArea.drag.active
        Drag.hotSpot.x: 10
        Drag.hotSpot.y: 10
        Text{
            id:title
            visible: false
            anchors.centerIn: parent
            text:Math.round(parent.x)+ "x" + Math.round(parent.y)
            font.pointSize: 50
        }
        Image {
            id: source12
            x: 40
            y: 37
            width: 103/2
            source: "images/source.svg"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea{
            id:dragArea
            anchors.fill: parent
            drag.target: parent
            onPressed: {
                //parent.color="red"
                console.log("drag")
            }
            onReleased: {
                //parent.color="green"
                console.log("drop")

                if(dropZonerectangle.visible===true){
                    sources.x=dropZone.x
                    sources.y=dropZone.y
//                    connectPoint.x=sources.x+124
//                    connectPoint.y=sources.y+51
                }
                else if(dropZonerectangle1.visible===true){

                    sources.x=dropZone1.x
                    sources.y=dropZone1.y
//                    connectPoint.x=sources.x+124
//                    connectPoint.y=sources.y+51
                }
                else if(dropZonerectangle2.visible===true){

                    sources.x=dropZone2.x
                    sources.y=dropZone2.y
//                    connectPoint.x=sources.x+124
//                    connectPoint.y=sources.y+51
                }
                else if(dropZonerectangle3.visible===true){

                    sources.x=dropZone3.x
                    sources.y=dropZone3.y
//                    connectPoint.x=sources.x+124
//                    connectPoint.y=sources.y+51
                }
                //                else if(dropZonerectangle4.visible===true){

                //                    voltagetext.x=dropZone4.x
                //                    voltagetext.y=dropZone4.y
                //                }
                //                else if(dropZonerectangle5.visible===true){

                //                    voltagetext.x=dropZone5.x
                //                    voltagetext.y=dropZone5.y
                //                }
                //                else if(dropZonerectangle6.visible===true){

                //                    voltagetext.x=dropZone6.x
                //                    voltagetext.y=dropZone6.y
                //                }
                //                else if(dropZonerectangle7.visible===true){

                //                    voltagetext.x=dropZone7.x
                //                    voltagetext.y=dropZone7.y
                //                }
                //                else if(dropZonerectangle8.visible===true){

                //                    voltagetext.x=dropZone8.x
                //                    voltagetext.y=dropZone8.y
                //                }
                else{
                    sources.x=25
                    sources.y=60
//                     connectPoint.y=-55
                }

                console.log("DROPZONE: "+dropZone.x + dropZone.y)
                console.log("VOLTAGE TEXT: "+sources.x+ sources.y)
            }

        }

    }

    Rectangle {
        id: transformers
        x: 191
        y: 60
        width: 132
        height: 125
        color: "#00efefef"
        radius: 6
        Drag.active: dragArea1.drag.active
        border.color: "#000000"
        border.width: 0
        Text {
            visible: false
            text: Math.round(parent.x)+ "x" + Math.round(parent.y)
            font.pointSize: 50
            anchors.centerIn: parent
        }

        Image {
            x: 40
            y: 37
            width: 103/2
            source:"images/transformer.svg"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id:dragArea1
            anchors.fill: parent
            drag.target: parent
            onPressed: {
                //parent.color="red"
                console.log("drag")
            }
            onReleased: {
                //parent.color="green"
                console.log("drop")

                if(dropZonerectangle.visible===true){
                    transformers.x=dropZone.x
                    transformers.y=dropZone.y
                }
                else if(dropZonerectangle1.visible===true){

                    transformers.x=dropZone1.x
                    transformers.y=dropZone1.y
                }
                else if(dropZonerectangle2.visible===true){

                    transformers.x=dropZone2.x
                    transformers.y=dropZone2.y
                }
                else if(dropZonerectangle3.visible===true){

                    transformers.x=dropZone3.x
                    transformers.y=dropZone3.y
                }
                //                else if(dropZonerectangle4.visible===true){

                //                    voltagetext.x=dropZone4.x
                //                    voltagetext.y=dropZone4.y
                //                }
                //                else if(dropZonerectangle5.visible===true){

                //                    voltagetext.x=dropZone5.x
                //                    voltagetext.y=dropZone5.y
                //                }
                //                else if(dropZonerectangle6.visible===true){

                //                    voltagetext.x=dropZone6.x
                //                    voltagetext.y=dropZone6.y
                //                }
                //                else if(dropZonerectangle7.visible===true){

                //                    voltagetext.x=dropZone7.x
                //                    voltagetext.y=dropZone7.y
                //                }
                //                else if(dropZonerectangle8.visible===true){

                //                    voltagetext.x=dropZone8.x
                //                    voltagetext.y=dropZone8.y
                //                }
                else{
                    transformers.x=191
                    transformers.y=60
                }

                console.log("DROPZONE: "+dropZone.x + dropZone.y)
                console.log("VOLTAGE TEXT: "+transformers.x+ transformers.y)
            }
        }
        Drag.hotSpot.y: 10
        Drag.hotSpot.x: 10
    }

    DropArea {
        id: dropZone
        y: 8
        height: 125
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 775
        anchors.leftMargin: 373
        Rectangle {
            id:dropZonerectangle
            visible: parent.containsDrag
            color: "#003bb53b"
            radius: 6
            border.color: "#add8e6"
            border.width: 3
            anchors.fill: parent
        }
    }


    DropArea {
        id: dropZone1
        x: -1
        y: 8
        height: 125
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 647
        anchors.leftMargin: 505
        Rectangle {
            id:dropZonerectangle1
            visible: parent.containsDrag
            color: "#003bb53b"
            radius: 6
            border.color: "#add8e6"
            border.width: 3
            anchors.fill: parent
        }
    }


    DropArea {
        id: dropZone2
        x: -1
        y: 8
        height: 125
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 519
        anchors.leftMargin: 633
        Rectangle {
            id:dropZonerectangle2
            visible: parent.containsDrag
            color: "#003bb53b"
            radius: 6
            border.color: "#add8e6"
            border.width: 3
            anchors.fill: parent
        }
    }


    DropArea {
        id: dropZone3
        y: 8
        height: 125
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.rightMargin: 398
        anchors.leftMargin: 761
        Rectangle {
            id:dropZonerectangle3
            visible: parent.containsDrag
            color: "#003bb53b"
            radius: 6
            border.color: "#add8e6"
            border.width: 3
            anchors.fill: parent
        }
    }









    Rectangle {
        id: transformers1
        x: 25
        y: 168
        width: 132
        height: 125
        color: "#00efefef"
        Drag.active: dragArea2.drag.active
        radius: 6
        border.color: "#000000"
        border.width: 0
        Text {
            visible: false
            text: Math.round(parent.x)+ "x" + Math.round(parent.y)
            font.pointSize: 50
            anchors.centerIn: parent
        }

        Image {
            x: 40
            y: 37
            width: 103/2
            source: "images/vsd.svg"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id:dragArea2
            anchors.fill: parent
            drag.target: parent
            onPressed: {
                //parent.color="red"
                console.log("drag")
            }
            onReleased: {
                //parent.color="green"
                console.log("drop")

                if(dropZonerectangle.visible===true){
                    transformers1.x=dropZone.x
                    transformers1.y=dropZone.y
                }
                else if(dropZonerectangle1.visible===true){

                    transformers1.x=dropZone1.x
                    transformers1.y=dropZone1.y
                }
                else if(dropZonerectangle2.visible===true){

                    transformers1.x=dropZone2.x
                    transformers1.y=dropZone2.y
                }
                else if(dropZonerectangle3.visible===true){

                    transformers1.x=dropZone3.x
                    transformers1.y=dropZone3.y
                }
                //                else if(dropZonerectangle4.visible===true){

                //                    voltagetext.x=dropZone4.x
                //                    voltagetext.y=dropZone4.y
                //                }
                //                else if(dropZonerectangle5.visible===true){

                //                    voltagetext.x=dropZone5.x
                //                    voltagetext.y=dropZone5.y
                //                }
                //                else if(dropZonerectangle6.visible===true){

                //                    voltagetext.x=dropZone6.x
                //                    voltagetext.y=dropZone6.y
                //                }
                //                else if(dropZonerectangle7.visible===true){

                //                    voltagetext.x=dropZone7.x
                //                    voltagetext.y=dropZone7.y
                //                }
                //                else if(dropZonerectangle8.visible===true){

                //                    voltagetext.x=dropZone8.x
                //                    voltagetext.y=dropZone8.y
                //                }
                else{
                    transformers1.x=25
                    transformers1.y=168
                }

                console.log("DROPZONE: "+dropZone.x + dropZone.y)
                console.log("VOLTAGE TEXT: "+transformers1.x+ transformers1.y)
            }
        }
        Drag.hotSpot.y: 10
        Drag.hotSpot.x: 10
    }

    Rectangle {
        id: motors
        x: 191
        y: 168
        width: 132
        height: 125
        color: "#00efefef"
        Drag.active: dragArea3.drag.active
        radius: 6
        border.color: "#000000"
        border.width: 0
        Text {
            visible: false
            text: Math.round(parent.x)+ "x" + Math.round(parent.y)
            font.pointSize: 50
            anchors.centerIn: parent
        }

        Image {
            x: 40
            y: 37
            width: 103/2
            source: "images/motor.svg"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id:dragArea3
            anchors.fill: parent
            drag.target: parent
            onPressed: {
                //parent.color="red"
                console.log("drag")
            }
            onReleased: {
                //parent.color="green"
                console.log("drop")

                if(dropZonerectangle.visible===true){
                    motors.x=dropZone.x
                    motors.y=dropZone.y
                }
                else if(dropZonerectangle1.visible===true){

                    motors.x=dropZone1.x
                    motors.y=dropZone1.y
                }
                else if(dropZonerectangle2.visible===true){

                    motors.x=dropZone2.x
                    motors.y=dropZone2.y
                }
                else if(dropZonerectangle3.visible===true){

                    motors.x=dropZone3.x
                    motors.y=dropZone3.y
                }
                //                else if(dropZonerectangle4.visible===true){

                //                    voltagetext.x=dropZone4.x
                //                    voltagetext.y=dropZone4.y
                //                }
                //                else if(dropZonerectangle5.visible===true){

                //                    voltagetext.x=dropZone5.x
                //                    voltagetext.y=dropZone5.y
                //                }
                //                else if(dropZonerectangle6.visible===true){

                //                    voltagetext.x=dropZone6.x
                //                    voltagetext.y=dropZone6.y
                //                }
                //                else if(dropZonerectangle7.visible===true){

                //                    voltagetext.x=dropZone7.x
                //                    voltagetext.y=dropZone7.y
                //                }
                //                else if(dropZonerectangle8.visible===true){

                //                    voltagetext.x=dropZone8.x
                //                    voltagetext.y=dropZone8.y
                //                }
                else{
                    motors.x=191
                    motors.y=168
                }

                console.log("DROPZONE: "+dropZone.x + dropZone.y)
                console.log("VOLTAGE TEXT: "+motors.x+ motors.y)
            }
        }
        Drag.hotSpot.y: 10
        Drag.hotSpot.x: 10
    }

    Rectangle {
        id: filters
        x: 25
        y: 273
        width: 132
        height: 140
        color: "#00efefef"
        Drag.active: dragArea4.drag.active
        radius: 6
        border.color: "#000000"
        border.width: 0
        Text {
            visible: false
            text: Math.round(parent.x)+ "x" + Math.round(parent.y)
            font.pointSize: 50
            anchors.centerIn: parent
        }

        Image {
            x: 40
            y: -18
            width: 103/2
            source: "images/filter.svg"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id:dragArea4
            anchors.fill: parent
            drag.target: parent
            onPressed: {
                //parent.color="red"
                console.log("drag")
            }
            onReleased: {
                //parent.color="green"
                console.log("drop")

                if(dropZonerectangle.visible===true){
                    filters.x=dropZone.x
                    filters.y=dropZone.y
                }
                else if(dropZonerectangle1.visible===true){

                    filters.x=dropZone1.x
                    filters.y=dropZone1.y
                }
                else if(dropZonerectangle2.visible===true){

                    filters.x=dropZone2.x
                    filters.y=dropZone2.y
                }
                else if(dropZonerectangle3.visible===true){

                    filters.x=dropZone3.x
                    filters.y=dropZone3.y
                }
                //                else if(dropZonerectangle4.visible===true){

                //                    voltagetext.x=dropZone4.x
                //                    voltagetext.y=dropZone4.y
                //                }
                //                else if(dropZonerectangle5.visible===true){

                //                    voltagetext.x=dropZone5.x
                //                    voltagetext.y=dropZone5.y
                //                }
                //                else if(dropZonerectangle6.visible===true){

                //                    voltagetext.x=dropZone6.x
                //                    voltagetext.y=dropZone6.y
                //                }
                //                else if(dropZonerectangle7.visible===true){

                //                    voltagetext.x=dropZone7.x
                //                    voltagetext.y=dropZone7.y
                //                }
                //                else if(dropZonerectangle8.visible===true){

                //                    voltagetext.x=dropZone8.x
                //                    voltagetext.y=dropZone8.y
                //                }
                else{
                    filters.x=25
                    filters.y=273
                }

                console.log("DROPZONE: "+dropZone.x + dropZone.y)
                console.log("VOLTAGE TEXT: "+filters.x+ filters.y)
            }
        }
        Drag.hotSpot.y: 10
        Drag.hotSpot.x: 10
    }

    Rectangle {
        id: rectifiers
        x: 191
        y: 273
        width: 132
        height: 125
        color: "#00efefef"
        Drag.active: dragArea5.drag.active
        radius: 6
        border.color: "#000000"
        border.width: 0
        Text {
            visible: false
            text: Math.round(parent.x)+ "x" + Math.round(parent.y)
            font.pointSize: 50
            anchors.centerIn: parent
        }

        Image {
            x: 40
            y: 39
            width: 103/2
            source: "images/rectifier.svg"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id:dragArea5
            anchors.fill: parent
            drag.target: parent
            onPressed: {
                //parent.color="red"
                console.log("drag")
            }
            onReleased: {
                //parent.color="green"
                console.log("drop")

                if(dropZonerectangle.visible===true){
                    rectifiers.x=dropZone.x
                    rectifiers.y=dropZone.y
                }
                else if(dropZonerectangle1.visible===true){

                    rectifiers.x=dropZone1.x
                    rectifiers.y=dropZone1.y
                }
                else if(dropZonerectangle2.visible===true){

                    rectifiers.x=dropZone2.x
                    rectifiers.y=dropZone2.y
                }
                else if(dropZonerectangle3.visible===true){

                    rectifiers.x=dropZone3.x
                    rectifiers.y=dropZone3.y
                }
                //                else if(dropZonerectangle4.visible===true){

                //                    voltagetext.x=dropZone4.x
                //                    voltagetext.y=dropZone4.y
                //                }
                //                else if(dropZonerectangle5.visible===true){

                //                    voltagetext.x=dropZone5.x
                //                    voltagetext.y=dropZone5.y
                //                }
                //                else if(dropZonerectangle6.visible===true){

                //                    voltagetext.x=dropZone6.x
                //                    voltagetext.y=dropZone6.y
                //                }
                //                else if(dropZonerectangle7.visible===true){

                //                    voltagetext.x=dropZone7.x
                //                    voltagetext.y=dropZone7.y
                //                }
                //                else if(dropZonerectangle8.visible===true){

                //                    voltagetext.x=dropZone8.x
                //                    voltagetext.y=dropZone8.y
                //                }
                else{
                    rectifiers.x=191
                    rectifiers.y=273
                }

                console.log("DROPZONE: "+dropZone.x + dropZone.y)
                console.log("VOLTAGE TEXT: "+rectifiers.x+ rectifiers.y)
            }
        }
        Drag.hotSpot.y: 10
        Drag.hotSpot.x: 10
    }

    Rectangle {
        id: generators
        x: 25
        y: 382
        width: 132
        height: 125
        color: "#00efefef"
        Drag.active: dragArea6.drag.active
        radius: 6
        border.color: "#000000"
        border.width: 0
        Text {
            visible: false
            text: Math.round(parent.x)+ "x" + Math.round(parent.y)
            font.pointSize: 50
            anchors.centerIn: parent
        }

        Image {
            x: 40
            y: 39
            width: 103/2
            source: "images/generator.svg"
            fillMode: Image.PreserveAspectFit
        }

        MouseArea {
            id:dragArea6
            anchors.fill: parent
            drag.target: parent
            onPressed: {
                //parent.color="red"
                console.log("drag")
            }
            onReleased: {
                //parent.color="green"
                console.log("drop")

                if(dropZonerectangle.visible===true){
                    generators.x=dropZone.x
                    generators.y=dropZone.y
                }
                else if(dropZonerectangle1.visible===true){

                    generators.x=dropZone1.x
                    generators.y=dropZone1.y
                }
                else if(dropZonerectangle2.visible===true){

                    generators.x=dropZone2.x
                    generators.y=dropZone2.y
                }
                else if(dropZonerectangle3.visible===true){

                    generators.x=dropZone3.x
                    generators.y=dropZone3.y
                }
                //                else if(dropZonerectangle4.visible===true){

                //                    voltagetext.x=dropZone4.x
                //                    voltagetext.y=dropZone4.y
                //                }
                //                else if(dropZonerectangle5.visible===true){

                //                    voltagetext.x=dropZone5.x
                //                    voltagetext.y=dropZone5.y
                //                }
                //                else if(dropZonerectangle6.visible===true){

                //                    voltagetext.x=dropZone6.x
                //                    voltagetext.y=dropZone6.y
                //                }
                //                else if(dropZonerectangle7.visible===true){

                //                    voltagetext.x=dropZone7.x
                //                    voltagetext.y=dropZone7.y
                //                }
                //                else if(dropZonerectangle8.visible===true){

                //                    voltagetext.x=dropZone8.x
                //                    voltagetext.y=dropZone8.y
                //                }
                else{
                    generators.x=25
                    generators.y=382
                }

                console.log("DROPZONE: "+dropZone.x + dropZone.y)
                console.log("VOLTAGE TEXT: "+generators.x+ generators.y)
            }
        }
        Drag.hotSpot.y: 10
        Drag.hotSpot.x: 10
    }


    Image {
        id: connectPoint
        x: 692
        y: -910
        width: 34/2
        source: "images/ConnectPoint.svg"
        fillMode: Image.PreserveAspectFit
    }
}


