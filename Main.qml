import QtQuick
import "panels"

Window {
    id: main_window
    width: 1600
    height: 800
    visible: true
    visibility: Window.Maximized
    title: qsTr("Clue Solver")

    Component.onCompleted: {
        if (Qt.application.screens.length > 1) {
            // Move window to monitor 2 (index 1)
            var screen2 = Qt.application.screens[1]
            main_window.x = screen2.x
            main_window.y = screen2.y
            main_window.width = screen2.width
            main_window.height = screen2.height
        }
    }

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
