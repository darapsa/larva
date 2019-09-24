import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
    id: page
    property alias listView: listView

    ListView {
        id: listView
        width: parent.width
        height: parent.height
        anchors.topMargin: 8
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        spacing: 12

        Rectangle {
            id: rectangle
            anchors.fill: parent
            z: -1
        }

        ScrollBar.vertical: ScrollBar {}
    }
    RoundButton {
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        anchors.right: parent.right
        anchors.rightMargin: 8
        highlighted: true
        icon.source: "/components/icons/add-24px.svg"
        height: 64
        width: 64
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

