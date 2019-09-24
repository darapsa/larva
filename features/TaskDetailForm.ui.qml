import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
    id: page
    title: qsTr("Task detail page")
    background: Rectangle {
        color: "#FFFFFF"
    }

    property alias taskTitle: taskTitle
    property alias taskDescription: taskDescription

    Row {
        id: row
        anchors.fill: parent
        RowLayout {
            id: taskTitleLayout
            width: parent.width
            height: 56
            TextField {
                id: taskTitle
                Layout.rightMargin: 16
                Layout.leftMargin: 72
                Layout.fillWidth: true
                placeholderText: qsTr("Enter task title")
            }
        }
        RowLayout {
            id: taskDescriptionLayout
            width: parent.width
            height: 56
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: taskTitleLayout.bottom
            anchors.topMargin: 16
            TextField {
                id: taskDescription
                Layout.rightMargin: 16
                Layout.leftMargin: 72
                Layout.fillWidth: true
                placeholderText: qsTr("Enter task description")
            }
        }
        RowLayout {
            id: attachmentLayout
            height: 56
            anchors.top: taskDescriptionLayout.bottom
            anchors.topMargin: 16
            width: parent.width
            Image {
                opacity: 0.54
                sourceSize.height: 24
                sourceSize.width: 24
                Layout.leftMargin: 16
                source: "/components/icons/attachment-24px.svg"
            }
            ItemDelegate {
                id: itemDelegate
                highlighted: false


                /*
                background: Rectangle {
                    color: Material.primary
                    radius: 8
                }
                */
                anchors.verticalCenter: parent.verticalCenter
                Layout.fillWidth: true
                Layout.fillHeight: true
                Label {
                    text: qsTr("Attachment")
                    anchors.left: parent.left
                    anchors.leftMargin: 24
                    anchors.verticalCenterOffset: 0
                    leftPadding: 0
                    anchors.verticalCenter: parent.verticalCenter
                    font.weight: Font.Medium
                    font.pixelSize: 20
                    font.family: "Work Sans"
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

