import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
    id: page
    background: Rectangle {
        color: "#FFFFFF"
    }
    height: attachedItem.height
    RowLayout {
        id: attachedItem
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        spacing: 8

        ItemDelegate {
            text: qsTr("filename.fileformat")
            Layout.rightMargin: 0
            Layout.leftMargin: 0
            Layout.bottomMargin: 0
            Layout.topMargin: 0
            font.pixelSize: 14
            font.family: "Work Sans"
            Layout.fillWidth: true
            icon.source: "../components/icons/folder-24px.svg"
            background: Rectangle {
                color: "#1A673AB7"
                radius: 8
            }
        }
    }
}
