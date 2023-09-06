import QtQuick 2.12
import QtQuick.Window 2.12

Item {
    id : rootId
    property alias buttonText: buttonTextId.text
    width: containerRectId.width
    height: containerRectId.height
    signal buttonClicked
//    property alias color: containerRectId.color

    Rectangle {

        id : containerRectId
        width: buttonTextId.implicitWidth + 20
        height: buttonTextId.implicitHeight + 20
        color: rootId.color

        border {
            color: "blue"
            width : 3
        }

        Text {
            id : buttonTextId
            text : "Button"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Clicked ON :"+ buttonTextId.text)
                rootId.buttonClicked()
            }
        }
    }

}
