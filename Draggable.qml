import QtQuick 2.0

Item {
    id: itemId
    width: parent.width / 2
    height: parent.height / 2
    anchors.centerIn: parent
    Rectangle {
        id : rectId
        x: -2
        y: 0
        width: parent.width
        height: parent.height
        color : "red"

        Rectangle {
            id : rectBoxId
            width: parent.width / 2
            height: parent.height / 2
            color: "blue"
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onHoveredChanged: {
                    if (containsMouse === true)
                        rectBoxId.color = "black"
                    else
                        rectBoxId.color = "blue"
                }

                onClicked: {
                    rectBoxId.x = mouse.x - rectBoxId.width / 2
                }

                drag.target: rectBoxId
                drag.axis: Drag.XAndYAxis
                drag.minimumX: 0
                drag.maximumX: rectId.width - rectBoxId.width

                drag.minimumY: 0
                drag.maximumY: rectId.height - rectBoxId.height
            }
        }



    }

}
