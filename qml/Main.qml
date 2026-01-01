import QtQuick
import QtQuick.Controls
import "panels"

Window {
    id: main_window
    width: 1600
    height: 800
    visible: true
    visibility: Window.Maximized
    title: qsTr("Clue Solver")

// 3 panel layout
    Flow {
        id: layout
        anchors.fill: parent
        spacing: 0
        flow: Flow.TopToBottom

        InputPanel {
            width: 700
            height: 400
        }

        PlayerPanel {
            width: 700
            height: parent.height - 400
        }

        OutputPanel {
            width:  parent.width - 700
            height: parent.height
        }
    }
}
