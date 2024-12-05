// Copyright (C) 2021 The Qt Company Ltd.
// SPDX-License-Identifier: LicenseRef-Qt-Commercial OR GPL-3.0

import QtQuick 2.15
import QtQuick.Window 2.15
import UntitledProject35 1.0

Window {
    width: mainScreen.width
    height: mainScreen.height

    visible: true
    title: "UntitledProject35"
    property string sharedDipValue: "90"

     EventSettingsForQtR01 {
         // Diğer özellikler
         onDipvaluesChanged: {
             sharedDipValue = dipvalues;
         }
     }

     EventsForQtR01 {
         // Diğer özellikler
     }
    Screen01 {
        id: mainScreen
    }

}

