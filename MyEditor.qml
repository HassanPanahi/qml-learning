import QtQuick 2.0
import QtQuick.Window 2.12

Item {

    Row {
        x: 10
        y: 10
        spacing: 10
       Rectangle {
           id : firstNameId
           width: firstNameText.implicitWidth + 20
           height: firstNameText.implicitHeight + 20
           color: "beige"

           Text {
               id: firstNameText
               anchors.centerIn: parent
               text: "First Name: "
           }

       }

       Rectangle {
           id: firstNameTextRectId
           color: "beige"
           width: firstNameTextId.implicitWidth + 20
           height: firstNameTextId.implicitHeight + 20

           TextInput {
               id: firstNameTextId
               anchors.centerIn: parent
               focus: true
               text: "Type in your first name"
           }
       }
    }
}
