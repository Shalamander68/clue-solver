import QtQuick
import QtQuick.Controls
//topbar + formating
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
//suspects
    Text {
        id: suspects_text
        text: "Suspects"
        anchors.top: topbar_input.bottom
        anchors.horizontalCenter: suspects.horizontalCenter
        color: '#e7e7e7'
        font.pixelSize: 20
        anchors.margins: 12
    }

    Column {
        id: suspects
        anchors.top: suspects_text.bottom
        anchors.margins: 12
        anchors.left: parent.left
        anchors.leftMargin: 12
        spacing: 8

        ButtonGroup {
             id: input_group
             exclusive: true
        }

        Repeater {
            model: [
                { key: "white",  label: "Mrs. White",      highlight: '#8d8d8d' },
                { key: "red",    label: "Miss Scarlet",    highlight: '#a00000' },
                { key: "green",  label: "Mr. Green",       highlight: '#006118' },
                { key: "yellow", label: "Colonol Mustard", highlight: '#b86800' },
                { key: "blue",   label: "Mrs. Peacock",    highlight: '#090085' },
                { key: "purple", label: "Mr. Plum",        highlight: '#540069' },
            ]
            Button {
                text: modelData.label
                checkable: true
                ButtonGroup.group: input_group
                width: 160
                height: 42

                contentItem: Text {
                    text: parent.text
                    color: "white"
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.fill: parent
                }

                background: Rectangle {
                    radius: 6
                    color: parent.checked
                        ? modelData.highlight
                        : "#2a2a2a"

                    border.color: modelData.highlight
                    border.width: 2
                }

                onClicked: backend.setSelectedMenu(modelData.key)
            }
        }
    }
// weapon
    Text {
        id: weapon_text
        text: "Weapon"
        anchors.top: topbar_input.bottom
        anchors.horizontalCenter: weapon.horizontalCenter
        color: '#e7e7e7'
        font.pixelSize: 20
        anchors.margins: 12
    }

    Column {
        id: weapon
        anchors.top: suspects_text.bottom
        anchors.margins: 12
        anchors.left: suspects.right
        anchors.leftMargin: 12
        spacing: 8

        ButtonGroup {
             id: weapon_group
             exclusive: true
        }

        Repeater {
            model: [
                { key: "knife",       label: "Knife",       highlight: '#79004a' },
                { key: "wrench",      label: "Wrench",      highlight: '#79004a' },
                { key: "candlestick", label: "Candlestick", highlight: '#79004a' },
                { key: "rope",        label: "Rope",        highlight: '#79004a' },
                { key: "leadPipe",    label: "Lead Pipe",   highlight: '#79004a' },
                { key: "revolver",    label: "Revolver",    highlight: '#79004a' },
            ]
            Button {
                text: modelData.label
                checkable: true
                ButtonGroup.group: weapon_group
                width: 160
                height: 42

                contentItem: Text {
                    text: parent.text
                    color: "white"
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.fill: parent
                }

                background: Rectangle {
                    radius: 6
                    color: parent.checked
                        ? modelData.highlight
                        : "#2a2a2a"

                    border.color: modelData.highlight
                    border.width: 2
                }

                onClicked: backend.setSelectedMenu(modelData.key)
            }
        }
    }
// Room
    Text {
        id: room_text
        text: "Room"
        anchors.top: topbar_input.bottom
        anchors.horizontalCenter: room.horizontalCenter
        color: '#e7e7e7'
        font.pixelSize: 20
        anchors.margins: 12
    }
    Grid {
        id: room
        anchors.top: room_text.bottom
        anchors.left: weapon.right
        anchors.margins: 12

        columns: 2
        rowSpacing: 8
        columnSpacing: 12

        ButtonGroup {
            id: room_group
            exclusive: true
        }

        Repeater {
            model: [
                { key: "hall",         label: "Hall",         highlight: '#005f63' },
                { key: "lounge",       label: "Lounge",       highlight: "#005f63" },
                { key: "dining",       label: "Dining Room",  highlight: "#005f63" },
                { key: "kitchen",      label: "Kitchen",      highlight: "#005f63" },
                { key: "ballroom",     label: "Ballroom",     highlight: "#005f63" },
                { key: "conservatory", label: "Conservatory", highlight: "#005f63" },
                { key: "Billiard",     label: "Billiard",     highlight: "#005f63" },
                { key: "library",      label: "Library",      highlight: "#005f63" },
                { key: "study",        label: "Study",        highlight: "#005f63" },
            ]

            Button {
                width: 160
                height: 42
                text: modelData.label
                checkable: true
                ButtonGroup.group: room_group

                contentItem: Text {
                    text: parent.text
                    color: "white"
                    font.pixelSize: 14
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.fill: parent
                }

                background: Rectangle {
                    radius: 6
                    color: parent.checked
                        ? modelData.highlight
                        : "#2a2a2a"

                    border.color: modelData.highlight
                    border.width: 2
                }

                onClicked: backend.setSelectedMenu(modelData.key)
            }
        }
    }
}
