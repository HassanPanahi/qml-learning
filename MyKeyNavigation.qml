import QtQuick 2.0

Item {
    Row {
        Rectangle {
            id: firstRectId
            width: 100
            height: width
            border.color: "black"
            color: "green"
            focus: true
            Keys.onDigit5Pressed: {
                console.log("rect1 ")
            }
            KeyNavigation.right: firstRectId
        }

        Rectangle {
            id: secondRectId
            width: 100
            height: width
            border.color: "black"
            color: "blue"
            Keys.onDigit5Pressed: {
                console.log("rect2 ")
            }
            KeyNavigation.left: secondRectId
        }
    }

}
