import QtQuick 2.4
import QtQuick.Window 2.11

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Signal and Slots Demo")

    Rectangle {
        id: rectangleId
        width: 200
        height: 300
        color: "red"
        gradient: 20
        signal greed(string message)
        function myGreeting(message) {
            console.log(message)
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                rectangleId.greed("Hello there")
            }
        }
    }
}
