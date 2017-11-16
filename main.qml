import QtQuick 2.0
import QtQuick.Controls 1.0


ApplicationWindow {
    visible: true
    width: 400
    height: 400
    title: qsTr("Hello World")

    Rectangle {
        id: control
        anchors.centerIn: parent;
        width : 100
        height: 50
        color : "silver"
        Text
        {
            text
            : qsTr("Button")
            anchors.centerIn: parent;
        }

        MouseArea
        {
            anchors.fill: parent;
            onClicked: console.log("click");
        }
    }

    Rectangle
    {
        Text { anchors.centerIn: parent; text : "NW" }
        width : 100
        height: 100
        anchors.top: parent.top
        anchors.left: parent.left
        color : "yellow"
    }

    Rectangle
    {
        Text { anchors.centerIn: parent; text : "NE" }
        width : 100
        height: 100
        anchors.top: parent.top
        anchors.right: parent.right
        color : "gold"
    }

    Rectangle
    {
        Text { anchors.centerIn: parent; text : "SW" }
        width : 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        color : "salmon"
    }

    Rectangle
    {
        Text { anchors.centerIn: parent; text : "SE" }
        width : 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        color : "khaki"
    }


    Rectangle
    {
        x: parent.width/2 - width/2;
        y: 40
        height: 100
        width: 100
        color: "teal"
        border.width: 1
        border.color: "red"
        Text { anchors.centerIn: parent; text  : "Top"; }
    }
}
