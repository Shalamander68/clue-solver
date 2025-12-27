import QtQuick

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

         Rectangle {
            id: input_rectangle
            width: parent.width * 0.4
            height: parent.height
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
    
        Rectangle {
            id: players_rectangle
            width: parent.width * 0.3
            height: parent.height
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
    
        Rectangle {
            id: output_rectangle
            width: parent.width * 0.3
            height: parent.height
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
    }
}
