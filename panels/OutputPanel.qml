import QtQuick 6.10.1

Rectangle {
    id: outputPanelanel
    color: '#141414'

    Rectangle {
        id: topbar_output
        width: parent.width
        height: 52
        color: "#292929"

        Rectangle {
            id: topbar_border_output
            width: parent.width
            height: 2
            anchors.bottom: parent.bottom
            color: "#9e9e9e"
        }
        Text {
            id: topbar_text_output
            text: "Output"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: "#FFFFFF"
            font.pixelSize: 20
        }
    }
}