import QtQuick 2.0

Item {

    Rectangle {
        id : overload
        width: 220
        height: 220
        x: 10
        y: 10
        color: "red"
    }

    Rectangle {
        id : normal
        width: overload.width
        height: overload.height
        x: overload.x
        y: overload.y
        color: "green"
    }

    Rectangle {
        id : silence
        width: overload.width
        height: overload.height
        x: normal.x
        y: normal.y
        color: "yellow"
    }
}
