import QtQuick

Rectangle {
    id: playerPanel
    color: '#141414'
            
    Rectangle {
        id: topbar_players
        width: parent.width
        height: 52
        color: "#292929"

        Rectangle {
            id: topbar_border_players
            width: parent.width
            height: 2
            anchors.bottom: parent.bottom
            color: "#9e9e9e"
        }
        Text {
            id: topbar_text_players
            text: "Players"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            color: "#FFFFFF"
            font.pixelSize: 20
        }
    }
    Rectangle {
        id: seccond_separator
        width: 2
        height: parent.height
        anchors.right: parent.right
        anchors.top: topbar_players.bottom
        color: "#9e9e9e"
    }
}