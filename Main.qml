import QtQuick 6.10.1
import "panels"

Window {
    id: main_window
    width: 640
    height: 480
    visible: true
    title: qsTr("Clue Solver")
  
// 3 section layout
    Row {
        id: rows
        anchors.fill: parent

        InputPanel {
            width: parent.width * 0.4
            anchors.top: parent.top
            anchors.bottom: parent.bottom
        }

        PlayerPanel {
            width: parent.width * 0.3
            anchors.top: parent.top
            anchors.bottom: parent.bottom
        }

        OutputPanel {
            width: parent.width * 0.3
            anchors.top: parent.top
            anchors.bottom: parent.bottom
        }
    }
}
