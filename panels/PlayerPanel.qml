import QtQuick
import QtQuick.Controls

// basic formating
Rectangle {
    id: playerPanel
    color: '#141414'
            
   Text {
        id: topbar_text_players
        text: "Players"
        anchors.top: parent.top
        anchors.horizontalCenter: player_actions.horizontalCenter
        anchors.topMargin: 12
        color: "#FFFFFF"
        font.pixelSize: 20
    }

    Rectangle {
        id: seccond_separator
        width: 2
        height: parent.height
        anchors.right: parent.right
        anchors.top: topbar_players.top
        color: "#9e9e9e"
    }

    Button {
        id: submit_button
        text: "Submit"
        height: 65

        anchors.left: player_actions.right
        anchors.right: parent.right
        anchors.top: player_actions.top

        anchors.topMargin: 10
        anchors.rightMargin: 40
        anchors.leftMargin: 40
        anchors.bottomMargin: 25

        contentItem: Text {
            text: parent.text
            color: "white"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 25
        }

        background: Rectangle {
            radius: 6
            color: '#2a2a2a'
            border.color: '#1ce6b3'
            border.width: 2
        }
    }
    Button {
        id: undo_button
        text: "Undo"

        anchors.left: player_actions.right
        anchors.right: parent.right
        anchors.top: submit_button.bottom
        anchors.bottom: player_actions.bottom

        anchors.topMargin: 10
        anchors.rightMargin: 40
        anchors.leftMargin: 40
        anchors.bottomMargin: 10

        contentItem: Text {
            text: parent.text
            color: "white"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 25
        }

        background: Rectangle {
            radius: 6
            color: '#2a2a2a'
            border.color: '#1ce6b3'
            border.width: 2
        }
    }
//player actions
    Row {
        id: player_actions
        anchors.top: topbar_text_players.bottom
        anchors.left: parent.left
        anchors.leftMargin: 12
        anchors.topMargin: 12
        spacing: 16

        Repeater {
            model: [
                { key: "player1", label: "D", highlight: '#42882d' },
                { key: "player2", label: "M", highlight: '#42882d' },
                { key: "player3", label: "R", highlight: '#42882d' },
                { key: "player4", label: "E", highlight: '#42882d' },
            ]

            Column {
                spacing: 8

                // Track which button is currently selected for this player
                property string selected: ""

                Rectangle {
                    radius: 6
                    width: 80
                    height: 42
                    color: "#2a2a2a"
                    border.color: modelData.highlight
                    border.width: 2

                    Text {
                        id: player_text
                        text: modelData.label
                        font.pixelSize: 20
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        color: 'white'
                    }
                }

                Button {
                    id: hasButton
                    text: "Have"
                    checkable: true
                    width: 80
                    height: 42

                    contentItem: Text {
                        text: parent.text
                        color: "white"
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: 14
                    }

                    background: Rectangle {
                        radius: 6
                        color: hasButton.checked ? modelData.highlight : "#2a2a2a"
                        border.color: modelData.highlight
                        border.width: 2
                    }

                    onClicked: {
                        if (selected === "has") {
                            // Unselect if clicked again
                            hasButton.checked = false
                            selected = ""
                            backend.setSelectedMenu(modelData.key + "_none") // optional backend logic
                        } else {
                            // Select this, unselect other
                            hasButton.checked = true
                            noneButton.checked = false
                            selected = "has"
                            backend.setSelectedMenu(modelData.key + "_has")
                        }
                    }
                }

                Button {
                    id: noneButton
                    text: "None"
                    checkable: true
                    width: 80
                    height: 42

                    contentItem: Text {
                        text: parent.text
                        color: "white"
                        anchors.fill: parent
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pixelSize: 14
                    }

                    background: Rectangle {
                        radius: 6
                        color: noneButton.checked ? modelData.highlight : "#2a2a2a"
                        border.color: modelData.highlight
                        border.width: 2
                    }

                    onClicked: {
                        if (selected === "none") {
                            // Unselect if clicked again
                            noneButton.checked = false
                            selected = ""
                            backend.setSelectedMenu(modelData.key + "_none") // optional backend logic
                        } else {
                            // Select this, unselect other
                            noneButton.checked = true
                            hasButton.checked = false
                            selected = "none"
                            backend.setSelectedMenu(modelData.key + "_none")
                        }
                    }
                }
            }
        }
    }
// Direct Input
    Item {
        id: direct_input

        anchors.top: player_actions.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom

        anchors.topMargin: 12
        anchors.rightMargin: 12
        anchors.leftMargin: 12
        anchors.bottomMargin: 12

        property var allItems: ({
            "Suspect": [
                { key: "white",  label: "Mrs. White" },
                { key: "red",    label: "Miss Scarlet" },
                { key: "green",  label: "Mr. Green" },
                { key: "yellow", label: "Colonel Mustard" },
                { key: "blue",   label: "Mrs. Peacock" },
                { key: "purple", label: "Mr. Plum" }
            ],
            "Weapon": [
                { key: "knife",      label: "Knife" },
                { key: "candlestick",label: "Candlestick" },
                { key: "revolver",   label: "Revolver" },
                { key: "rope",       label: "Rope" },
                { key: "leadpipe",   label: "Lead Pipe" },
                { key: "wrench",     label: "Wrench" }
            ],
            "Room": [
                { key: "kitchen",      label: "Kitchen" },
                { key: "ballroom",     label: "Ballroom" },
                { key: "conservatory", label: "Conservatory" },
                { key: "dining",       label: "Dining Room" },
                { key: "library",      label: "Library" },
                { key: "study",        label: "Study" }
            ],
            "All" : [

            ]
        })

        Text {
            id: direct_input_text
            text: "Direct Input"
            font.pixelSize: 20
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            color: 'white'
        }

        Text {
            id: sentance1_text
            text: "Player"
            font.pixelSize: 15
            anchors.top: direct_input_text.bottom
            anchors.leftMargin: 6
            anchors.topMargin: 12
            color: 'white'
        }

        ComboBox {
            id: player_dropdown
            width: 40
            anchors.top: direct_input_text.bottom
            anchors.left: sentance1_text.right
            anchors.leftMargin: 6
            anchors.topMargin: 12

            model: [ "D", "M", "R", "E", "A" ]

            onActivated: {
                console.log("Selected:", currentText)
                backend.setSelectedMenu(currentText)
            }
        }
        ComboBox {
            id: status_dropdown
            width: 125
            anchors.top: direct_input_text.bottom
            anchors.left: player_dropdown.right
            anchors.leftMargin: 6
            anchors.topMargin: 12

            model: [ "has card", "does not have card" ]

            onActivated: {
                console.log("Selected:", currentText)
                backend.setSelectedMenu(currentText)
            }
        }

        Text {
            id: sentance2_text
            text: "of type"
            font.pixelSize: 15
            anchors.top: sentance1_text.top
            anchors.left: status_dropdown.right
            anchors.leftMargin: 6
            color: 'white'
        }

        ComboBox {
            id: type_dropdown
            width: 75
            anchors.left: sentance2_text.right
            anchors.top: player_dropdown.top
            anchors.leftMargin: 6

            model: ["All", "Suspect", "Weapon", "Room"]

            onActivated: {
                results_dropdown.model = allItems[currentText]
                results_dropdown.currentIndex = -1   // clear selection
            }
        }

        Text {
            id: sentance3_text
            text: "card is"
            font.pixelSize: 15
            anchors.top: sentance1_text.top
            anchors.left: type_dropdown.right
            anchors.leftMargin: 6
            color: 'white'
        }

        ComboBox {
            id: has_results_dropdown
            width: 200
            anchors.left: sentance3_text.right
            anchors.top: player_dropdown.top
            anchors.leftMargin: 6

            textRole: "label"
            valueRole: "key"

            model: []   // starts empty

            onActivated: {
                backend.setSelectedMenu(currentValue)
            }
        }
    }
}