/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15
import UntitledProject35 1.0
import QtCharts 2.3

Rectangle {
    id: rectangle
    width: Constants.width
    height: Constants.height
    color: "#e02020"
    border.color: "#ffffff"


    ChartView {
        id: hBar
        x: 473
        y: 283
        width: 300
        height: 300
        HorizontalBarSeries {
            name: "HorizontalBarSeries"
            BarSet {
                label: "Set1"
                values: [2, 2, 3]
            }

            BarSet {
                label: "Set2"
                values: [5, 1, 2]
            }

            BarSet {
                label: "Set3"
                values: [3, 5, 8]
            }
        }
    }

}
