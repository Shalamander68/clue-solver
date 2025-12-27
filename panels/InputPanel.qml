 import QtQuick 6.10.1
 
 Rectangle {
    id: inputPanel
    color: '#141414'

    Rectangle {
        id: topbar_input
        width: parent.width
        height: 52
        color: "#292929"

        Rectangle {
            id: topbar_border_input
            width: parent.width
            height: 2
            anchors.bottom: parent.bottom
            color: "#9e9e9e"
        }
        Text {
            id: topbar_text_input
            text: "Input"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: "#FFFFFF"
            font.pixelSize: 20
        }
    }
    Rectangle {
        id: first_separator
        width: 2
        height: parent.height
        anchors.right: parent.right
        anchors.top: topbar_input.bottom
        color: "#9e9e9e"
    }
}