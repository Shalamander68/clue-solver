import QtQuick
import "panels"

Window {
    id: main_window
    width: 1600
    height: 480
    visible: true
    title: qsTr("Clue Solver")
    
// 3 panel layout
    Flow {
        id: layout
        anchors.fill: parent
        spacing: 0
        flow: Flow.LeftToRight

        InputPanel {
            width: 700
            height: parent.height
        }

        PlayerPanel {
            width: (parent.width - 700) * 0.5
            height: parent.height
        }

        OutputPanel {
            width: (parent.width - 700) * 0.5
            height: parent.height
        }
    }
}
