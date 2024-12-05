import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.VirtualKeyboard 2.15
import UntitledProject35 1.0
import QtQuick.Layouts 1.11
import QtQuick.Studio.Components 1.0
import QtQuick.Studio.Effects 1.0
import QtGraphicalEffects 1.15
import QtQuick.Shapes 1.0
import QtQuick.Layouts 1.10
import QtQuick.Timeline 1.0
import QtCharts 2.3


Rectangle {
    id: rectangle
    width: 1280
    height: 728
    color: "#f7f8fa"
    border.color: "#f7f8fa"
    property int animationDurationForHarmoncis: 2000
    property int animationsForHarmonicClickedCircleOpen:500
    property var history: []


    property bool forNoHead: true
    property bool forFileNameHead: true
    property bool forRecordTimeHead: true
    property bool forTypeHead: true
    property bool forSizeHead: true

    property var currentDate: new Date()
    property var textForNoArray: []
    property int totalSize: 0
    property var redoHistory: []

    property string colorOverlayColor: String("#80bfbfbf")

    Component.onCompleted: {
        groupDotRotation.start()
    }

    ButtonGroup {
        id: radioButtonGroup
    }

    Rectangle {
        id: rectangle1
        x: 358
        y: 8
        width: 545
        height: 720
        color: "#ffffff"
        border.color: "#dce8ef"

        Image {
            id: vectorRed
            x: 270
            y: 26
            width: 29/2
            visible:
                if(switch6.checked===true){
                    if(main3phasewye.visible===true){
                        if(chosenTextaaa.text==="A"){
                            true
                        }
                        else{
                            false
                        }
                    }
                    else{
                        false
                    }
                }
                else {
                    false
                }
            source: "images/VectorRed.png"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: vectorYellow
            x: 270
            y: 142
            width: 29/2
            source: "images/VectorYellow.png"
            antialiasing: true
            visible:
                if(switch6.checked===true){
                    if(main3phasewye.visible===true){
                        if(chosenTextaaa1.text==="B"){
                            true
                        }
                        else{
                            false
                        }
                    }
                    else{
                        false
                    }
                }
                else {
                    false
                }
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: vectorBlue
            x: 270
            y: 260
            width: 29/2
            visible:
                if(switch6.checked===true){
                    if(main3phasewye.visible===true){
                        if(chosenTextaaa2.text==="C"){
                            true
                        }
                        else{
                            false
                        }
                    }
                    else{
                        false
                    }
                }
                else {
                    false
                }

            source: "images/VectorBlue.png"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: vectorRed1
            x: 253
            y: 40
            width: 29/2
            visible:
                if(main3phaseDelta.visible===true){
                    if(chosenTextaaa.text==="A"){
                        true
                    }
                    else{
                        false
                    }
                }
                else{
                    false
                }
            source: "images/VectorRed.png"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: vectorYellow1
            x: 253
            y: 197
            width: 29/2
            source: "images/VectorYellow.png"
            antialiasing: true
            visible:
                if(main3phaseDelta.visible===true){
                    if(chosenTextaaa1.text==="B"){
                        true
                    }
                    else{
                        false
                    }
                }
                else{
                    false
                }
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: vectorBlue1
            x: 253
            y: 355
            width: 29/2
            visible:
                if(main3phaseDelta.visible===true){
                    if(chosenTextaaa2.text==="C"){
                        true
                    }
                    else{
                        false
                    }
                }
                else{
                    false
                }

            source: "images/VectorBlue.png"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }




        Image {
            id: vectorRed2
            x: 263
            y: 76
            width: 29/2
            visible:
                if(main1phase.visible===true){
                    if(chosenTextaaa.text==="A"){
                        true
                    }
                    else{
                        false
                    }
                }
                else{
                    false
                }
            source: "images/VectorRed.png"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }







        Image {
            id: vector6
            x: 0
            y: 73
            height: 641/2
            source: "images/Vector-6.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }


        Image {
            id: vector5
            x: 0
            y: 86
            height: 587/2
            source: "images/Vector-5.svg"
            antialiasing: true
            Text {
                id: systemRiskyText
                x: 5
                y: 84
                width: 100
                height: 61
                color: "#ffffff"
                text: qsTr("Nominal \nPower")
                font.letterSpacing: -2
                font.pixelSize: 24
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                font.family: "Akshar"
            }



            Text {
                id: systemRiskyText1
                x: 5
                y: 146
                width: 145
                height: 41
                color: "#ffffff"
                text:  (extractNumbers(chosenText31.text) * extractNumbers(chosenText33.text)).toFixed(2) + " W"
                font.letterSpacing: -2
                font.pixelSize: 22
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"

                function extractNumbers(text) {
                       var numberPattern = /\d+(\.\d+)?/g; // Dijital sayıları bulmak için düzenli ifade
                       var numbers = text.match(numberPattern); // Dijital sayıları dizi olarak al
                       return numbers.join(""); // Diziyi birleştirerek tek bir dize haline getir
                   }
            }
            fillMode: Image.PreserveAspectFit
        }


        Image {
            id: vector7
            x: 0
            y: 46
            height: 751/2
            source: "images/Vector-7.svg"
            antialiasing: true
            fillMode: Image.PreserveAspectFit
        }


        Image {
            id: main3phasewye
            x: 157
            y: 34
            width: 741/2
            visible: true
            source: "images/Main3phasewye.png"
            fillMode: Image.PreserveAspectFit
        }

        ArcItem {
            id: arc
            x: -222
            y: 13
            width: 440
            height: 440
            begin: 160
            strokeColor: "#c9d1d9"
            antialiasing: true
            end: 180
            strokeWidth: 20
            fillColor: "#00c9d1d9"
        }

        ArcItem {
            id: arc1
            x: -222
            y: 14
            width: 440
            height: 440
            end: 350
            antialiasing: true
            strokeWidth: 20
            fillColor: "#00c9d1d9"
            strokeColor: "#c9d1d9"
        }


        ArcItem {
            id: arc2
            x: -222
            y: 13
            width: 440
            height: 440
            begin: 20
            end: 58
            antialiasing: true
            strokeWidth: 20
            fillColor: "#00c9d1d9"
            strokeColor: "#ff5555"
        }

        ArcItem {
            id: arc3
            x: -222
            y: 13
            width: 440
            height: 440
            end: 88
            antialiasing: true
            strokeWidth: 20
            fillColor: "#00c9d1d9"
            strokeColor: "#fcae18"
            begin: 62
        }

        ArcItem {
            id: arc4
            x: -222
            y: 13
            width: 440
            height: 440
            end: 118
            antialiasing: true
            strokeWidth: 20
            fillColor: "#00c9d1d9"
            strokeColor: "#217efd"
            begin: 92
        }

        ArcItem {
            id: arc5
            x: -222
            y: 13
            width: 440
            height: 440
            end: 160
            antialiasing: true
            strokeWidth: 20
            fillColor: "#00c9d1d9"
            strokeColor: "#4ec040"
            begin: 122
        }

        ParallelAnimation{
            id: onePhaseAnim
            PropertyAnimation {
                target: arc2
                property: "begin"
                duration: 500
                to: 20
            }
            PropertyAnimation {
                target: arc2
                property: "end"
                duration: 500
                to: 88
            }
            PropertyAnimation {
                target: arc5
                property: "begin"
                duration: 500
                to: 92
            }
            PropertyAnimation {
                target: arc5
                property: "end"
                duration: 500
                to: 160
            }
        }

        ParallelAnimation{
            id: threePhaseDeltaAnim
            PropertyAnimation {
                target: arc2
                property: "begin"
                duration: 500
                to: 20
            }
            PropertyAnimation {
                target: arc2
                property: "end"
                duration: 500
                to: 70
            }
            PropertyAnimation {
                target: arc3
                property: "begin"
                duration: 500
                to: 74
            }
            PropertyAnimation {
                target: arc3
                property: "end"
                duration: 500
                to: 110
            }
            PropertyAnimation {
                target: arc4
                property: "begin"
                duration: 500
                to: 114
            }
            PropertyAnimation {
                target: arc4
                property: "end"
                duration: 500
                to: 160
            }
        }


        ParallelAnimation{
            id: threePhasewyeAnim
            PropertyAnimation {
                target: arc2
                property: "begin"
                duration: 500
                to: 20
            }
            PropertyAnimation {
                target: arc2
                property: "end"
                duration: 500
                to: 58
            }
            PropertyAnimation {
                target: arc3
                property: "begin"
                duration: 500
                to: 62
            }
            PropertyAnimation {
                target: arc3
                property: "end"
                duration: 500
                to: 88
            }
            PropertyAnimation {
                target: arc4
                property: "begin"
                duration: 500
                to: 92
            }
            PropertyAnimation {
                target: arc4
                property: "end"
                duration: 500
                to: 118
            }
            PropertyAnimation {
                target: arc5
                property: "begin"
                duration: 500
                to: 122
            }
            PropertyAnimation {
                target: arc5
                property: "end"
                duration: 500
                to: 160
            }
        }



        Image {
            id: main3phaseDelta
            x: 165
            y: 44
            width: 920/2
            visible: false
            source: "images/Main3phaseDelta.png"
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: main1phase
            x: 208
            y: 83
            width: 700/2
            visible: false
            source: "images/Main1phase.png"
            fillMode: Image.PreserveAspectFit
        }

        Rectangle {
            id: rectangle4
            x: 0
            y: 519
            width: 545
            height: 2
            color: "#d9d9d9"
        }
    }

    Rectangle {
        id: rectangle3
        x: 913
        y: 0
        width: 367
        height: 728
        color: "#ffffff"
    }

    Rectangle {
        id: rectangleForWifiRight
        x: 918
        y: 8
        width: 355
        height: 712
        visible: true
        color: "#f7f8fa"
        Text {
            id: text10
            x: 8
            y: 258
            width: 272
            height: 30
            color: "#284863"
            text: "Transient Impulse Monitor"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            font.styleName: "Bold"
            clip: true
        }
        Flickable {
            id: flickable11
            x: 4
            y: 282
            width: 351
            height: 292
            ScrollBar.vertical: ScrollBar {
                x: 355
                width: 10
                height: 650
                position: 0
                policy: ScrollBar.AlwaysOn
                size: flickable11.height / flickable11.contentHeight
                contentItem: Rectangle {
                    color: "#617284"
                    radius: 5
                    implicitHeight: parent.height / 2
                    implicitWidth: parent.width
                }
            }
            flickDeceleration: 3000
            contentY: 0
            clip: true
            maximumFlickVelocity: 5000
            contentHeight: 400




            Image {
                id: transientImpulseTable
                x: 3
                y: 6
                width: 671/2
                source: "images/TransientImpulseTable.svg"
                fillMode: Image.PreserveAspectFit

                Rectangle {
                    id: rectangle5
                    x: 1
                    y: 46
                    width: 29
                    height: 64
                    visible: false
                    color: "#217efd"
                }

                Rectangle {
                    id: rectangle6
                    x: 1
                    y: 114
                    width: 29
                    height: 96
                    visible: false
                    color: "#217efd"
                }

                Rectangle {
                    id: rectangle8
                    x: 31
                    y: 46
                    width: 64
                    height: 31
                    visible: false
                    color: "#217efd"
                }

                Rectangle {
                    id: rectangle10
                    x: 31
                    y: 78
                    width: 64
                    height: 32
                    visible: false
                    color: "#217efd"
                }

                Rectangle {
                    id: rectangle11
                    x: 31
                    y: 114
                    width: 64
                    height: 32
                    visible: false
                    color: "#217efd"
                }

                Rectangle {
                    id: rectangle12
                    x: 31
                    y: 147
                    width: 64
                    height: 32
                    visible: false
                    color: "#217efd"
                }

                Rectangle {
                    id: rectangle13
                    x: 31
                    y: 180
                    width: 64
                    height: 31
                    visible: false
                    color: "#217efd"
                }

                Rectangle {
                    id: rectangle17
                    x: 96
                    y: 114
                    width: 236
                    height: 32
                    visible: false
                    color: "#217efd"
                }

                Rectangle {
                    id: rectangle18
                    x: 96
                    y: 147
                    width: 236
                    height: 32
                    visible: false
                    color: "#217efd"
                }

                Rectangle {
                    id: rectangle19
                    x: 96
                    y: 180
                    width: 236
                    height: 31
                    visible: false
                    color: "#217efd"
                }

                Rectangle {
                    id: rectangle20
                    x: 96
                    y: 46
                    width: 160
                    height: 31
                    visible: false
                    color: "#217efd"
                }

                Rectangle {
                    id: rectangle21
                    x: 96
                    y: 78
                    width: 160
                    height: 32
                    visible: false
                    color: "#217efd"
                }
            }



            Text {
                id: text14
                x: 99
                y: 52
                width: 79
                height: 31
                color: "#284863"
                text: "1µs rise"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                layer.enabled: true
                clip: true
            }



            Text {
                id: text15
                x: 99
                y: 84
                width: 80
                height: 32
                color: "#284863"
                text: "0.1ms rise"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }


            Text {
                id: text16
                x: 99
                y: 120
                width: 79
                height: 32
                color: "#284863"
                text: "< 5kHz"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }


            Text {
                id: text17
                x: 99
                y: 153
                width: 79
                height: 32
                color: "#284863"
                text: "5-500 kHz"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }


            Text {
                id: text18
                x: 99
                y: 186
                width: 79
                height: 31
                color: "#284863"
                text: "0.5-5 MHz"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }



            Text {
                id: text20
                x: 179
                y: 52
                width: 80
                height: 31
                color: "#284863"
                text: "50ns-1ms"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }


            Text {
                id: text21
                x: 179
                y: 84
                width: 80
                height: 32
                color: "#284863"
                text: "> 1ms"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }


            Text {
                id: text22
                x: 179
                y: 120
                width: 80
                height: 32
                color: "#284863"
                text: "0.3-50ms"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }


            Text {
                id: text23
                x: 179
                y: 153
                width: 80
                height: 32
                color: "#284863"
                text: "20µs"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }


            Text {
                id: text24
                x: 179
                y: 186
                width: 80
                height: 30
                color: "#284863"
                text: "5µs"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }





            GroupItem {
                id:groupFTPServer
                x: 4
                y: 243
                visible: true


                Text {
                    id: text27
                    x: 0
                    y: 1
                    width: 190
                    height: 40
                    color: "#284863"
                    text: "Record Duration For Each Event"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }


                Text {
                    id: text28
                    x: 0
                    y: 49
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "Total Area Of Record"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }



                Text {
                    id: text30
                    x: 0
                    y: 83
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "Sample Frequency"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    id: text33
                    x: 140
                    y: 1
                    width: 190
                    height: 40
                    color: "#284863"
                    text: textForDuration.text + " " +textForDuration1.text
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }


                Text {
                    id: text34
                    x: 100
                    y: 49
                    width: 230
                    height: 30
                    color: "#284863"
                    text:
                        if(chosingHeaderGraph1.x===voltageHeader.x){
                           if(chosenTextaaa.text!=="None"){
                               textInput1.text*20000/10000  + " Mbyte"
                           }
                          else if(chosenTextaaa.text==="None"){
                               textInput1.text*1/10000  + " Mbyte"
                           }
                        }
                        else if(chosingHeaderGraph1.x===currentHeader.x){
                            if(chosenTextaaa.text!=="None" && chosenTextaaa1.text!=="None"){
                                textInput1.text*20000*2/10000  + " Mbyte"
                            }
                            else if(chosenTextaaa.text==="None" && chosenTextaaa1.text==="None"){
                                 textInput1.text*1/10000  + " Mbyte"
                            }
                            else if(chosenTextaaa.text==="None" || chosenTextaaa1.text==="None"){
                                 textInput1.text*20000/10000  + " Mbyte"
                            }
                        }
                        else if(chosingHeaderGraph1.x===activepowerHeader.x){
                            if(chosenTextaaa.text!=="None" && chosenTextaaa1.text!=="None" && chosenTextaaa2.text!=="None"){
                                textInput1.text*20000*3/10000  + " Mbyte"
                            }
                            else if(chosenTextaaa.text==="None" && chosenTextaaa1.text==="None" && chosenTextaaa1.text==="None"){
                                 textInput1.text*1/10000  + " Mbyte"
                            }
                            else if(chosenTextaaa.text==="None" || chosenTextaaa1.text==="None"){
                                 textInput1.text*20000*2/10000  + " Mbyte"
                            }
                            else if(chosenTextaaa.text==="None" || chosenTextaaa2.text==="None"){
                                 textInput1.text*20000*2/10000  + " Mbyte"
                            }
                            else if(chosenTextaaa1.text==="None" || chosenTextaaa2.text==="None"){
                                 textInput1.text*20000/10000  + " Mbyte"
                            }
                        }
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }



                Text {
                    id: text36
                    x: 138
                    y: 83
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "20 MHz"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }



                Text {
                    id: text44
                    x: 51
                    y: -28
                    width: 280
                    height: 25
                    color: "#284863"
                    text: "IEEE 1159-1995 Standarts"
                    font.pixelSize: 15
                    horizontalAlignment: Text.AlignRight
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }


            }


            Text {
                id: text26
                x: 259
                y: 120
                width: 78
                height: 32
                color: "#284863"
                text: "0-4pu"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }


            Text {
                id: text41
                x: 259
                y: 153
                width: 78
                height: 32
                color: "#284863"
                text: "0-8pu"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }


            Text {
                id: text42
                x: 259
                y: 186
                width: 78
                height: 30
                color: "#284863"
                text: "0-4pu"
                font.pixelSize: 15
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.NoWrap
                clip: true
            }

            Text {
                id: text19
                x: -16
                y: 74
                width: 68
                height: 22
                color: "#284863"
                text: "Impulse"
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "ubuntu,"
                font.styleName: "Light"
                rotation: 270
                clip: true
                layer.enabled: true
            }

            Text {
                id: text25
                x: -27
                y: 159
                width: 90
                height: 22
                color: "#284863"
                text: "Oscillatory"
                font.pixelSize: 16
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "ubuntu,"
                clip: false
                font.styleName: "Light"
                layer.enabled: true
                rotation: 270
            }


            Text {
                id: text31
                x: 34
                y: 52
                width: 64
                height: 31
                color: "#284863"
                text: "Millisec"
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "ubuntu"
                clip: true
                font.styleName: "Light"
                layer.enabled: true
                rotation: 0
            }


            Text {
                id: text32
                x: 34
                y: 84
                width: 64
                height: 31
                color: "#284863"
                text: "Microsec"
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "ubuntu"
                clip: true
                font.styleName: "Light"
                layer.enabled: true
                rotation: 0
            }


            Text {
                id: text37
                x: 34
                y: 121
                width: 64
                height: 31
                color: "#284863"
                text: "Low Freq"
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "ubuntu"
                clip: true
                font.styleName: "Light"
                layer.enabled: true
                rotation: 0
            }


            Text {
                id: text38
                x: 34
                y: 153
                width: 64
                height: 32
                color: "#284863"
                text: "Medium Freq"
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "ubuntu"
                clip: true
                font.styleName: "Light"
                layer.enabled: true
                rotation: 0
            }


            Text {
                id: text43
                x: 33
                y: 186
                width: 66
                height: 32
                color: "#284863"
                text: "High Freq"
                font.pixelSize: 14
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "ubuntu"
                clip: true
                font.styleName: "Light"
                layer.enabled: true
                rotation: 0
            }



        }

        Text {
            id: text7
            x: 8
            y: 13
            width: 190
            height: 30
            color: "#284863"
            text: "Connection Topology"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: text8
            x: 8
            y: 43
            width: 190
            height: 30
            color: "#284863"
            text: "Connections"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }


        Text {
            id: text9
            x: 8
            y: 73
            width: 190
            height: 30
            color: "#284863"
            text: "Nominal Voltage"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }


        Text {
            id: chosenText30
            x: 168
            y: 13
            width: 187
            height: 30
            color: "#284863"
            text: "3 phase wye"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText300
            x: 168
            y: 43
            width: 187
            height: 30
            color: "#284863"
            text: "AN - BN - CN"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText31
            x: 204
            y: 73
            width: 151
            height: 30
            color: "#284863"
            text: "380.00 V"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText32
            x: 188
            y: 103
            width: 167
            height: 30
            color: "#284863"
            text: "1"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: text11
            x: 8
            y: 103
            width: 190
            height: 30
            color: "#284863"
            text: "VT Ratio"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: text12
            x: 8
            y: 133
            width: 190
            height: 30
            color: "#284863"
            text: "Current Range"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: text13
            x: 8
            y: 163
            width: 190
            height: 30
            color: "#284863"
            text: "CT Ratio"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: text39
            x: 8
            y: 193
            width: 190
            height: 30
            color: "#284863"
            text: "Clamp Type"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: text40
            x: 8
            y: 223
            width: 190
            height: 30
            color: "#284863"
            text: "Frequency"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText33
            x: 168
            y: 133
            width: 187
            height: 30
            color: "#284863"
            text: "5 A"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText1132
            x: 168
            y: 163
            width: 187
            height: 30
            color: "#284863"
            text: "1"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText113233
            x: 204
            y: 193
            width: 151
            height: 30
            color: "#284863"
            text: "380.00 V"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: chosenText11323344
            x: 188
            y: 223
            width: 167
            height: 30
            color: "#284863"
            text: "400 Hz"
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignTop
            wrapMode: Text.Wrap
            clip: true
        }

    }


    PropertyAnimation {
        id: groupDotRotation
        target: groupDot
        loops: -1
        property: "rotation"
        duration: 500
        from:0
        to: 360
    }

    Image {
        id: groupDot
        x: 190
        y: 71
        width: 684/2
        source: "images/GroupDot.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: mainSettingsRightBottom
        x: 924
        y: 601
        width: 670/2
        source: "images/MainSettingsRightBottom.png"
        fillMode: Image.PreserveAspectFit
    }


    Item {
        id: __materialLibrary__
    }

    Image {
        id: menu
        x: 0
        y: 0
        width: 696/2
        source: "images/Menu.svg"
        fillMode: Image.PreserveAspectFit


        Rectangle {
            id: rectangleForUSB
            x: 12
            y: 94
            width: 323
            height: 634
            visible: false
            color: "#ffffff"

            Rectangle {
                id: rectangleForTransient
                x: -7
                y: 68
                width: 338
                height: 555
                enabled: false
                color: "#f7f8fa"
                layer.enabled: true
                layer.effect: ColorOverlayEffect {
                    id: colorOverlay
                    color: colorOverlayColor
                }



                Rectangle {
                    x: 169
                    y: 413
                    width: 160
                    height: 40
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                }


                Text {
                    x: 10
                    y: 359
                    width: 160
                    height: 50
                    color: "#284863"
                    text: "Record Memory Area"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    x: 10
                    y: 414
                    width: 190
                    height: 38
                    color: "#284863"
                    text: "Event Number"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }

                Text {
                    x: 10
                    y: 463
                    width: 160
                    height: 38
                    color: "#284863"
                    text: "Threshold Value Info"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }

                TextInput {
                    id: textInput1
                    x: 174
                    y: 413
                    width: 160
                    height: 40
                    maximumLength: 4
                    color: "#284863"
                    text: qsTr("9999")
                    font.letterSpacing: -2
                    font.styleName: "SemiBold"
                    font.family: "Akshar"
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    validator: IntValidator {
                        bottom: 0
                        top: 9999
                    }
                    onTextChanged: {
                        controlValue1()
                    }
                    function controlValue1(){
                        if (parseInt(textInput1.text) > 9999) {
                            textInput1.text = "9999"
                        }
                    }
                }


                Rectangle {
                    x: 169
                    y: 462
                    width: 110
                    height: 40
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                }

                TextInput {
                    id: textInput2
                    x: 174
                    y: 462
                    width: 110
                    height: 40
                    color: "#284863"
                    text: qsTr("6")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    validator: IntValidator {
                        top: 6000
                        bottom: 0
                    }
                    //                onTextChanged: {
                    //                    controlValue1()
                    //                }
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                    maximumLength: 4
                }

                Rectangle {
                    id: rectangle66
                    x: 281
                    y: 462
                    width: 48
                    height: 40
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id:okUp66
                        x: 30
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        fillMode: Image.PreserveAspectFit
                        rotation: 180
                    }

                    Text {
                        id:chosenText66
                        width: 22
                        height: 40
                        visible: false
                        color: "#284863"
                        text: "kV"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        font.family: "Akshar"
                        anchors.leftMargin: 5
                        anchors.verticalCenterOffset: 0
                    }

                    MouseArea {
                        anchors.fill: parent
                        anchors.leftMargin: -5
                        anchors.rightMargin: -1
                        onClicked: {

                            if(okUp66.rotation===0)
                            {
                                okUp66.rotation=180
                                backgroundList66.visible=false
                                listView66.visible=false
                                elementText66.visible=false
                                chosenText66.visible=true
                            }
                            else
                            {
                                okUp66.rotation=0
                                backgroundList66.visible=true
                                listView66.visible=true
                                elementText66.visible=false
                                chosenText66.visible=true
                            }
                        }
                        anchors.bottomMargin: -5
                        anchors.topMargin: -5
                    }

                    Text {
                        id:elementText66
                        x: 4
                        y: 1
                        width: 44
                        height: 40
                        color: "#284863"
                        text: "kV"
                        font.pixelSize: 17

                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                    }
                }

                Rectangle {
                    id: rectangle124
                    x: 169
                    y: 364
                    width: 160
                    height: 40
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id: okUp01
                        x: 139
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        fillMode: Image.PreserveAspectFit
                        rotation: 0
                    }

                    Text {
                        id: chosenText01
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        anchors.fill: parent
                        onClicked: {

                            if(okUp01.rotation===180)
                            {
                                okUp01.rotation=0
                                backgroundList24.visible=false
                                listView24.visible=false
                                elementText01.visible=false
                            }
                            else
                            {
                                okUp01.rotation=180
                                backgroundList24.visible=true
                                listView24.visible=true
                                elementText01.visible=false
                            }
                        }
                        anchors.topMargin: -5
                        anchors.rightMargin: -1
                        anchors.leftMargin: -5
                        anchors.bottomMargin: -5
                    }

                    Text {
                        id: elementText01
                        x: 5
                        y: 0
                        width: 126
                        height: 40
                        color: "#d4d4d4"
                        text: qsTr("SD Card")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }

                    Rectangle {
                        id: backgroundList24
                        x: 1
                        y: 41
                        width: rectangle124.width
                        height: 175
                        visible: false
                    }

                    ListView {
                        id: listView24
                        x: 0
                        y: 41
                        width: rectangle124.width
                        height: backgroundList24.height
                        visible: false
                        clip: true
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
                                        chosenText01.text = model.name
                                    }
                                }
                            }
                        }
                        model: ListModel {
                            ListElement {
                                name: "SD Card"
                            }
                            ListElement {
                                name: "USB"
                            }
                            ListElement {
                                name: "Internal Memory"
                            }

                        }
                    }
                }















                Rectangle {
                    id: backgroundList66
                    x: 282
                    y: 362
                    width: rectangle66.width
                    height: 100
                    visible: false
                }




                ListView {
                    id: listView66
                    x: 281
                    y: 362
                    width: rectangle66.width
                    height: backgroundList66.height
                    visible: false
                    clip: true
                    model: ListModel {
                        ListElement {
                            name: "kV"
                        }

                        ListElement {
                            name: "V"
                        }
                    }
                    delegate: Item {
                        width: listView66.width
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
                                    chosenText66.text = model.name
                                    elementText66.text = model.name
                                }
                            }
                        }
                    }
                }






                Rectangle {
                    id: rectangle91
                    x: 7
                    y: 277
                    width: 323
                    height: 70
                    color: "#ffffff"
                    border.color: "#adb1b4"

                    Text {
                        id: text441
                        x: 8
                        y: 1
                        width: 86
                        height: 69
                        color: "#284863"
                        text: "Record Channel"
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        clip: true
                    }

                    Rectangle {
                        id: rectangleaaa
                        x: 95
                        y: 16
                        width: 70
                        height: 40
                        border.color: "#d9d9d9"
                        border.width: 1
                        color: "#ffffff"

                        Image {
                            id: okUpaaa
                            x: 50
                            y: 16
                            width: 14
                            height: 7.925
                            source: "images/okUp22.svg"
                            rotation: 0
                            fillMode: Image.PreserveAspectFit
                        }

                        Text {
                            id: chosenTextaaa
                            width: 60
                            height: 20
                            color: "#284863"
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            font.pixelSize: 17
                            horizontalAlignment: Text.AlignLeft
                            anchors.leftMargin: 5
                            text: qsTr("A")
                        }

                        MouseArea {
                            anchors.fill: parent
                            anchors.rightMargin: -1
                            anchors.leftMargin: -5
                            anchors.bottomMargin: -5
                            anchors.topMargin: -5
                            onClicked: {
                                if(okUpaaa.rotation===180)
                                {
                                    okUpaaa.rotation=0
                                    backgroundListaaa.visible=false
                                    listViewaaa.visible=false
                                }
                                else
                                {
                                    okUpaaa.rotation=180
                                    backgroundListaaa.visible=true
                                    listViewaaa.visible=true
                                }
                            }
                        }

                        Rectangle {
                            id: backgroundListaaa
                            x: 1
                            y: 41
                            width: rectangleaaa.width
                            height: 175
                            visible: false
                        }

                        ListView {
                            id: listViewaaa
                            x: 0
                            y: 41
                            width: rectangleaaa.width
                            height: backgroundListaaa.height
                            visible: false
                            clip: true
                            delegate: Item {
                                width: listView22.width
                                height: 60
                                Rectangle {
                                    id: rectangle22
                                    width: parent.width
                                    height: 50
                                    color: "#eff2f6"
                                    Text {
                                        x: 10
                                        text: model.name
                                        anchors.verticalCenter: parent.verticalCenter
                                        horizontalAlignment: Text.AlignHCenter
                                        verticalAlignment: Text.AlignVCenter
                                     }

                                    MouseArea {
                                        anchors.fill: parent
                                        onClicked: {
                                            chosenTextaaa.text = model.name
                                            if(main3phasewye.visible===true){
                                                if(chosenTextaaa.text==="A"){
                                                    vectorRed.visible=true
                                                }
                                                else {
                                                vectorRed.visible=false
                                                }

                                                if(chosenTextaaa1.text==="B"){
                                                    vectorYellow.visible=true
                                                }
                                                else {
                                                vectorYellow.visible=false
                                                }

                                                if(chosenTextaaa2.text==="C"){
                                                    vectorBlue.visible=true
                                                }
                                                else {
                                                vectorBlue.visible=false
                                                }
                                                if(chosenTextaaa.text==="None"){
                                                    vectorRed.visible=false
                                                }
                                                if(chosenTextaaa1.text==="None"){
                                                    vectorYellow.visible=false
                                                }
                                                if(chosenTextaaa2.text==="None"){
                                                    vectorBlue.visible=false
                                                }
                                            }
                                            else {
                                                vectorRed.visible=false
                                                vectorYellow.visible=false
                                                vectorBlue.visible=false
                                            }

                                            if(main3phaseDelta.visible===true){
                                                if(chosenTextaaa.text==="A"){
                                                    vectorRed1.visible=true
                                                }
                                                else {
                                                vectorRed1.visible=false
                                                }

                                                if(chosenTextaaa1.text==="B"){
                                                    vectorYellow1.visible=true
                                                }
                                                else {
                                                vectorYellow1.visible=false
                                                }



                                                if(chosenTextaaa2.text==="C"){
                                                    vectorBlue1.visible=true
                                                }
                                                else {
                                                vectorBlue1.visible=false
                                                }
                                                if(chosenTextaaa.text==="None"){
                                                    vectorRed1.visible=false
                                                }
                                                if(chosenTextaaa1.text==="None"){
                                                    vectorYellow1.visible=false
                                                }
                                                if(chosenTextaaa2.text==="None"){
                                                    vectorBlue1.visible=false
                                                }
                                            }
                                            else {
                                                vectorRed1.visible=false
                                                vectorYellow1.visible=false
                                                vectorBlue1.visible=false
                                            }


                                            if(main1phase.visible===true){
                                                if(chosenTextaaa.text==="A"){
                                                    vectorRed2.visible=true
                                                }
                                                else {
                                                vectorRed2.visible=false
                                                }
                                                if(chosenTextaaa.text==="None"){
                                                    vectorRed2.visible=false
                                                }
                                            }
                                            else {
                                                vectorRed2.visible=false
                                            }

                                        }
                                    }
                                }
                            }
                            model: ListModel {
                                ListElement {
                                    name: "A"
                                }

                                ListElement {
                                    name: "B"
                                }

                                ListElement {
                                    name: "C"
                                }
                                ListElement {
                                    name: "None"
                                }
                            }
                        }


                    }



                    Rectangle {
                        id: rectangleaaa1
                        x: 171
                        y: 16
                        width: 70
                        height: 40
                        visible: false
                        border.color: "#d9d9d9"
                        border.width: 1
                        color: "#ffffff"

                        Image {
                            id: okUpaaa1
                            x: 50
                            y: 16
                            width: 14
                            height: 7.925
                            source: "images/okUp22.svg"
                            rotation: 0
                            fillMode: Image.PreserveAspectFit
                        }

                        Text {
                            id: chosenTextaaa1
                            width: 60
                            height: 20
                            color: "#284863"
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            font.pixelSize: 17
                            horizontalAlignment: Text.AlignLeft
                            anchors.leftMargin: 5
                            text: qsTr("None")
                        }

                        MouseArea {
                            anchors.fill: parent
                            anchors.rightMargin: -1
                            anchors.leftMargin: -5
                            anchors.bottomMargin: -5
                            anchors.topMargin: -5
                            onClicked: {
                                if(okUpaaa1.rotation===180)
                                {
                                    okUpaaa1.rotation=0
                                    backgroundListaaa1.visible=false
                                    listViewaaa1.visible=false
                                }
                                else
                                {
                                    okUpaaa1.rotation=180
                                    backgroundListaaa1.visible=true
                                    listViewaaa1.visible=true
                                }
                            }
                        }

                        Rectangle {
                            id: backgroundListaaa1
                            x: 1
                            y: 41
                            width: rectangleaaa1.width
                            height: 175
                            visible: false
                        }

                        ListView {
                            id: listViewaaa1
                            x: 0
                            y: 41
                            width: rectangleaaa1.width
                            height: backgroundListaaa1.height
                            visible: false
                            clip: true
                            delegate: Item {
                                width: listViewaaa1.width
                                height: 60
                                Rectangle {
                                    id: rectangle221
                                    width: parent.width
                                    height: 50
                                    color: "#eff2f6"
                                    Text {
                                        x: 10
                                        text: model.name
                                        anchors.verticalCenter: parent.verticalCenter
                                        horizontalAlignment: Text.AlignHCenter
                                        verticalAlignment: Text.AlignVCenter
                                        //                                        anchors.centerIn: parent
                                    }

                                    MouseArea {
                                        anchors.fill: parent
                                        onClicked: {
                                            chosenTextaaa1.text = model.name
                                            if(main3phasewye.visible===true){
                                                if(chosenTextaaa.text==="A"){
                                                    vectorRed.visible=true
                                                }
                                                else {
                                                vectorRed.visible=false
                                                }

                                                if(chosenTextaaa1.text==="B"){
                                                    vectorYellow.visible=true
                                                }
                                                else {
                                                vectorYellow.visible=false
                                                }

                                                if(chosenTextaaa2.text==="C"){
                                                    vectorBlue.visible=true
                                                }
                                                else {
                                                vectorBlue.visible=false
                                                }
                                                if(chosenTextaaa.text==="None"){
                                                    vectorRed.visible=false
                                                }
                                                if(chosenTextaaa1.text==="None"){
                                                    vectorYellow.visible=false
                                                }
                                                if(chosenTextaaa2.text==="None"){
                                                    vectorBlue.visible=false
                                                }
                                            }
                                            else {
                                                vectorRed.visible=false
                                                vectorYellow.visible=false
                                                vectorBlue.visible=false
                                            }

                                            if(main3phaseDelta.visible===true){
                                                if(chosenTextaaa.text==="A"){
                                                    vectorRed1.visible=true
                                                }
                                                else {
                                                vectorRed1.visible=false
                                                }

                                                if(chosenTextaaa1.text==="B"){
                                                    vectorYellow1.visible=true
                                                }
                                                else {
                                                vectorYellow1.visible=false
                                                }

                                                if(chosenTextaaa2.text==="C"){
                                                    vectorBlue1.visible=true
                                                }
                                                else {
                                                vectorBlue1.visible=false
                                                }
                                                if(chosenTextaaa.text==="None"){
                                                    vectorRed1.visible=false
                                                }
                                                if(chosenTextaaa1.text==="None"){
                                                    vectorYellow1.visible=false
                                                }
                                                if(chosenTextaaa2.text==="None"){
                                                    vectorBlue1.visible=false
                                                }
                                            }
                                            else {
                                                vectorRed1.visible=false
                                                vectorYellow1.visible=false
                                                vectorBlue1.visible=false
                                            }


                                            if(main1phase.visible===true){
                                                if(chosenTextaaa.text==="A"){
                                                    vectorRed2.visible=true
                                                }
                                                else {
                                                vectorRed2.visible=false
                                                }
                                                if(chosenTextaaa.text==="None"){
                                                    vectorRed2.visible=false
                                                }
                                            }
                                            else {
                                                vectorRed2.visible=false
                                            }

                                        }
                                    }
                                }
                            }
                            model: ListModel {
                                ListElement {
                                    name: "A"
                                }

                                ListElement {
                                    name: "B"
                                }

                                ListElement {
                                    name: "C"
                                }
                                ListElement {
                                    name: "None"
                                }
                            }
                        }


                    }



                    Rectangle {
                        id: rectangleaaa2
                        x: 247
                        y: 16
                        width: 70
                        height: 40
                        visible: false
                        border.color: "#d9d9d9"
                        border.width: 1
                        color: "#ffffff"

                        Image {
                            id: okUpaaa2
                            x: 50
                            y: 16
                            width: 14
                            height: 7.925
                            source: "images/okUp22.svg"
                            rotation: 0
                            fillMode: Image.PreserveAspectFit
                        }

                        Text {
                            id: chosenTextaaa2
                            width: 60
                            height: 20
                            color: "#284863"
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            font.pixelSize: 17
                            horizontalAlignment: Text.AlignLeft
                            anchors.leftMargin: 5
                            text: qsTr("None")
                        }

                        MouseArea {
                            anchors.fill: parent
                            anchors.rightMargin: -1
                            anchors.leftMargin: -5
                            anchors.bottomMargin: -5
                            anchors.topMargin: -5
                            onClicked: {
                                if(okUpaaa2.rotation===180)
                                {
                                    okUpaaa2.rotation=0
                                    backgroundListaaa2.visible=false
                                    listViewaaa2.visible=false
                                }
                                else
                                {
                                    okUpaaa2.rotation=180
                                    backgroundListaaa2.visible=true
                                    listViewaaa2.visible=true
                                }
                            }
                        }

                        Rectangle {
                            id: backgroundListaaa2
                            x: 1
                            y: 41
                            width: rectangleaaa2.width
                            height: 175
                            visible: false
                        }

                        ListView {
                            id: listViewaaa2
                            x: 0
                            y: 41
                            width: rectangleaaa2.width
                            height: backgroundListaaa2.height
                            visible: false
                            clip: true
                            delegate: Item {
                                width: listViewaaa2.width
                                height: 60
                                Rectangle {
                                    id: rectangle2222
                                    width: parent.width
                                    height: 50
                                    color: "#eff2f6"
                                    Text {
                                        x: 10
                                        text: model.name
                                        anchors.verticalCenter: parent.verticalCenter
                                        horizontalAlignment: Text.AlignHCenter
                                        verticalAlignment: Text.AlignVCenter
                                        //                                        anchors.centerIn: parent
                                    }

                                    MouseArea {
                                        anchors.fill: parent
                                        onClicked: {
                                            chosenTextaaa2.text = model.name
                                            if(main3phasewye.visible===true){
                                                if(chosenTextaaa.text==="A"){
                                                    vectorRed.visible=true
                                                }
                                                else {
                                                vectorRed.visible=false
                                                }

                                                if(chosenTextaaa1.text==="B"){
                                                    vectorYellow.visible=true
                                                }
                                                else {
                                                vectorYellow.visible=false
                                                }

                                                if(chosenTextaaa2.text==="C"){
                                                    vectorBlue.visible=true
                                                }
                                                else {
                                                vectorBlue.visible=false
                                                }
                                                if(chosenTextaaa.text==="None"){
                                                    vectorRed.visible=false
                                                }
                                                if(chosenTextaaa1.text==="None"){
                                                    vectorYellow.visible=false
                                                }
                                                if(chosenTextaaa2.text==="None"){
                                                    vectorBlue.visible=false
                                                }
                                            }
                                            else {
                                                vectorRed.visible=false
                                                vectorYellow.visible=false
                                                vectorBlue.visible=false
                                            }

                                            if(main3phaseDelta.visible===true){
                                                if(chosenTextaaa.text==="A"){
                                                    vectorRed1.visible=true
                                                }
                                                else {
                                                vectorRed1.visible=false
                                                }

                                                if(chosenTextaaa1.text==="B"){
                                                    vectorYellow1.visible=true
                                                }
                                                else {
                                                vectorYellow1.visible=false
                                                }

                                                if(chosenTextaaa2.text==="C"){
                                                    vectorBlue1.visible=true
                                                }
                                                else {
                                                vectorBlue1.visible=false
                                                }
                                                if(chosenTextaaa.text==="None"){
                                                    vectorRed1.visible=false
                                                }
                                                if(chosenTextaaa1.text==="None"){
                                                    vectorYellow1.visible=false
                                                }
                                                if(chosenTextaaa2.text==="None"){
                                                    vectorBlue1.visible=false
                                                }
                                            }
                                            else {
                                                vectorRed1.visible=false
                                                vectorYellow1.visible=false
                                                vectorBlue1.visible=false
                                            }


                                            if(main1phase.visible===true){
                                                if(chosenTextaaa.text==="A"){
                                                    vectorRed2.visible=true
                                                }
                                                else {
                                                vectorRed2.visible=false
                                                }
                                                if(chosenTextaaa.text==="None"){
                                                    vectorRed2.visible=false
                                                }
                                            }
                                            else {
                                                vectorRed2.visible=false
                                            }

                                        }
                                    }
                                }
                            }
                            model: ListModel {
                                ListElement {
                                    name: "A"
                                }

                                ListElement {
                                    name: "B"
                                }

                                ListElement {
                                    name: "C"
                                }
                                ListElement {
                                    name: "None"
                                }
                            }
                        }


                    }

                }

                Text {
                    x: 10
                    y: 17
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "Characteristic"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }




                Text {
                    x: 10
                    y: 61
                    width: 190
                    height: 30
                    color: "#284863"
                    text: "Chategory"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.Wrap
                    clip: true
                }





                ParallelAnimation{
                    id: clickedActivePowerGraph1

                    PropertyAnimation {
                        target: chosingHeaderGraph1
                        property: "x"
                        duration: 200
                        to: activepowerHeader.x
                    }

                    PropertyAnimation {
                        target: chosingHeaderGraph1
                        property: "width"
                        duration: 200
                        to: activepowerHeader.width
                    }
                    PropertyAnimation {
                        target: activepowerHeader
                        property: "color"
                        duration: 200
                        to: "#284863"
                    }
                }


                MouseArea {
                    id: mouseAreaGraph3
                    x: 222
                    y: 233
                    width: 107
                    height: 53
                    onClicked: {
                        voltageHeader.color="#A7AEB6"
                        currentHeader.color="#A7AEB6"
                        //                    reactivepowerHeader.color="#A7AEB6"
                        clickedActivePowerGraph1.start()
                        rectangleaaa.visible=true
                        rectangleaaa1.visible=true
                        rectangleaaa2.visible=true
                        text36.text="5 MHz"

                        if(main3phasewye.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed.visible=true
                            }
                            else {
                            vectorRed.visible=false
                            }

                            if(chosenTextaaa1.text==="B"){
                                vectorYellow.visible=true
                            }
                            else {
                            vectorYellow.visible=false
                            }

                            if(chosenTextaaa2.text==="C"){
                                vectorBlue.visible=true
                            }
                            else {
                            vectorBlue.visible=false
                            }
                            if(chosenTextaaa.text==="None"){
                                vectorRed.visible=false
                            }
                            if(chosenTextaaa1.text==="None"){
                                vectorYellow.visible=false
                            }
                            if(chosenTextaaa2.text==="None"){
                                vectorBlue.visible=false
                            }
                        }
                        else {
                            vectorRed.visible=false
                            vectorYellow.visible=false
                            vectorBlue.visible=false
                        }

                        if(main3phaseDelta.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed1.visible=true
                            }
                            else {
                            vectorRed1.visible=false
                            }

                            if(chosenTextaaa1.text==="B"){
                                vectorYellow1.visible=true
                            }
                            else {
                            vectorYellow1.visible=false
                            }

                            if(chosenTextaaa2.text==="C"){
                                vectorBlue1.visible=true
                            }
                            else {
                            vectorBlue1.visible=false
                            }
                            if(chosenTextaaa.text==="None"){
                                vectorRed1.visible=false
                            }
                            if(chosenTextaaa1.text==="None"){
                                vectorYellow1.visible=false
                            }
                            if(chosenTextaaa2.text==="None"){
                                vectorBlue1.visible=false
                            }
                        }
                        else {
                            vectorRed1.visible=false
                            vectorYellow1.visible=false
                            vectorBlue1.visible=false
                        }


                        if(main1phase.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed2.visible=true
                            }
                            else {
                            vectorRed2.visible=false
                            }
                            if(chosenTextaaa.text==="None"){
                                vectorRed2.visible=false
                            }
                        }
                        else {
                            vectorRed2.visible=false
                        }
                    }
                }


                Item {
                    id: chosingHeaderGraph1
                    x: 7
                    y: 225
                    width: 107

                    height: 53
                    clip: true
                    Rectangle {
                        border.color: "#adb1b4"
                        border.width: 1
                        anchors.fill: parent
                        anchors.rightMargin: 0
                        anchors.bottomMargin: -border.width
                        anchors.topMargin: 6
                    }
                }

                Text {
                    id: voltageHeader
                    x: 7
                    y: 234
                    width: 107
                    height: 50
                    color: "#284863"
                    text: qsTr("20 MHz")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

                Text {
                    id: activepowerHeader
                    x: 222
                    y: 234
                    width: 108
                    height: 50
                    color: "#a7aeb6"
                    text: qsTr("5 MHz")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

                Text {
                    id: currentHeader
                    x: 115
                    y: 234
                    width: 107
                    height: 50
                    color: "#a7aeb6"
                    text: qsTr("10 MHz")
                    font.letterSpacing: -2
                    font.pixelSize: 19
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }

                ParallelAnimation{
                    id: clickedVoltageGraph1
                    PropertyAnimation {
                        target: chosingHeaderGraph1
                        property: "x"
                        duration: 200
                        to: voltageHeader.x
                    }
                    PropertyAnimation {
                        target: chosingHeaderGraph1
                        property: "width"
                        duration: 200
                        to: voltageHeader.width
                    }
                    PropertyAnimation {
                        target: voltageHeader
                        property: "color"
                        duration: 200
                        to: "#284863"
                    }

                }

                ParallelAnimation{
                    id: clickedCurrentGraph1
                    PropertyAnimation {
                        target: chosingHeaderGraph1
                        property: "x"
                        duration: 200
                        to: currentHeader.x
                    }
                    PropertyAnimation {
                        target: chosingHeaderGraph1
                        property: "width"
                        duration: 200
                        to: currentHeader.width
                    }
                    PropertyAnimation {
                        target: currentHeader
                        property: "color"
                        duration: 200
                        to: "#284863"
                    }
                }

                MouseArea {
                    id: mouseAreaGraph1
                    x: 7
                    y: 233
                    width: 107
                    height: 53
                    onClicked: {
                        currentHeader.color="#A7AEB6"
                        activepowerHeader.color="#A7AEB6"
                        //                    reactivepowerHeader.color="#A7AEB6"
                        clickedVoltageGraph1.start()
                        rectangleaaa.visible=true
                        rectangleaaa1.visible=false
                        rectangleaaa2.visible=false

                        vectorYellow.visible=false
                        vectorBlue.visible=false
                        vectorYellow1.visible=false
                        vectorBlue1.visible=false
                        text36.text="20 MHz"

                        if(main3phasewye.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed.visible=true
                            }
                        }
                        else {
                            vectorRed.visible=false
                        }

                        if(main3phaseDelta.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed1.visible=true
                            }
                        }
                        else {
                            vectorRed1.visible=false
                        }

                        if(main1phase.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed2.visible=true
                            }
                        }
                        else {
                            vectorRed2.visible=false
                        }
                    }

                }

                MouseArea {
                    id: mouseAreaGraph2
                    x: 115
                    y: 233
                    width: 107
                    height: 53
                    onClicked: {
                        voltageHeader.color="#A7AEB6"
                        activepowerHeader.color="#A7AEB6"
                        //                    reactivepowerHeader.color="#A7AEB6"
                        clickedCurrentGraph1.start()
                        rectangleaaa.visible=true
                        rectangleaaa1.visible=true
                        rectangleaaa2.visible=false

                        vectorBlue.visible=false
                        vectorBlue1.visible=false
                        text36.text="10 MHz"

                        if(main3phasewye.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed.visible=true
                            }
                            else {
                            vectorRed.visible=false
                            }

                            if(chosenTextaaa1.text==="B"){
                                vectorYellow.visible=true
                            }
                            else {
                            vectorYellow.visible=false
                            }
                        }


                        if(main3phaseDelta.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed1.visible=true
                            }
                            else {
                            vectorRed1.visible=false
                            }

                            if(chosenTextaaa1.text==="B"){
                                vectorYellow1.visible=true
                            }
                            else {
                            vectorYellow1.visible=false
                            }
                        }

                        if(main1phase.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed2.visible=true
                            }
                            else {
                            vectorRed2.visible=false
                            }
                            if(chosenTextaaa.text==="None"){
                                vectorRed2.visible=false
                            }
                        }
                        else {
                            vectorRed2.visible=false
                        }



                    }
                }


                Rectangle {
                    id: rectangle16
                    x: 7
                    y: 101
                    width: 323
                    height: 125
                    color: "#f7f8fa"
                    border.color: "#afadb1b4"

                    SpinBox {
                        id: spinBoxForDuration
                        x: 0
                        y: 60
                        width: 322
                        height: 40
                        enabled: true
                        stepSize: 1
                        font.pointSize: 1
                        value: 1000
                        to: 1000
                        from: 200

                        textFromValue: function(value) {
                            return (value / 100).toFixed(2); // Değeri 100'e bölüp, iki ondalık basamakla göster
                        }

                        // Değeri gerçek değere dönüştüren bir işlev tanımlayın
                        valueFromText: function(text) {
                            return parseFloat(text) * 100; // Text'i ondalık değere dönüştürüp, 100 ile çarp
                        }
                        onValueChanged: {
                            customSliderForDuration.handleRect.x=100+0.255 * spinBoxForDuration.value - width / 2
                            textForDuration.x=150+0.255 * spinBoxForDuration.value - width / 2
                            textForDuration.text=(spinBoxForDuration.value / 10).toFixed(2)
                            //                                + " ms"

                        }
                    }




                    CustomSliderForDuration{
                        id:customSliderForDuration
                        x: 42
                        y: 63
                        onClickedSignal: {
                            spinBoxForDuration.value=customSliderForDuration.slider.value
                            textForDuration.text=(spinBoxForDuration.value / 10).toFixed(2)
                        }
                    }

                    Image {
                        id: increase2
                        x: 283
                        y: 44
                        width: 77/2
                        source: "images/increase.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: decrease2
                        x: 1
                        y: 43
                        width: 76/2
                        source: "images/decrease.svg"
                        fillMode: Image.PreserveAspectFit
                    }


                    Text {
                        id: textForDuration
                        x: 237
                        y: 103
                        width: 50
                        visible: true
                        text: (spinBoxForDuration.value / 10).toFixed(2)
                        //                          + " ms"
                    }

                    Text {
                        id: textForDuration1
                        y: 103
                        width: 50
                        visible: true
                        anchors.left: textForDuration.right
                        anchors.leftMargin: 0
                        text:  "ms"

                    }


                    Rectangle {
                        x: 162
                        y: 5
                        width: 110
                        height: 40
                        color: "#ffffff"
                        border.color: "#d9d9d9"
                        border.width: 1
                    }



                    TextInput {
                        id: textInput
                        x: 167
                        y: 5
                        width: 105
                        height: 40
                        text: qsTr("100")
                        font.pixelSize: 17
                        color: "#284863"
                        font.letterSpacing: -2
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        maximumLength: 3
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                        validator: IntValidator {
                            bottom: 0
                            top: 100
                        }
                        onTextChanged: {
                            // Kontrol için bir fonksiyon çağrısı
                            controlValue()
                            customSliderForDuration.handleRect.x= 40+2.1*textInput.text - width / 2
                            textForDuration.x=60+2.1*textInput.text - width / 2

                            textForDuration.text=(textInput.text)
                            //                      + " ms"
                        }
                        function controlValue() {
                            if (parseInt(textInput.text) > 100) {
                                textInput.text = "100"
                            }
                        }
                    }


                    Text {
                        x: 3
                        y: 10
                        width: 150
                        height: 30
                        color: "#284863"
                        text: "Duration"
                        font.pixelSize: 18
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        clip: true
                    }



                    Rectangle {
                        id: rectangle127
                        x: 273
                        y: 5
                        width: 48
                        height: 40
                        color: "#ffffff"
                        border.color: "#d9d9d9"
                        border.width: 1
                        Image {
                            id:okupp
                            x: 30
                            y: 16
                            width: 14
                            source: "images/okUp22.svg"
                            fillMode: Image.PreserveAspectFit
                            rotation: 0
                        }

                        Text {
                            id:chosenTextt
                            width: 22
                            height: 40
                            visible: false
                            color: "#284863"
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            font.pixelSize: 17
                            verticalAlignment: Text.AlignVCenter
                            anchors.verticalCenterOffset: 0
                            text: "ms"
                            anchors.leftMargin: 5
                        }

                        MouseArea {
                            anchors.fill: parent
                            anchors.leftMargin: -5
                            anchors.rightMargin: -1
                            onClicked: {

                                if(okupp.rotation===180)
                                {
                                    okupp.rotation=0
                                    backgroundList27.visible=false
                                    listView27.visible=false
                                    elementTextt.visible=false
                                    chosenTextt.visible=true
                                }
                                else
                                {
                                    okupp.rotation=180
                                    backgroundList27.visible=true
                                    listView27.visible=true
                                    elementTextt.visible=false
                                    chosenTextt.visible=true
                                }
                            }
                            anchors.bottomMargin: -5
                            anchors.topMargin: -5
                        }

                        Text {
                            id: elementTextt
                            x: 4
                            y: 1
                            width: 44
                            height: 40
                            color: "#284863"
                            text:"ms"
                            font.pixelSize: 17
                            horizontalAlignment: Text.AlignLeft
                            verticalAlignment: Text.AlignVCenter
                            wrapMode: Text.Wrap
                            font.family: "Akshar"
                            font.styleName: "SemiBold"
                        }
                    }

                    Rectangle {
                        id: backgroundList27
                        x: 274
                        y: 46
                        width: rectangle127.width
                        height: 125
                        visible: false
                    }

                    ListView {
                        id: listView27
                        x: 273
                        y: 46
                        width: rectangle127.width
                        height: backgroundList27.height
                        visible: false
                        clip: true
                        model: ListModel {
                            ListElement {
                                name: "ms"
                            }

                            ListElement {
                                name: "µs"
                            }
                        }
                        delegate: Item {
                            width: listView27.width
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
                                        chosenTextt.text = model.name
                                        elementTextt.text = model.name

                                        textForDuration1.text=model.name
                                        //                                                chosenText24.text = model.name
                                    }
                                }
                            }
                        }
                    }

                }

                Rectangle {
                    id: group77
                    x: -235
                    y: 5
                    width: 222
                    height: 55

                    Rectangle {
                        id: rectangle77
                        x: 404
                        y: 48
                        visible: false
                        width: 161
                        height: 40
                        color: "#ffffff"
                        border.color: "#d9d9d9"
                        border.width: 1
                        Image {
                            id: okUp77
                            x: 139
                            y: 16
                            width: 14
                            source: "images/okUp22.svg"
                            fillMode: Image.PreserveAspectFit
                            rotation: 0
                        }

                        Text {
                            id: chosenText77
                            color: "#284863"
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            text: qsTr("Low Freq.")
                            font.pixelSize: 17
                            anchors.leftMargin: 5
                        }

                        MouseArea {
                            anchors.fill: parent
                            anchors.leftMargin: -5
                            anchors.rightMargin: -1
                            onClicked: {

                                if(okUp77.rotation===180)
                                {
                                    okUp77.rotation=0
                                    backgroundList77.visible=false
                                    listView77.visible=false
                                }
                                else
                                {
                                    okUp77.rotation=180
                                    backgroundList77.visible=true
                                    listView77.visible=true
                                }
                            }
                            anchors.bottomMargin: -5
                            anchors.topMargin: -5
                        }



                        Rectangle {
                            id: backgroundList77
                            x: 1
                            y: 41
                            width: rectangle77.width
                            height: 175
                            visible: false
                        }

                        ListView {
                            id: listView77
                            x: 0
                            y: 41
                            width: rectangle77.width
                            height: backgroundList77.height
                            visible: false
                            clip: true
                            model: ListModel {
                                ListElement {
                                    name: "Low Freq."
                                }

                                ListElement {
                                    name: "Medium Freq."
                                }

                                ListElement {
                                    name: "High Freq."
                                }
                            }
                            delegate: Item {
                                width: listView77.width
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
                                            chosenText77.text = model.name

                                            if(chosenText77.text==="Low Freq."){
                                                rectangle11.visible=true
                                                text37.color="#ffffff"
                                                rectangle17.visible=true
                                                text16.color="#ffffff"
                                                text22.color="#ffffff"
                                                text26.color="#ffffff"

                                                rectangle12.visible=false
                                                text38.color="#284863"
                                                rectangle18.visible=false
                                                text17.color="#284863"
                                                text23.color="#284863"
                                                text41.color="#284863"

                                                rectangle13.visible=false
                                                text43.color="#284863"
                                                rectangle19.visible=false
                                                text18.color="#284863"
                                                text24.color="#284863"
                                                text42.color="#284863"
                                            }

                                            else if(chosenText77.text==="Medium Freq."){
                                                rectangle12.visible=true
                                                text38.color="#ffffff"
                                                rectangle18.visible=true
                                                text17.color="#ffffff"
                                                text23.color="#ffffff"
                                                text41.color="#ffffff"

                                                rectangle11.visible=false
                                                text37.color="#284863"
                                                rectangle17.visible=false
                                                text16.color="#284863"
                                                text22.color="#284863"
                                                text26.color="#284863"

                                                rectangle13.visible=false
                                                text43.color="#284863"
                                                rectangle19.visible=false
                                                text18.color="#284863"
                                                text24.color="#284863"
                                                text42.color="#284863"
                                            }

                                            else if(chosenText77.text==="High Freq."){
                                                rectangle11.visible=false
                                                text37.color="#284863"
                                                rectangle17.visible=false
                                                text16.color="#284863"
                                                text22.color="#284863"
                                                text26.color="#284863"

                                                rectangle12.visible=false
                                                text38.color="#284863"
                                                rectangle18.visible=false
                                                text17.color="#284863"
                                                text23.color="#284863"
                                                text41.color="#284863"

                                                rectangle13.visible=true
                                                text43.color="#ffffff"
                                                rectangle19.visible=true
                                                text18.color="#ffffff"
                                                text24.color="#ffffff"
                                                text42.color="#ffffff"
                                            }
                                        }
                                    }
                                }
                            }
                        }


                    }
                }



























                GroupItem {
                    id:group123
                    x: 169
                    y: 53

                    Rectangle {
                        id: rectangle123
                        x: 0
                        y: 0
                        width: 161
                        height: 40
                        color: "#ffffff"
                        border.color: "#d9d9d9"
                        border.width: 1
                        Image {
                            id: okUp12
                            x: 139
                            y: 16
                            width: 14
                            source: "images/okUp22.svg"
                            fillMode: Image.PreserveAspectFit
                            rotation: 0
                        }

                        Text {
                            id: chosenText12
                            color: "#284863"
                            anchors.verticalCenter: parent.verticalCenter
                            text: qsTr("Millisecond")
                            anchors.left: parent.left
                            font.pixelSize: 17
                            anchors.leftMargin: 5
                        }

                        MouseArea {
                            anchors.fill: parent
                            onClicked: {

                                if(okUp12.rotation===180)
                                {
                                    okUp12.rotation=0
                                    backgroundList23.visible=false
                                    listView23.visible=false
                                }
                                else
                                {
                                    okUp12.rotation=180
                                    backgroundList23.visible=true
                                    listView23.visible=true
                                }
                            }
                            anchors.topMargin: -5
                            anchors.rightMargin: -1
                            anchors.leftMargin: -5
                            anchors.bottomMargin: -5
                        }

                        Rectangle {
                            id: backgroundList23
                            x: 1
                            y: 41
                            width: rectangle122.width
                            height: 175
                            visible: false
                        }

                        ListView {
                            id: listView23
                            x: 0
                            y: 41
                            width: rectangle122.width
                            height: backgroundList23.height
                            visible: false
                            clip: true
                            delegate: Item {
                                width: listView23.width
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
                                            chosenText12.text = model.name

                                            if(chosenText12.text==="Millisecond"){
                                                rectangle8.visible=true
                                                text31.color="#ffffff"
                                                rectangle20.visible=true
                                                text14.color="#ffffff"
                                                text20.color="#ffffff"
                                                rectangle10.visible=false
                                                rectangle21.visible=false
                                                text32.color="#284863"
                                                text15.color="#284863"
                                                text21.color="#284863"
                                            }
                                            if(chosenText12.text==="Microsecond"){
                                                rectangle8.visible=false
                                                text31.color="#284863"
                                                rectangle20.visible=false
                                                text14.color="#284863"
                                                text20.color="#284863"
                                                rectangle10.visible=true
                                                rectangle21.visible=true
                                                text32.color="#ffffff"
                                                text15.color="#ffffff"
                                                text21.color="#ffffff"
                                            }

                                        }
                                    }
                                }
                            }
                            model: ListModel {
                                ListElement {
                                    name: "Millisecond"
                                }
                                ListElement {
                                    name: "Microsecond"
                                }
                            }
                        }
                    }
                }


                Rectangle {
                    id: rectangle122
                    x: 169
                    y: 9
                    width: 161
                    height: 40
                    border.color: "#d9d9d9"
                    border.width: 1
                    color: "#ffffff"

                    Image {
                        id: okUp22
                        x: 139
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: chosenText22
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        anchors.leftMargin: 5
                        text: qsTr("Impulsive")
                    }

                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: -1
                        anchors.leftMargin: -5
                        anchors.bottomMargin: -5
                        anchors.topMargin: -5
                        onClicked: {
                            if(okUp22.rotation===180)
                            {
                                okUp22.rotation=0
                                backgroundList177.visible=false
                                listView22.visible=false
                            }
                            else
                            {
                                okUp22.rotation=180
                                backgroundList177.visible=true
                                listView22.visible=true
                            }
                        }
                    }

                    Rectangle {
                        id: backgroundList177
                        x: 1
                        y: 41
                        width: rectangle122.width
                        height: 175
                        visible: false
                    }

                    ListView {
                        id: listView22
                        x: 0
                        y: 41
                        width: rectangle122.width
                        height: backgroundList177.height
                        visible: false
                        clip: true
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
                                        chosenText22.text = model.name
                                        if(chosenText22.text==="Impulsive"){
                                            group123.visible=true
                                            rectangle77.visible=false

                                            rectangle5.visible=true
                                            text19.color="#ffffff"

                                            rectangle6.visible=false
                                            text25.color="#284863"

                                            rectangle11.visible=false
                                            text37.color="#284863"
                                            rectangle17.visible=false
                                            text16.color="#284863"
                                            text22.color="#284863"
                                            text26.color="#284863"
                                            rectangle12.visible=false
                                            text38.color="#284863"
                                            rectangle18.visible=false
                                            text17.color="#284863"
                                            text23.color="#284863"
                                            text41.color="#284863"

                                            rectangle13.visible=false
                                            text43.color="#284863"
                                            rectangle19.visible=false
                                            text18.color="#284863"
                                            text24.color="#284863"
                                            text42.color="#284863"

                                            if(chosenText12.text==="Millisecond"){
                                                rectangle8.visible=true
                                                text31.color="#ffffff"
                                                rectangle20.visible=true
                                                text14.color="#ffffff"
                                                text20.color="#ffffff"
                                                rectangle10.visible=false
                                                rectangle21.visible=false
                                                text32.color="#284863"
                                                text15.color="#284863"
                                                text21.color="#284863"
                                            }
                                            if(chosenText12.text==="Microsecond"){
                                                rectangle8.visible=false
                                                text31.color="#284863"
                                                rectangle20.visible=false
                                                text14.color="#284863"
                                                text20.color="#284863"
                                                rectangle10.visible=true
                                                rectangle21.visible=true
                                                text32.color="#ffffff"
                                                text15.color="#ffffff"
                                                text21.color="#ffffff"
                                            }

                                        }
                                        if(chosenText22.text==="Oscillatory"){
                                            group123.visible=false
                                            rectangle77.visible=true

                                            rectangle5.visible=false
                                            text19.color="#284863"
                                            rectangle6.visible=true
                                            text25.color="#ffffff"

                                            rectangle8.visible=false
                                            text31.color="#284863"
                                            rectangle20.visible=false
                                            text14.color="#284863"
                                            text20.color="#284863"
                                            rectangle10.visible=false
                                            rectangle21.visible=false
                                            text32.color="#284863"
                                            text15.color="#284863"
                                            text21.color="#284863"

                                            if(chosenText77.text==="Low Freq."){
                                                rectangle11.visible=true
                                                text37.color="#ffffff"
                                                rectangle17.visible=true
                                                text16.color="#ffffff"
                                                text22.color="#ffffff"
                                                text26.color="#ffffff"
                                                rectangle12.visible=false
                                                text38.color="#284863"
                                                rectangle18.visible=false
                                                text17.color="#284863"
                                                text23.color="#284863"
                                                text41.color="#284863"

                                                rectangle13.visible=false
                                                text43.color="#284863"
                                                rectangle19.visible=false
                                                text18.color="#284863"
                                                text24.color="#284863"
                                                text42.color="#284863"
                                            }

                                            else if(chosenText77.text==="Medium Freq."){
                                                rectangle12.visible=true
                                                text38.color="#ffffff"
                                                rectangle18.visible=true
                                                text17.color="#ffffff"
                                                text23.color="#ffffff"
                                                text41.color="#ffffff"

                                                rectangle11.visible=false
                                                text37.color="#284863"
                                                rectangle17.visible=false
                                                text16.color="#284863"
                                                text22.color="#284863"
                                                text26.color="#284863"
                                                rectangle13.visible=false
                                                text43.color="#284863"
                                                rectangle19.visible=false
                                                text18.color="#284863"
                                                text24.color="#284863"
                                                text42.color="#284863"
                                            }

                                            else if(chosenText77.text==="High Freq."){
                                                rectangle11.visible=false
                                                text37.color="#284863"
                                                rectangle17.visible=false
                                                text16.color="#284863"
                                                text22.color="#284863"
                                                text26.color="#284863"
                                                rectangle12.visible=false
                                                text38.color="#284863"
                                                rectangle18.visible=false
                                                text17.color="#284863"
                                                text23.color="#284863"
                                                text41.color="#284863"

                                                rectangle13.visible=true
                                                text43.color="#ffffff"
                                                rectangle19.visible=true
                                                text18.color="#ffffff"
                                                text24.color="#ffffff"
                                                text42.color="#ffffff"
                                            }
                                        }

                                    }
                                }
                            }
                        }
                        model: ListModel {
                            ListElement {
                                name: "Impulsive"
                            }

                            ListElement {
                                name: "Oscillatory"
                            }
                        }
                    }


                }


            }


            Switch {
                id: switch6
                x: 10
                y: 32
                width: 324
                height: 32
                rightPadding: -237
                onCheckedChanged: {
                    if(switch6.checked===false){
                        vectorRed.visible=false
                        vectorYellow.visible=false
                        vectorBlue.visible=false
                        vectorRed1.visible=false
                        vectorYellow1.visible=false
                        vectorBlue1.visible=false
                        vectorRed2.visible=false

                        colorOverlayColor= "#80bfbfbf"
                        rectangleForTransient.enabled=false


                        rectangle5.visible=false
                        rectangle6.visible=false
                        rectangle8.visible=false
                        rectangle10.visible=false
                        rectangle11.visible=false
                        rectangle12.visible=false
                        rectangle13.visible=false
                        rectangle17.visible=false
                        rectangle18.visible=false
                        rectangle19.visible=false
                        rectangle20.visible=false
                        rectangle21.visible=false
                        text14.color="#284863"
                        text15.color="#284863"
                        text16.color="#284863"
                        text17.color="#284863"
                        text18.color="#284863"
                        text19.color="#284863"
                        text20.color="#284863"
                        text21.color="#284863"
                        text22.color="#284863"
                        text23.color="#284863"
                        text24.color="#284863"
                        text25.color="#284863"
                        text26.color="#284863"
                        text31.color="#284863"
                        text32.color="#284863"
                        text37.color="#284863"
                        text38.color="#284863"
                        text41.color="#284863"
                        text42.color="#284863"
                        text43.color="#284863"

                    }
                    else if (switch6.checked===true) {
                        colorOverlayColor= "#00bfbfbf"
                        rectangleForTransient.enabled=true
                        if(main3phasewye.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed.visible=true
                            }
                            else {
                            vectorRed.visible=false
                            }

                            if(chosenTextaaa1.text==="B"){
                                vectorYellow.visible=true
                            }
                            else {
                            vectorYellow.visible=false
                            }

                            if(chosenTextaaa2.text==="C"){
                                vectorBlue.visible=true
                            }
                            else {
                            vectorBlue.visible=false
                            }
                            if(chosenTextaaa.text==="None"){
                                vectorRed.visible=false
                            }
                            if(chosenTextaaa1.text==="None"){
                                vectorYellow.visible=false
                            }
                            if(chosenTextaaa2.text==="None"){
                                vectorBlue.visible=false
                            }
                        }
                        else {
                            vectorRed.visible=false
                            vectorYellow.visible=false
                            vectorBlue.visible=false
                        }

                        if(main3phaseDelta.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed1.visible=true
                            }
                            else {
                            vectorRed1.visible=false
                            }

                            if(chosenTextaaa1.text==="B"){
                                vectorYellow1.visible=true
                            }
                            else {
                            vectorYellow1.visible=false
                            }

                            if(chosenTextaaa2.text==="C"){
                                vectorBlue1.visible=true
                            }
                            else {
                            vectorBlue1.visible=false
                            }
                            if(chosenTextaaa.text==="None"){
                                vectorRed1.visible=false
                            }
                            if(chosenTextaaa1.text==="None"){
                                vectorYellow1.visible=false
                            }
                            if(chosenTextaaa2.text==="None"){
                                vectorBlue1.visible=false
                            }
                        }
                        else {
                            vectorRed1.visible=false
                            vectorYellow1.visible=false
                            vectorBlue1.visible=false
                        }


                        if(main1phase.visible===true){
                            if(chosenTextaaa.text==="A"){
                                vectorRed2.visible=true
                            }
                            else {
                            vectorRed2.visible=false
                            }
                            if(chosenTextaaa.text==="None"){
                                vectorRed2.visible=false
                            }
                        }
                        else {
                            vectorRed2.visible=false
                        }



                        if(chosenText22.text==="Impulsive"){
                            group123.visible=true
                            rectangle77.visible=false

                            rectangle5.visible=true
                            text19.color="#ffffff"

                            rectangle6.visible=false
                            text25.color="#284863"

                            rectangle11.visible=false
                            text37.color="#284863"
                            rectangle17.visible=false
                            text16.color="#284863"
                            text22.color="#284863"
                            text26.color="#284863"
                            rectangle12.visible=false
                            text38.color="#284863"
                            rectangle18.visible=false
                            text17.color="#284863"
                            text23.color="#284863"
                            text41.color="#284863"

                            rectangle13.visible=false
                            text43.color="#284863"
                            rectangle19.visible=false
                            text18.color="#284863"
                            text24.color="#284863"
                            text42.color="#284863"

                            if(chosenText12.text==="Millisecond"){
                                rectangle8.visible=true
                                text31.color="#ffffff"
                                rectangle20.visible=true
                                text14.color="#ffffff"
                                text20.color="#ffffff"
                                rectangle10.visible=false
                                rectangle21.visible=false
                                text32.color="#284863"
                                text15.color="#284863"
                                text21.color="#284863"
                            }
                            if(chosenText12.text==="Microsecond"){
                                rectangle8.visible=false
                                text31.color="#284863"
                                rectangle20.visible=false
                                text14.color="#284863"
                                text20.color="#284863"
                                rectangle10.visible=true
                                rectangle21.visible=true
                                text32.color="#ffffff"
                                text15.color="#ffffff"
                                text21.color="#ffffff"
                            }

                        }
                        if(chosenText22.text==="Oscillatory"){
                            group123.visible=false
                            rectangle77.visible=true

                            rectangle5.visible=false
                            text19.color="#284863"
                            rectangle6.visible=true
                            text25.color="#ffffff"

                            rectangle8.visible=false
                            text31.color="#284863"
                            rectangle20.visible=false
                            text14.color="#284863"
                            text20.color="#284863"
                            rectangle10.visible=false
                            rectangle21.visible=false
                            text32.color="#284863"
                            text15.color="#284863"
                            text21.color="#284863"

                            if(chosenText77.text==="Low Freq."){
                                rectangle11.visible=true
                                text37.color="#ffffff"
                                rectangle17.visible=true
                                text16.color="#ffffff"
                                text22.color="#ffffff"
                                text26.color="#ffffff"
                                rectangle12.visible=false
                                text38.color="#284863"
                                rectangle18.visible=false
                                text17.color="#284863"
                                text23.color="#284863"
                                text41.color="#284863"

                                rectangle13.visible=false
                                text43.color="#284863"
                                rectangle19.visible=false
                                text18.color="#284863"
                                text24.color="#284863"
                                text42.color="#284863"
                            }

                            else if(chosenText77.text==="Medium Freq."){
                                rectangle12.visible=true
                                text38.color="#ffffff"
                                rectangle18.visible=true
                                text17.color="#ffffff"
                                text23.color="#ffffff"
                                text41.color="#ffffff"

                                rectangle11.visible=false
                                text37.color="#284863"
                                rectangle17.visible=false
                                text16.color="#284863"
                                text22.color="#284863"
                                text26.color="#284863"
                                rectangle13.visible=false
                                text43.color="#284863"
                                rectangle19.visible=false
                                text18.color="#284863"
                                text24.color="#284863"
                                text42.color="#284863"
                            }

                            else if(chosenText77.text==="High Freq."){
                                rectangle11.visible=false
                                text37.color="#284863"
                                rectangle17.visible=false
                                text16.color="#284863"
                                text22.color="#284863"
                                text26.color="#284863"
                                rectangle12.visible=false
                                text38.color="#284863"
                                rectangle18.visible=false
                                text17.color="#284863"
                                text23.color="#284863"
                                text41.color="#284863"

                                rectangle13.visible=true
                                text43.color="#ffffff"
                                rectangle19.visible=true
                                text18.color="#ffffff"
                                text24.color="#ffffff"
                                text42.color="#ffffff"
                            }
                        }





                    }


                }
            }


            Text {
                x: 3
                y: 33
                width: 190
                height: 30
                color: "#284863"
                text: "Transient Activate"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                clip: true
            }


            Text {
                x: 3
                y: 5
                width: 239
                height: 30
                color: "#284863"
                text: "Transient Settings"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignTop
                wrapMode: Text.Wrap
                font.bold: true
                clip: true
            }

        }

        Rectangle {
            id: rectangleForMain
            x: 0
            y: 87
            width: 348
            height: 641
            visible: true
            color: "#00ffffff"


            Rectangle {
                id: rectangle14
                x: 11
                y: 91
                width: 648/2
                height: 360/2
                visible: true
                color: "#f7f8fa"
                border.color: "#dce8ef"

                GroupItem {
                    id:textForNominalVoltageGroup
                    x: 0
                    y: 63

                    SpinBox {
                        id: spinBox
                        x: 0
                        y: 0
                        width: 322
                        height: 40
                        stepSize: 1
                        font.pointSize: 1
                        value: 380
                        to: 1000
                        from: 00001

                        textFromValue: function(value) {
                            return (value ) // Değeri 100'e bölüp, iki ondalık basamakla göster
                        }

                        valueFromText: function(text) {
                            return parseFloat(text) * 100; // Text'i ondalık değere dönüştürüp, 100 ile çarp
                        }
                        onValueChanged: {
                            customslider.handleRect.x=150+0.212 * spinBox.value - width / 2
                            textForNominalVoltage.x=200+0.212* spinBox.value - width / 2
                            textForNominalVoltage.text=((spinBox.value)).toFixed(2) + " V"

                            chosenText31.text=textForNominalVoltage.text

                            textForNominalVoltage.text=((spinBox.value)).toFixed(2) + " V"

                        }
                    }

                    CustomSlider{
                        id:customslider
                        x: 38
                        y: 2
                        width: 245
                        height: 35
                        onClickedSignal: {
                            spinBox.value=customslider.slider.value
                            chosenText31.text=textForNominalVoltage.text


                            chosenText012.text="Custom"
                            elementText012.visible=false
                        }
                    }

                    Text {
                        id: textForNominalVoltage
                        x: 100+0.000355 * spinBox.value - width / 2
                        y: 43
                        visible: true
                        text: (spinBox.value) + " V"
                    }

                    Image {
                        id: increase
                        x: 283
                        y: -16
                        width: 77/2
                        source: "images/increase.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        id: decrease
                        x: 1
                        y: -17
                        width: 76/2
                        source: "images/decrease.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }

                Rectangle {
                    id: rectangle124222
                    x: 157
                    y: 129
                    width: 161
                    height: 40
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id: okUp01222
                        x: 139
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: chosenText3122
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: -1
                        onClicked: {
                            if(okUp01222.rotation===180)
                            {
                                okUp01222.rotation=0
                                backgroundList24222.visible=false
                                listView24222.visible=false
                                elementText01222.visible=false
                                rectangle14.z=0
                            }
                            else
                            {
                                okUp01222.rotation=180
                                backgroundList24222.visible=true
                                listView24222.visible=true
                                elementText01222.visible=false
                                rectangle14.z=1
                            }
                        }
                        anchors.leftMargin: -5
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                    }

                    Text {
                        id: elementText01222
                        x: 5
                        y: 0
                        width: 156
                        height: 40
                        color: "#d4d4d4"
                        text: qsTr("1")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }
                }

                Text {
                    id: text222
                    x: 4
                    y: 134
                    width: 217
                    height: 30
                    color: "#284863"
                    text: "VT Ratio"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }

                Rectangle {
                    id: backgroundList24222
                    x: 157
                    y: 169
                    width: rectangle124222.width
                    height: 175
                    visible: false
                }

                ListView {
                    id: listView24222
                    x: 157
                    y: 170
                    width: rectangle124222.width
                    height: backgroundList24222.height
                    visible: false
                    delegate: Item {
                        width: listView24222.width
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
                                    chosenText3122.text = model.name
                                    chosenText32.text= model.name
                                }
                            }
                        }
                    }
                    clip: true
                    model: ListModel {
                        ListElement {
                            name: "1"
                        }

                        ListElement {
                            name: "1.5"
                        }

                        ListElement {
                            name: "2"
                        }
                    }
                }

                Text {
                    id: text2
                    x: 4
                    y: 12
                    width: 217
                    height: 30
                    color: "#284863"
                    text: "Nominal Voltage"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }


                Rectangle {
                    id: rectangle1242
                    x: 157
                    y: 7
                    width: 161
                    height: 40
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id: okUp012
                        x: 139
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id: chosenText012
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: -1
                        onClicked: {

                            if(okUp012.rotation===180)
                            {
                                okUp012.rotation=0
                                backgroundList242.visible=false
                                listView242.visible=false
                                elementText012.visible=false
                                rectangle14.z=0

                                if(chosenText012.text==="Custom"){
                                    chosenText31.text=textForNominalVoltage.text
                                }
                                else{

                                }
                            }
                            else
                            {
                                okUp012.rotation=180
                                backgroundList242.visible=true
                                listView242.visible=true
                                elementText012.visible=false
                                rectangle14.z=1

                                if(chosenText012.text==="Custom"){
                                    chosenText31.text=textForNominalVoltage.text
                                }
                                else{

                                }
                            }
                        }
                        anchors.leftMargin: -5
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                    }

                    Text {
                        id: elementText012
                        x: 5
                        y: 0
                        width: 156
                        height: 40
                        color: "#d4d4d4"
                        text: qsTr("380.00 V")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }
                }

                Rectangle {
                    id: backgroundList242
                    x: 158
                    y: 48
                    width: rectangle1242.width
                    height: 175
                    visible: false
                }

                ListView {
                    id: listView242
                    x: 157
                    y: 48
                    width: rectangle1242.width
                    height: backgroundList222.height
                    visible: false
                    delegate: Item {
                        width: listView242.width
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
                                    chosenText012.text = model.name
                                    chosenText31.text = model.name

                                    function extractNumbers(text) {
                                        var numbersOnly = text.replace(/\D/g, ''); // Bu ifade metinden sadece rakamları alır
                                        spinBox.value= numbersOnly/100 ; // Sadece rakamlardan oluşan metni diğer metne atar
                                    }
                                    extractNumbers(chosenText012.text)

                                    if(chosenText012.text==="Custom"){
                                        chosenText31.text=textForNominalVoltage.text
                                    }
                                    else{
                                        chosenText012.text = model.name
                                    }
                                }
                            }
                        }
                    }
                    clip: true
                    model: ListModel {
                        ListElement {
                            name: "100.00 V"
                        }

                        ListElement {
                            name: "110.00 V"
                        }

                        ListElement {
                            name: "200.00 V"
                        }

                        ListElement {
                            name: "210.00 V"
                        }
                        ListElement {
                            name: "220.00 V"
                        }
                        ListElement {
                            name: "380.00 V"
                        }
                        ListElement {
                            name: "400.00 V"
                        }
                        ListElement {
                            name: "420.00 V"
                        }
                        ListElement {
                            name: "500.00 V"
                        }
                        ListElement {
                            name: "750.00 V"
                        }
                        ListElement {
                            name: "1000.00 V"
                        }

                        ListElement {
                            name: "Custom"
                        }
                    }
                }

            }


            Rectangle {
                id: rectangle1222
                x: 11
                y: 42
                width: 324
                height: 40
                color: "#ffffff"
                border.color: "#d9d9d9"
                border.width: 1
                Image {
                    id: okUp222
                    x: 295
                    y: 16
                    width: 14
                    source: "images/okUp22.svg"
                    rotation: 0
                    fillMode: Image.PreserveAspectFit
                }

                Text {
                    id: chosenText222
                    color: "#284863"
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    font.pixelSize: 17
                    anchors.leftMargin: 5
                }

                MouseArea {
                    anchors.fill: parent
                    anchors.rightMargin: -1
                    onClicked: {

                        if(okUp222.rotation===180)
                        {
                            okUp222.rotation=0
                            backgroundList222.visible=false
                            listView222.visible=false
                            elementText222.visible=false
                            if(chosenText222.text==="3 phase Delta"){
                                main3phaseDelta.visible=true
                                main1phase.visible=false
                                main3phasewye.visible=false
                                chosenText300.text="AB-BC-CA"
                                arc5.visible=false
                                arc2.visible=true
                                arc3.visible=true
                                arc4.visible=true
                                threePhaseDeltaAnim.start()
                                imageMain.source="images/MainDelta.svg"
                                imageMain.y=295
                                imageMain.width=96/2

                                if(switch6.checked===false){
                                    vectorRed.visible=false
                                    vectorYellow.visible=false
                                    vectorBlue.visible=false
                                    vectorRed1.visible=false
                                    vectorYellow1.visible=false
                                    vectorBlue1.visible=false
                                    vectorRed2.visible=false
                                }
                                else if (switch6.checked===true) {

                                    if(main3phasewye.visible===true){
                                        if(chosenTextaaa.text==="A"){
                                            vectorRed.visible=true
                                        }
                                        else {
                                        vectorRed.visible=false
                                        }

                                        if(chosenTextaaa1.text==="B"){
                                            vectorYellow.visible=true
                                        }
                                        else {
                                        vectorYellow.visible=false
                                        }

                                        if(chosenTextaaa2.text==="C"){
                                            vectorBlue.visible=true
                                        }
                                        else {
                                        vectorBlue.visible=false
                                        }
                                        if(chosenTextaaa.text==="None"){
                                            vectorRed.visible=false
                                        }
                                        if(chosenTextaaa1.text==="None"){
                                            vectorYellow.visible=false
                                        }
                                        if(chosenTextaaa2.text==="None"){
                                            vectorBlue.visible=false
                                        }
                                    }
                                    else {
                                        vectorRed.visible=false
                                        vectorYellow.visible=false
                                        vectorBlue.visible=false
                                    }

                                    if(main3phaseDelta.visible===true){
                                        if(chosenTextaaa.text==="A"){
                                            vectorRed1.visible=true
                                        }
                                        else {
                                        vectorRed1.visible=false
                                        }

                                        if(chosenTextaaa1.text==="B"){
                                            vectorYellow1.visible=true
                                        }
                                        else {
                                        vectorYellow1.visible=false
                                        }

                                        if(chosenTextaaa2.text==="C"){
                                            vectorBlue1.visible=true
                                        }
                                        else {
                                        vectorBlue1.visible=false
                                        }
                                        if(chosenTextaaa.text==="None"){
                                            vectorRed1.visible=false
                                        }
                                        if(chosenTextaaa1.text==="None"){
                                            vectorYellow1.visible=false
                                        }
                                        if(chosenTextaaa2.text==="None"){
                                            vectorBlue1.visible=false
                                        }
                                    }
                                    else {
                                        vectorRed1.visible=false
                                        vectorYellow1.visible=false
                                        vectorBlue1.visible=false
                                    }


                                    if(main1phase.visible===true){
                                        if(chosenTextaaa.text==="A"){
                                            vectorRed2.visible=true
                                        }
                                        else {
                                        vectorRed2.visible=false
                                        }
                                        if(chosenTextaaa.text==="None"){
                                            vectorRed2.visible=false
                                        }
                                    }
                                    else {
                                        vectorRed2.visible=false
                                    }

                                }
                            }
                            else if(chosenText222.text==="3 phase wye"){
                                main3phaseDelta.visible=false
                                main1phase.visible=false
                                main3phasewye.visible=true
                                chosenText300.text="AN-BN-CN"
                                arc2.visible=true
                                arc3.visible=true
                                arc4.visible=true
                                arc5.visible=true
                                threePhasewyeAnim.start()
                                imageMain.source="images/Mainwye.svg"
                                imageMain.y=290
                                imageMain.width=81/2

                                if(switch6.checked===false){
                                    vectorRed.visible=false
                                    vectorYellow.visible=false
                                    vectorBlue.visible=false
                                    vectorRed1.visible=false
                                    vectorYellow1.visible=false
                                    vectorBlue1.visible=false
                                    vectorRed2.visible=false
                                }
                                else if (switch6.checked===true) {
                                    if(main3phasewye.visible===true){
                                        if(chosenTextaaa.text==="A"){
                                            vectorRed.visible=true
                                        }
                                        else {
                                        vectorRed.visible=false
                                        }

                                        if(chosenTextaaa1.text==="B"){
                                            vectorYellow.visible=true
                                        }
                                        else {
                                        vectorYellow.visible=false
                                        }

                                        if(chosenTextaaa2.text==="C"){
                                            vectorBlue.visible=true
                                        }
                                        else {
                                        vectorBlue.visible=false
                                        }
                                        if(chosenTextaaa.text==="None"){
                                            vectorRed.visible=false
                                        }
                                        if(chosenTextaaa1.text==="None"){
                                            vectorYellow.visible=false
                                        }
                                        if(chosenTextaaa2.text==="None"){
                                            vectorBlue.visible=false
                                        }
                                    }
                                    else {
                                        vectorRed.visible=false
                                        vectorYellow.visible=false
                                        vectorBlue.visible=false
                                    }

                                    if(main3phaseDelta.visible===true){
                                        if(chosenTextaaa.text==="A"){
                                            vectorRed1.visible=true
                                        }
                                        else {
                                        vectorRed1.visible=false
                                        }

                                        if(chosenTextaaa1.text==="B"){
                                            vectorYellow1.visible=true
                                        }
                                        else {
                                        vectorYellow1.visible=false
                                        }

                                        if(chosenTextaaa2.text==="C"){
                                            vectorBlue1.visible=true
                                        }
                                        else {
                                        vectorBlue1.visible=false
                                        }
                                        if(chosenTextaaa.text==="None"){
                                            vectorRed1.visible=false
                                        }
                                        if(chosenTextaaa1.text==="None"){
                                            vectorYellow1.visible=false
                                        }
                                        if(chosenTextaaa2.text==="None"){
                                            vectorBlue1.visible=false
                                        }
                                    }
                                    else {
                                        vectorRed1.visible=false
                                        vectorYellow1.visible=false
                                        vectorBlue1.visible=false
                                    }


                                    if(main1phase.visible===true){
                                        if(chosenTextaaa.text==="A"){
                                            vectorRed2.visible=true
                                        }
                                        else {
                                        vectorRed2.visible=false
                                        }
                                        if(chosenTextaaa.text==="None"){
                                            vectorRed2.visible=false
                                        }
                                    }
                                    else {
                                        vectorRed2.visible=false
                                    }

                                }

                            }
                            else if(chosenText222.text==="1 phase"){
                                main3phaseDelta.visible=false
                                main1phase.visible=true
                                main3phasewye.visible=false
                                chosenText300.text="A-N"
                                arc3.visible=false
                                arc4.visible=false
                                arc2.visible=true
                                arc5.visible=true
                                onePhaseAnim.start()
                                imageMain.source="images/MainOnePhase.svg"
                                imageMain.y=320
                                imageMain.width=81/2

                                if(switch6.checked===false){
                                    vectorRed.visible=false
                                    vectorYellow.visible=false
                                    vectorBlue.visible=false
                                    vectorRed1.visible=false
                                    vectorYellow1.visible=false
                                    vectorBlue1.visible=false
                                    vectorRed2.visible=false
                                }
                                else if (switch6.checked===true) {

                                    if(main1phase.visible===true){
                                        if(chosenTextaaa.text==="A"){
                                            vectorRed.visible=false
                                            vectorYellow.visible=false
                                            vectorBlue.visible=false
                                            vectorRed1.visible=false
                                            vectorYellow1.visible=false
                                            vectorBlue1.visible=false
                                            vectorRed2.visible=true

                                        }
                                        if(chosenTextaaa.text!=="A"){
                                            vectorRed.visible=false
                                            vectorYellow.visible=false
                                            vectorBlue.visible=false
                                            vectorRed1.visible=false
                                            vectorYellow1.visible=false
                                            vectorBlue1.visible=false

                                            vectorRed2.visible=false
                                        }
                                    }
                                }


                            }
                        }
                        else
                        {
                            okUp222.rotation=180
                            backgroundList222.visible=true
                            listView222.visible=true
                            elementText222.visible=false


                        }
                    }
                    anchors.leftMargin: -5
                    anchors.topMargin: -5
                    anchors.bottomMargin: -5
                }

                Text {
                    id: elementText222
                    x: 5
                    y: 0
                    width: 315
                    height: 40
                    color: "#d4d4d4"
                    text: qsTr("3 phase wye")
                    font.letterSpacing: -2
                    font.pixelSize: 17
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    font.family: "Akshar"
                    font.styleName: "SemiBold"
                }
            }

            Rectangle {
                id: backgroundList222
                x: 12
                y: 83
                width: rectangle1222.width
                height: 175
                visible: false
            }

            ListView {
                id: listView222
                x: 11
                y: 83
                width: rectangle1222.width
                height: backgroundList222.height
                visible: false
                delegate: Item {
                    width: listView222.width
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
                                chosenText222.text = model.name
                                chosenText30.text = model.name

                            }
                        }
                    }
                }
                clip: true
                model: ListModel {
                    ListElement {
                        name: "1 phase"
                    }
                    ListElement {
                        name: "Split Phase"
                    }
                    ListElement {
                        name: "3 phase wye"
                    }
                    ListElement {
                        name: "3 phase Delta"
                    }
                    ListElement {
                        name: "3 phase open delta"
                    }
                    ListElement {
                        name: "3 phase aron"
                    }

                }
            }



            Text {
                id: text1
                x: 13
                y: 15
                width: 217
                height: 30
                color: "#284863"
                text: "Connection Topology"
                font.pixelSize: 18
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.styleName: "Bold"
                clip: true
            }


            Rectangle {
                id: bGForHeader1
                x: 11
                y: 506
                width: 648/2
                height: 130
                color: "#f7f8fa"
                border.color: "#a3adb1b4"

                GroupItem {
                    x: 0
                    y: 63
                    SpinBox {
                        id: spinBox255
                        x: 0
                        y: 0
                        width: 322
                        height: 40
                        textFromValue: function(value) {
                            return (value / 10).toFixed(2); // Değeri 100'e bölüp, iki ondalık basamakla göster
                        }
                        font.pointSize: 1
                        valueFromText: function(text) {
                            return parseFloat(text) * 100; // Text'i ondalık değere dönüştürüp, 100 ile çarp
                        }
                        value: 4000
                        onValueChanged: {
                            customslider255.handleRect.x=150+0.0535 * spinBox255.value - width / 2
                            textForNominalVoltage255.x=200+0.0535 * spinBox255.value - width / 2
                            chosenText11323344.text=textForNominalVoltage255.text
                            timeForGraph3.text =(1/(spinBox255.value / 10)*1000).toFixed(2) + " ms"
                            timeForGraph2.text =((1/(spinBox255.value / 10)*1000)/2).toFixed(2) + " ms"
                        }
                        stepSize: 1
                        to: 4000
                        from: 1
                    }

                    CustomSliderForFrequency {
                        id:customslider255
                        x: 38
                        y: 2
                        width: 245
                        height: 35
                        onClickedSignal: {
                            //                            customslider255.handleRect.x=150+0.212 * spinBox255.value - width / 2
                            //                            textForNominalVoltage255.x=200+0.212* spinBox255.value - width / 2
                            //                            textForNominalVoltage255.text=((spinBox255.value)).toFixed(2) + " V"

                            spinBox255.value=customslider255.slider.value
                            chosenText11223344.text=textForNominalVoltage255.text
                            chosenText11223344.text="Custom"
                            elementText11223344.visible=false

                            timeForGraph3.text =(1/(spinBox255.value / 10)*1000).toFixed(2) + " ms"
                            timeForGraph2.text =((1/(spinBox255.value / 10)*1000)/2).toFixed(2) + " ms"
                        }

                    }

                    Text {
                        id: textForNominalVoltage255
                        x: 100+0.0455 * spinBox255.value - width / 2
                        y: 43
                        text: (spinBox255.value / 10).toFixed(2) + " Hz"
                    }



                    Image {
                        x: 283
                        y: -16
                        width: 77/2
                        source: "images/increase.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        x: 1
                        y: -17
                        width: 76/2
                        source: "images/decrease.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }



                Rectangle {
                    id:rectangle11223344
                    x: 157
                    y: 8
                    width: 161
                    height: 40
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id:okUp11223344
                        x: 139
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        rotation: 180
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id:chosenText11223344
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: -1
                        onClicked: {
                            if(okUp11223344.rotation===0)
                            {
                                okUp11223344.rotation=180
                                backgroundList11223344.visible=false
                                listView11223344.visible=false
                                elementText11223344.visible=false
                                bGForHeader1.z=0
                                if(chosenText11223344.text==="Custom"){
                                    chosenText11323344.text=textForNominalVoltage255.text
                                }
                                else{
                                }
                            }

                            else
                            {
                                okUp11223344.rotation=0
                                backgroundList11223344.visible=true
                                listView11223344.visible=true
                                elementText11223344.visible=false
                                bGForHeader1.z=1

                                if(chosenText11223344.text==="Custom"){
                                    chosenText11323344.text=textForNominalVoltage255.text
                                }

                                else{
                                }
                            }




                        }
                        anchors.leftMargin: -5
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                    }

                    Text {
                        id:elementText11223344
                        x: 5
                        y: 0
                        width: 156
                        height: 40
                        color: "#d4d4d4"
                        text: qsTr("400 Hz")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }
                }

                Rectangle {
                    id:backgroundList11223344
                    x: 157
                    y: -169
                    width: rectangle11223344.width
                    height: 175
                    visible: false
                }

                ListView {
                    id:listView11223344
                    x: 157
                    y: -168
                    width: rectangle11223344.width
                    height: backgroundList11223344.height
                    visible: false
                    delegate: Item {
                        width: listView11223344.width
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
                                    chosenText11223344.text = model.name
                                    chosenText11323344.text= model.name

                                    function extractNumbers(text) {
                                        var numbersOnly = text.replace(/\D/g, '');
                                        spinBox255.value=numbersOnly*10
                                        timeForGraph3.text = (1/(numbersOnly/1)*1000).toFixed(2) + " ms";
                                        timeForGraph2.text = ((1/(numbersOnly/1)*1000)/2).toFixed(2) + " ms";
                                    }
                                    extractNumbers(chosenText11323344.text)

                                    if(model.name==="Custom"){
                                        timeForGraph3.text =(1/(spinBox255.value / 10)*1000).toFixed(2) + " ms"
                                        timeForGraph2.text =((1/(spinBox255.value / 10)*1000)/2).toFixed(2) + " ms"
                                    }
                                    else{
                                    }
                                }






                            }
                        }
                    }
                    clip: true
                    model: ListModel {
                        ListElement {
                            name: "50 Hz"
                        }
                        ListElement {
                            name: "60 Hz"
                        }

                        ListElement {
                            name: "400 Hz"
                        }
                        ListElement {
                            name: "Custom"
                        }
                    }
                }







                Text{
                    id: recordFileNameTextInput
                    x: 5
                    y: 12
                    width: 149
                    height: 32
                    color: "#284863"
                    text: "Frequency"
                    //                text: qsTr("This operation will be performed permanently. Do you accept?")
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }


                ParallelAnimation{
                    id:renameFileNameAnim
                    NumberAnimation {
                        target: bGForHeader12
                        property: "y"
                        duration: 150
                        to:131
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
                        to:210
                    }
                    NumberAnimation {
                        target: bGForHeader12
                        property: "z"
                        duration: 1
                        to:0
                    }
                }



                RectangleItem {
                    id: bGForHeader12
                    x: 1
                    y: 210
                    width: 324
                    height: 64
                    strokeWidth: -1
                    clip: true
                    fillColor: "#00ffffff"

                    Image {
                        id: accept
                        x: 49
                        y: 10
                        width: 66
                        height: 43
                        source: "images/Accept.svg"
                        fillMode: Image.PreserveAspectFit
                        MouseArea{
                            x:-30
                            y:-10
                            width: parent.width+60
                            height: parent.height+20
                            onClicked: {
                                renameFileNameAnim2.start()
                                if(switch1.checked){
                                    forWifi.source="images/ConnectWifi.png"
                                    timerForGraph.start()
                                    text21.text="fe80:da67:ad1f:da05:a121"
                                    text34.text="fe80:da67:ad1f:da05:a121"
                                    text24.text="127.0.0.1"
                                    text37.text="127.0.0.1"
                                    text25.text="02-E1-BC-31-30-CC"
                                    text38.text="02-E1-BC-31-30-CC"
                                    text11.text="Wifi"
                                    text12.text="Well"
                                    receiveDataTimer.repeat=true
                                    receiveDataTimer.start()
                                    sendDataTimer.repeat=true
                                    sendDataTimer.start()

                                }
                                if(switch2.checked){
                                    forWifi.source="images/ConnectWifi.png"
                                    timerForGraph.start()
                                }

                            }
                        }
                    }

                    Image {
                        id: cancel
                        x: 207
                        y: 10
                        width: 66
                        height: 43
                        source: "images/Cancel.svg"
                        fillMode: Image.PreserveAspectFit
                        MouseArea{
                            x:-30
                            y:-10
                            width: parent.width+60
                            height: parent.height+20
                            onClicked: {
                                renameFileNameAnim2.start()
                                recordFileNameTextInput.text="Please select the job you want to do"

                            }
                        }
                    }
                }


            }

            Rectangle {
                id: rectangle15
                x: 11
                y: 279
                width: 648/2
                height: 220
                visible: true
                color: "#f7f8fa"
                border.color: "#dce8ef"
                GroupItem {
                    x: 0
                    y: 63
                    SpinBox {
                        id: spinBox2
                        x: 0
                        y: 0
                        width: 322
                        height: 40
                        textFromValue: function(value) {
                            return (value / 100).toFixed(2); // Değeri 100'e bölüp, iki ondalık basamakla göster
                        }
                        font.pointSize: 1
                        valueFromText: function(text) {
                            return parseFloat(text) * 100; // Text'i ondalık değere dönüştürüp, 100 ile çarp
                        }
                        value: 500
                        onValueChanged: {
                            customslider2.handleRect.x=150+0.000425 * spinBox2.value - width / 2
                            textForNominalVoltage2.x=200+0.000425 * spinBox2.value - width / 2
                            textForNominalVoltage2.text=((spinBox2.value)/100000).toFixed(2) + "A"

                            chosenText33.text=textForNominalVoltage2.text

                            if(chosenText112233.text==="C005-5A"){
                                textForNominalVoltage2.text=((spinBox2.value)/100000).toFixed(2) + "A"
                            }
                            else if(chosenText112233.text==="C020-20A"){
                                textForNominalVoltage2.text=((spinBox2.value*4)/100000).toFixed(2) + "A"
                            }
                            else if(chosenText112233.text==="C050-50A"){
                                textForNominalVoltage2.text=((spinBox2.value*10)/100000).toFixed(2) + "A"
                            }
                            else if(chosenText112233.text==="C100-100A"){
                                textForNominalVoltage2.text=((spinBox2.value*20)/100000).toFixed(2) + "A"
                            }
                            else if(chosenText112233.text==="C250-250A"){
                                textForNominalVoltage2.text=((spinBox2.value*50)/100000).toFixed(2) + "A"
                            }
                            else if(chosenText112233.text==="C1000-1kA"){
                                textForNominalVoltage2.text=((spinBox2.value*200)/100000).toFixed(2) + "A"
                            }
                            else if(chosenText112233.text==="C5000-5kA"){
                                textForNominalVoltage2.text=((spinBox2.value*1000)/100000).toFixed(2) + "A"
                            }
                        }
                        stepSize: 10000
                        to: 500000
                        from: 1
                    }

                    CustomSliderForCurrent {
                        id:customslider2
                        x: 38
                        y: 2
                        width: 245
                        height: 35
                        onClickedSignal: {
                            spinBox2.value=customslider2.slider.value
                            chosenText0222.text="Custom"
                            chosenText888.text="Custom"
                            chosenText999.text="Custom"
                            chosenText777.text="Custom"
                            chosenText666.text="Custom"
                            chosenText555.text="Custom"
                            chosenText444.text="Custom"
                            chosenText33.text=textForNominalVoltage2.text
                        }
                    }

                    Text {
                        id: textForNominalVoltage2
                        x: 237
                        y: 43
                        text: "5.00 A"
                    }

                    Image {
                        x: 283
                        y: -16
                        width: 77/2
                        source: "images/increase.svg"
                        fillMode: Image.PreserveAspectFit
                    }

                    Image {
                        x: 1
                        y: -17
                        width: 76/2
                        source: "images/decrease.svg"
                        fillMode: Image.PreserveAspectFit
                    }
                }







                Rectangle {
                    id:rectangle112233
                    x: 157
                    y: 174
                    width: 161
                    height: 40
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id:okUp112233
                        x: 139
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id:chosenText112233
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: -1
                        onClicked: {

                            if(okUp112233.rotation===180)
                            {
                                okUp112233.rotation=0
                                backgroundList112233.visible=false
                                listView112233.visible=false
                                elementText112233.visible=false
                                rectangle15.z=0


                                //                                function extractAfterDash(text) {
                                //                                    var parts = text.split("-");
                                //                                    if (parts.length > 1) {
                                //                                        chosenText0222.text = parts[1];


                                //                                        var digits = parts[1].replace(/\D/g, ''); // Sadece rakamları al
                                //                                               chosenText223.text = digits;

                                ////                                        chosenText223.text=parts[1];
                                //                                    }
                                //                                }

                                //                                extractAfterDash(chosenText112233.text)



                                if(chosenText0222.text==="5A"){
                                    textForNominalVoltage2.text= "5.00A"

                                }
                                else if(chosenText0222.text==="20A"){
                                    textForNominalVoltage2.text= "20.00A"
                                }
                                else if(chosenText0222.text==="50A"){
                                    textForNominalVoltage2.text= "50.00A"
                                }
                                else if(chosenText0222.text==="100A"){
                                    textForNominalVoltage2.text= "100.00A"
                                }
                                else if(chosenText0222.text==="250A"){
                                    textForNominalVoltage2.text= "250.00A"
                                }
                                else if(chosenText0222.text==="1kA"){
                                    textForNominalVoltage2.text= "1000.00A"
                                }
                                else if(chosenText0222.text==="5kA"){
                                    textForNominalVoltage2.text= "5000.00A"
                                }
                                spinBox2.value=500000


                            }
                            else
                            {
                                okUp112233.rotation=180
                                backgroundList112233.visible=true
                                listView112233.visible=true
                                elementText112233.visible=false
                                rectangle15.z=1



                            }
                        }
                        anchors.leftMargin: -5
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                    }

                    Text {
                        id:elementText112233
                        x: 5
                        y: 0
                        width: 156
                        height: 40
                        color: "#d4d4d4"
                        text: qsTr("C005-5A")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }
                }

                Rectangle {
                    id:backgroundList112233
                    x: 157
                    y: 213
                    width: rectangle112233.width
                    height: 175
                    visible: false
                }

                ListView {
                    id:listView112233
                    x: 157
                    y: 214
                    width: rectangle112233.width
                    height: backgroundList112233.height
                    visible: false
                    delegate: Item {
                        width: listView112233.width
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
                                    chosenText112233.text = model.name
                                    chosenText113233.text= model.name

                                    if(chosenText112233.text==="C005-5A"){
                                        textForNominalVoltage2.text="5.00A"
                                        rect0222.visible=true
                                        rect888.visible=false
                                        rect999.visible=false
                                        rect777.visible=false
                                        rect666.visible=false
                                        rect555.visible=false
                                        rect444.visible=false
                                    }
                                    else if(chosenText112233.text==="C020-20A"){
                                        textForNominalVoltage2.text="20.00A"
                                        rect0222.visible=false
                                        rect888.visible=true
                                        rect999.visible=false
                                        rect777.visible=false
                                        rect666.visible=false
                                        rect555.visible=false
                                        rect444.visible=false
                                    }
                                    else if(chosenText112233.text==="C050-50A"){
                                        textForNominalVoltage2.text="50.00A"
                                        rect0222.visible=false
                                        rect888.visible=false
                                        rect999.visible=true
                                        rect777.visible=false
                                        rect666.visible=false
                                        rect555.visible=false
                                        rect444.visible=false
                                    }
                                    else if(chosenText112233.text==="C100-100A"){
                                        textForNominalVoltage2.text="100.00A"
                                        rect0222.visible=false
                                        rect888.visible=false
                                        rect999.visible=false
                                        rect777.visible=true
                                        rect666.visible=false
                                        rect555.visible=false
                                        rect444.visible=false
                                    }
                                    else if(chosenText112233.text==="C250-250A"){
                                        textForNominalVoltage2.text="250.00A"
                                        rect0222.visible=false
                                        rect888.visible=false
                                        rect999.visible=false
                                        rect777.visible=false
                                        rect666.visible=true
                                        rect555.visible=false
                                        rect444.visible=false
                                    }
                                    else if(chosenText112233.text==="C1000-1kA"){
                                        textForNominalVoltage2.text="1000.00A"
                                        rect0222.visible=false
                                        rect888.visible=false
                                        rect999.visible=false
                                        rect777.visible=false
                                        rect666.visible=false
                                        rect555.visible=true
                                        rect444.visible=false
                                    }
                                    else if(chosenText112233.text==="C5000-5kA"){
                                        textForNominalVoltage2.text="5000.00A"
                                        rect0222.visible=false
                                        rect888.visible=false
                                        rect999.visible=false
                                        rect777.visible=false
                                        rect666.visible=false
                                        rect555.visible=false
                                        rect444.visible=true
                                    }
                                }
                            }
                        }
                    }
                    clip: true
                    model: ListModel {
                        ListElement {
                            name: "C005-5A"
                        }

                        ListElement {
                            name: "C020-20A"
                        }

                        ListElement {
                            name: "C050-50A"
                        }
                        ListElement {
                            name: "C100-100A"
                        }
                        ListElement {
                            name: "C250-250A"
                        }
                        ListElement {
                            name: "C1000-1kA"
                        }
                        ListElement {
                            name: "C5000-5kA"
                        }
                    }
                }
                Rectangle {
                    id:rectangle1122
                    x: 157
                    y: 129
                    width: 161
                    height: 40
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id:okUp1122
                        x: 139
                        y: 16
                        width: 14
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    Text {
                        id:chosenText1122
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        anchors.fill: parent
                        anchors.rightMargin: -1
                        onClicked: {

                            if(okUp1122.rotation===180)
                            {
                                okUp1122.rotation=0
                                backgroundList1122.visible=false
                                listView1122.visible=false
                                elementText1122.visible=false
                                rectangle15.z=0

                            }
                            else
                            {
                                okUp1122.rotation=180
                                backgroundList1122.visible=true
                                listView1122.visible=true
                                elementText1122.visible=false
                                rectangle15.z=1

                            }
                        }
                        anchors.leftMargin: -5
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                    }

                    Text {
                        id:elementText1122
                        x: 5
                        y: 0
                        width: 156
                        height: 40
                        color: "#d4d4d4"
                        text: qsTr("1")
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }
                }

                Text {
                    x: 4
                    y: 134
                    width: 217
                    height: 30
                    color: "#284863"
                    text: "CT Ratio"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }
                Rectangle {
                    id:backgroundList1122
                    x: 157
                    y: 169
                    width: rectangle1122.width
                    height: 175
                    visible: false
                }

                Text {
                    x: 4
                    y: 12
                    width: 150
                    height: 30
                    color: "#284863"
                    text: "Current Range "
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }
                ListView {
                    id:listView1122
                    x: 157
                    y: 170
                    width: rectangle1122.width
                    height: backgroundList1122.height
                    visible: false
                    delegate: Item {
                        width: listView1122.width
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
                                    chosenText1122.text = model.name
                                    chosenText1132.text= model.name
                                }
                            }
                        }
                    }
                    clip: true
                    model: ListModel {
                        ListElement {
                            name: "1"
                        }

                        ListElement {
                            name: "1.5"
                        }

                        ListElement {
                            name: "2"
                        }
                    }
                }

                Rectangle {
                    id:rect0222
                    x: 157
                    y: 7
                    width: 161
                    height: 40
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id: okUp0222
                        x: 139
                        y: 16
                        width: 14
                        visible: true
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    TextInput {
                        id: chosenText0222
                        width: 104
                        height: 40
                        color: "#284863"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                        //                        text:  textForNominalVoltage2.text
                        text: "5"
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        visible: true
                        anchors.fill: parent
                        anchors.rightMargin: -1
                        onClicked: {

                            if(okUp0222.rotation===180)
                            {
                                okUp0222.rotation=0
                                backgroundList0222.visible=false
                                listView0222.visible=false
                                elementText0222.visible=false

                                if(chosenText0222.text==="Custom") {

                                }

                                else{
                                    spinBox2.value= chosenText0222.text*100000
                                }

                                //                                else{
                                //                                    spinBox2.enabled=false
                                //                                    customslider2.enabled=false
                                //                                }
                            }
                            else
                            {
                                okUp0222.rotation=180
                                backgroundList0222.visible=true
                                listView0222.visible=true
                                elementText0222.visible=false
                                //                                if(chosenText0222.text==="Custom"){
                                //                                    customslider2.enabled=true
                                //                                    spinBox2.enabled=true
                                //                                    chosenText33.text=textForNominalVoltage2.text
                                //                                }
                                //                                else{
                                //                                    spinBox2.enabled=false
                                //                                    customslider2.enabled=false
                                //                                }
                            }
                        }
                        anchors.leftMargin: -5
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                    }

                    Text {
                        id: elementText0222
                        x: 5
                        y: 0
                        width: 160
                        height: 40
                        visible: false
                        color: "#d4d4d4"
                        text:  "5 A"
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }

                    Rectangle {
                        id: backgroundList0222
                        x: 1
                        y: 41
                        width: rectangle1242.width
                        height: 175
                        visible: false
                    }

                    ListView {
                        id: listView0222
                        x: 0
                        y: 41
                        width: rectangle1242.width
                        height: backgroundList222.height
                        visible: false
                        delegate: Item {
                            width: listView242.width
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
                                        chosenText0222.text = model.name
                                        chosenText33.text = model.name
                                    }
                                }
                            }
                        }
                        clip: true
                        model: ListModel {


                            ListElement {
                                name:"5"
                            }
                            ListElement {
                                name:"4"
                            }
                            ListElement {
                                name:"3"
                            }
                            ListElement {
                                name:"2"
                            }
                            ListElement {
                                name:"1"
                            }

                            ListElement {
                                name: "Custom"
                            }
                        }


                    }
                }


                Text {
                    x: 4
                    y: 179
                    width: 217
                    height: 30
                    color: "#284863"
                    text: "Clamp Type"
                    font.pixelSize: 18
                    horizontalAlignment: Text.AlignLeft
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.Wrap
                    clip: true
                }

                Rectangle {
                    id: rect888
                    x: 157
                    y: 7
                    visible: false
                    width: 161
                    height: 40
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id:okUp888
                        x: 139
                        y: 16
                        width: 14
                        visible: true
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    TextInput {
                        id:chosenText888
                        width: 104
                        height: 40
                        color: "#284863"
                        text: "20"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        visible: true
                        anchors.fill: parent
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                        anchors.rightMargin: -1
                        onClicked: {

                            if(okUp888.rotation===180)
                            {
                                okUp888.rotation=0
                                backgroundList888.visible=false
                                listView888.visible=false
                                elementText888.visible=false

                                if(chosenText888.text==="Custom") {

                                }

                                else{
                                    spinBox2.value= chosenText888.text*25000
                                }



                            }
                            else
                            {
                                okUp888.rotation=180
                                backgroundList888.visible=true
                                listView888.visible=true
                                elementText888.visible=false

                            }
                        }
                        anchors.leftMargin: -5
                    }

                    Text {
                        id:elementText888
                        x: 5
                        y: 0
                        width: 160
                        height: 40
                        visible: false
                        color: "#d4d4d4"
                        text: "5 A"
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }

                    Rectangle {
                        id:backgroundList888
                        x: 1
                        y: 41
                        width: rect888.width
                        height: 175
                        visible: false
                    }

                    ListView {
                        id:listView888
                        x: 0
                        y: 41
                        width: rect888.width
                        height: backgroundList888.height
                        visible: false
                        model: ListModel {
                            ListElement {
                                name: "20"
                            }

                            ListElement {
                                name: "16"
                            }

                            ListElement {
                                name: "12"
                            }

                            ListElement {
                                name: "8"
                            }

                            ListElement {
                                name: "4"
                            }

                            ListElement {
                                name: "Custom"
                            }
                        }
                        delegate: Item {
                            width: listView888.width
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
                                        chosenText888.text = model.name
                                        chosenText33.text = model.name

                                    }
                                }
                            }
                        }
                        clip: true
                    }
                }


                Rectangle {
                    id: rect999
                    x: 157
                    y: 7
                    width: 161
                    height: 40
                    visible: false
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id:okUp999
                        x: 139
                        y: 16
                        width: 14
                        visible: true
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    TextInput {
                        id:chosenText999
                        width: 104
                        height: 40
                        color: "#284863"
                        text: "50"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        visible: true
                        anchors.fill: parent
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                        anchors.rightMargin: -1
                        onClicked: {

                            if(okUp999.rotation===180)
                            {
                                okUp999.rotation=0
                                backgroundList999.visible=false
                                listView999.visible=false
                                elementText999.visible=false

                                if(chosenText999.text==="Custom") {

                                }

                                else{
                                    spinBox2.value= chosenText999.text*10000
                                }



                            }
                            else
                            {
                                okUp999.rotation=180
                                backgroundList999.visible=true
                                listView999.visible=true
                                elementText999.visible=false

                            }
                        }
                        anchors.leftMargin: -5
                    }

                    Text {
                        id:elementText999
                        x: 5
                        y: 0
                        width: 160
                        height: 40
                        visible: false
                        color: "#d4d4d4"
                        text: "5 A"
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }

                    Rectangle {
                        id:backgroundList999
                        x: 1
                        y: 41
                        width: rect999.width
                        height: 175
                        visible: false
                    }

                    ListView {
                        id:listView999
                        x: 0
                        y: 41
                        width: rect999.width
                        height: backgroundList999.height
                        visible: false
                        model: ListModel {
                            ListElement {
                                name: "50"
                            }

                            ListElement {
                                name: "40"
                            }

                            ListElement {
                                name: "30"
                            }

                            ListElement {
                                name: "20"
                            }

                            ListElement {
                                name: "10"
                            }

                            ListElement {
                                name: "Custom"
                            }
                        }
                        delegate: Item {
                            width: listView999.width
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
                                        chosenText999.text = model.name
                                        chosenText33.text = model.name

                                    }
                                }
                            }
                        }
                        clip: true
                    }
                }



                Rectangle {
                    id: rect777
                    x: 157
                    y: 7
                    width: 161
                    height: 40
                    visible: false
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id:okUp777
                        x: 139
                        y: 16
                        width: 14
                        visible: true
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    TextInput {
                        id:chosenText777
                        width: 104
                        height: 40
                        color: "#284863"
                        text: "100"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        visible: true
                        anchors.fill: parent
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                        anchors.rightMargin: -1
                        onClicked: {

                            if(okUp777.rotation===180)
                            {
                                okUp777.rotation=0
                                backgroundList777.visible=false
                                listView777.visible=false
                                elementText777.visible=false

                                if(chosenText777.text==="Custom") {

                                }

                                else{
                                    spinBox2.value= chosenText777.text*5000
                                }



                            }
                            else
                            {
                                okUp777.rotation=180
                                backgroundList777.visible=true
                                listView777.visible=true
                                elementText777.visible=false

                            }
                        }
                        anchors.leftMargin: -5
                    }

                    Text {
                        id:elementText777
                        x: 5
                        y: 0
                        width: 160
                        height: 40
                        visible: false
                        color: "#d4d4d4"
                        text: "5 A"
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }

                    Rectangle {
                        id:backgroundList777
                        x: 1
                        y: 41
                        width: rect777.width
                        height: 175
                        visible: false
                    }

                    ListView {
                        id:listView777
                        x: 0
                        y: 41
                        width: rect777.width
                        height: backgroundList777.height
                        visible: false
                        model: ListModel {
                            ListElement {
                                name: "100"
                            }

                            ListElement {
                                name: "80"
                            }

                            ListElement {
                                name: "60"
                            }

                            ListElement {
                                name: "40"
                            }

                            ListElement {
                                name: "20"
                            }

                            ListElement {
                                name: "Custom"
                            }
                        }
                        delegate: Item {
                            width: listView777.width
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
                                        chosenText777.text = model.name
                                        chosenText33.text = model.name

                                    }
                                }
                            }
                        }
                        clip: true
                    }
                }


                Rectangle {
                    id: rect666
                    x: 157
                    y: 7
                    width: 161
                    height: 40
                    visible: false
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id:okUp666
                        x: 139
                        y: 16
                        width: 14
                        visible: true
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    TextInput {
                        id:chosenText666
                        width: 104
                        height: 40
                        color: "#284863"
                        text: "250"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        visible: true
                        anchors.fill: parent
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                        anchors.rightMargin: -1
                        onClicked: {

                            if(okUp666.rotation===180)
                            {
                                okUp666.rotation=0
                                backgroundList666.visible=false
                                listView666.visible=false
                                elementText666.visible=false

                                if(chosenText666.text==="Custom") {

                                }

                                else{
                                    spinBox2.value= chosenText666.text*2000
                                }



                            }
                            else
                            {
                                okUp666.rotation=180
                                backgroundList666.visible=true
                                listView666.visible=true
                                elementText666.visible=false

                            }
                        }
                        anchors.leftMargin: -5
                    }

                    Text {
                        id:elementText666
                        x: 5
                        y: 0
                        width: 160
                        height: 40
                        visible: false
                        color: "#d4d4d4"
                        text: "5 A"
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }

                    Rectangle {
                        id:backgroundList666
                        x: 1
                        y: 41
                        width: rect666.width
                        height: 175
                        visible: false
                    }

                    ListView {
                        id:listView666
                        x: 0
                        y: 41
                        width: rect666.width
                        height: backgroundList666.height
                        visible: false
                        model: ListModel {
                            ListElement {
                                name: "250"
                            }

                            ListElement {
                                name: "200"
                            }

                            ListElement {
                                name: "150"
                            }

                            ListElement {
                                name: "100"
                            }

                            ListElement {
                                name: "50"
                            }

                            ListElement {
                                name: "Custom"
                            }
                        }
                        delegate: Item {
                            width: listView666.width
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
                                        chosenText666.text = model.name
                                        chosenText33.text = model.name

                                    }
                                }
                            }
                        }
                        clip: true
                    }
                }


                Rectangle {
                    id: rect555
                    x: 157
                    y: 7
                    width: 161
                    height: 40
                    visible: false
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id:okUp555
                        x: 139
                        y: 16
                        width: 14
                        visible: true
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    TextInput {
                        id:chosenText555
                        width: 104
                        height: 40
                        color: "#284863"
                        text: "1000A"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        visible: true
                        anchors.fill: parent
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                        anchors.rightMargin: -1
                        onClicked: {

                            if(okUp555.rotation===180)
                            {
                                okUp555.rotation=0
                                backgroundList555.visible=false
                                listView555.visible=false
                                elementText555.visible=false

                                if(chosenText555.text==="Custom") {

                                }

                                else{
                                    spinBox2.value= chosenText555.text*500
                                }

                            }
                            else
                            {
                                okUp555.rotation=180
                                backgroundList555.visible=true
                                listView555.visible=true
                                elementText555.visible=false
                            }
                        }
                        anchors.leftMargin: -5
                    }

                    Text {
                        id:elementText555
                        x: 5
                        y: 0
                        width: 160
                        height: 40
                        visible: false
                        color: "#d4d4d4"
                        text: "5 A"
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }

                    Rectangle {
                        id:backgroundList555
                        x: 1
                        y: 41
                        width: rect555.width
                        height: 175
                        visible: false
                    }

                    ListView {
                        id:listView555
                        x: 0
                        y: 41
                        width: rect555.width
                        height: backgroundList555.height
                        visible: false
                        model: ListModel {
                            ListElement {
                                name: "1000"
                            }

                            ListElement {
                                name: "800"
                            }

                            ListElement {
                                name: "600"
                            }

                            ListElement {
                                name: "400"
                            }

                            ListElement {
                                name: "200"
                            }

                            ListElement {
                                name: "Custom"
                            }
                        }
                        delegate: Item {
                            width: listView555.width
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
                                        chosenText555.text = model.name
                                        chosenText33.text = model.name

                                    }
                                }
                            }
                        }
                        clip: true
                    }
                }


                Rectangle {
                    id: rect444
                    x: 157
                    y: 7
                    width: 161
                    height: 40
                    visible: false
                    color: "#ffffff"
                    border.color: "#d9d9d9"
                    border.width: 1
                    Image {
                        id:okUp444
                        x: 139
                        y: 16
                        width: 14
                        visible: true
                        source: "images/okUp22.svg"
                        rotation: 0
                        fillMode: Image.PreserveAspectFit
                    }

                    TextInput {
                        id:chosenText444
                        width: 104
                        height: 40
                        color: "#284863"
                        text: "5000A"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        font.pixelSize: 17
                        verticalAlignment: Text.AlignVCenter
                        clip: true
                        anchors.leftMargin: 5
                    }

                    MouseArea {
                        visible: true
                        anchors.fill: parent
                        anchors.topMargin: -5
                        anchors.bottomMargin: -5
                        anchors.rightMargin: -1
                        onClicked: {

                            if(okUp444.rotation===180)
                            {
                                okUp444.rotation=0
                                backgroundList444.visible=false
                                listView444.visible=false
                                elementText444.visible=false

                                if(chosenText444.text==="Custom") {

                                }

                                else{
                                    spinBox2.value= chosenText444.text*100
                                }

                            }
                            else
                            {
                                okUp444.rotation=180
                                backgroundList444.visible=true
                                listView444.visible=true
                                elementText444.visible=false
                            }
                        }
                        anchors.leftMargin: -5
                    }

                    Text {
                        id:elementText444
                        x: 5
                        y: 0
                        width: 160
                        height: 40
                        visible: false
                        color: "#d4d4d4"
                        text: "5 A"
                        font.letterSpacing: -2
                        font.pixelSize: 17
                        horizontalAlignment: Text.AlignLeft
                        verticalAlignment: Text.AlignVCenter
                        wrapMode: Text.Wrap
                        font.family: "Akshar"
                        font.styleName: "SemiBold"
                    }

                    Rectangle {
                        id:backgroundList444
                        x: 1
                        y: 41
                        width: rect444.width
                        height: 175
                        visible: false
                    }

                    ListView {
                        id:listView444
                        x: 0
                        y: 41
                        width: rect444.width
                        height: backgroundList444.height
                        visible: false
                        model: ListModel {
                            ListElement {
                                name: "5000"
                            }

                            ListElement {
                                name: "4000"
                            }

                            ListElement {
                                name: "3000"
                            }

                            ListElement {
                                name: "2000"
                            }

                            ListElement {
                                name: "1000"
                            }

                            ListElement {
                                name: "Custom"
                            }
                        }
                        delegate: Item {
                            width: listView444.width
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
                                        chosenText444.text = model.name
                                        chosenText33.text = model.name

                                    }
                                }
                            }
                        }
                        clip: true
                    }
                }

            }
        }
    }

    RectangleItem {
        id: rectangle2
        x: 348
        y: 0
        width: 10
        height: 728
        radius: 0
        fillColor: "#f7f8fa"
        strokeWidth: -1
    }

    Image {
        id: imageMain
        x: 382
        y: 290
        width: 81/2
        source: "images/Mainwye.svg"
        fillMode: Image.PreserveAspectFit
    }

    Image {
        id: mainGraph
        x: 423
        y: 567
        width: 940/2
        source: "images/MainGraph.png"
        fillMode: Image.PreserveAspectFit

        Text {
            id: frequencyForGraph
            x: 305
            y: -19
            width: 119
            height: 32
            color: "#284863"
            text: textInput2.text
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: nominalVoltageForGraph
            x: 305
            y: 19
            width: 149
            height: 32
            color: "#284863"
            text: chosenText31.text
            font.pixelSize: 18
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: nominalVoltageForGraph1
            x: -68
            y: 0
            width: 65
            height: 14
            color: "#284863"
            text: "6000.0"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: nominalVoltageForGraph2
            x: -64
            y: 60
            width: 62
            height: 14
            visible: false
            color: "#284863"
            text: "3000.00"
            font.pixelSize: 17
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: nominalVoltageForGraph3
            x: -64
            y: 117
            width: 62
            height: 14
            color: "#284863"
            text: "0.0"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: timeForGraph1
            x: 0
            y: 133
            width: 160
            height: 14
            color: "#284863"
            text: "0" + " ms"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: timeForGraph2
            x: 220
            y: 133
            width: 160
            height: 14
            color: "#284863"
            text: ((1/(spinBox255.value / 10)*1000)/2).toFixed(2) + " ms"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignLeft
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: timeForGraph3
            x: 354
            y: 133
            width: 124
            height: 14
            color: "#284863"
            text: (1/(spinBox255.value / 10)*1000).toFixed(2) + " ms"
            font.pixelSize: 16
            horizontalAlignment: Text.AlignRight
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }

        Text {
            id: frequencyForGraph1
            x: 424
            y: -18
            width: 30
            height: 32
            color: "#284863"
            text: chosenText66.text
            font.pixelSize: 18
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.Wrap
            clip: true
        }
    }

    Text {
        id:graphName
        x: 364
        y: 529
        width: 217
        height: 30
        color: "#284863"
        text: "Voltage (V)"
        font.pixelSize: 18
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.Wrap
        clip: true
    }

    CustomButtonHeaderBlackBG{
        id: customButtonHeaderBlackBG
        x:12
        y:8
        width:648/2
        height:160/2
        clip: true

        RectangleItem {
            id: rectangle7
            width: 300/2
            height: 150/2
            radius: 0
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.verticalCenterOffset: 0
            anchors.leftMargin: 166
            fillColor: "#738395"
            strokeWidth: -1

            MouseArea {
                id: mouseArea1
                x: 0
                y: 0
                width: rectangle7.width
                height: rectangle7.height
                onClicked: {
                    rectangle7.fillColor="#217EFD"
                    rectangle9.fillColor="#738395"
                    rectangleForMain.visible=false
                    rectangleForUSB.visible=true
                }
            }

            Image {
                id: scan1
                x: 58
                width: 70/2
                anchors.verticalCenter: parent.verticalCenter
                source: "images/Transient.svg"
                anchors.verticalCenterOffset: -16
                antialiasing: true
                fillMode: Image.PreserveAspectFit
            }

            Text {
                y: 33
                width: 150
                height: 42
                color: "#ffffff"
                text: qsTr("Transient")
                anchors.left: parent.left
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                anchors.leftMargin: 0
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
        }

        RectangleItem {
            id: rectangle9
            x: 8
            y: 2
            width: 300/2
            height: 150/2
            radius: 0
            strokeWidth: -1
            fillColor: "#217EFD"
            Image {
                id: wifisolid
                x: 30
                y: 10
                width: 65/2
                source: "images/Delta.svg"
                fillMode: Image.PreserveAspectFit
            }
            MouseArea {
                x: 0
                y: 0
                width: rectangle9.width
                height: rectangle9.height
                onClicked: {
                    rectangle9.fillColor="#217EFD"
                    rectangle7.fillColor="#738395"

                    rectangleForMain.visible=true
                    rectangleForUSB.visible=false
                }
            }

            Text {
                x: 0
                y: 33
                width: 150
                height: 42
                color: "#ffffff"
                text: qsTr("Main")
                font.letterSpacing: -2
                font.pixelSize: 18
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }

            Image {
                id: ethernet
                x: 91
                y: 9
                width: 48/2
                source: "images/Star.svg"
                fillMode: Image.PreserveAspectFit
            }

            Text {
                x: 0
                y: 2
                width: 150
                height: 42
                color: "#ffffff"
                text: qsTr("/")
                font.letterSpacing: -2
                font.pixelSize: 30
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                wrapMode: Text.Wrap
                font.family: "Akshar"
                font.styleName: "SemiBold"
            }
        }
    }

}
