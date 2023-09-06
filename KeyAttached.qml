import QtQuick 2.0

Item {
    Rectangle {
        id: containedRect
        anchors.centerIn: parent
        width: 300
        height: 50
        color: "dodgerblue"
        focus: true

        Keys.onDigit1Pressed: {
            console.log("press 1")
        }
    }
}
