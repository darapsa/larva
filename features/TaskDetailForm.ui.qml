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
    property alias backButton: backButton

    header: ToolBar {
        background: Rectangle {
            color: "#FAFFFFFF"
        }
        RowLayout {
            id: toolBar
            anchors.fill: parent
            spacing: 0
            ToolButton {
                id: backButton
                icon.name: "back-button"
                icon.source: "/components/icons/arrow-back-24px.svg"
                highlighted: true
            }
            ToolButton {
                id: toolMoreButton
                icon.name: "more-button"
                icon.source: "/components/icons/more-vert-24px.svg"
                highlighted: true
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            }
        }
    }

    RowLayout {
        id: taskTitleLayout
        height: 56
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        Layout.fillWidth: true

        TextField {
            id: taskTitle
            Layout.rightMargin: 16
            Layout.leftMargin: 66
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
        anchors.topMargin: 24
        Image {
            id: descriptionIcon
            sourceSize.height: 24
            sourceSize.width: 24
            Layout.leftMargin: 12
            opacity: 0.54
            Layout.minimumHeight: 24
            Layout.minimumWidth: 24
            Layout.preferredHeight: 24
            Layout.preferredWidth: 24
            source: "/components/icons/notes-24px.svg"
        }
        TextField {
            id: taskDescription
            Layout.rightMargin: 16
            Layout.leftMargin: 24
            Layout.fillWidth: true
            placeholderText: qsTr("Enter task description")
        }
    }
    RowLayout {
        id: attachmentLayout
        height: 56
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: taskDescriptionLayout.bottom
        anchors.topMargin: 24
        Image {
            id: attachmentIcon
            sourceSize.height: 24
            sourceSize.width: 24
            Layout.leftMargin: 12
            opacity: 0.54
            Layout.minimumHeight: 24
            Layout.minimumWidth: 24
            Layout.preferredHeight: 24
            Layout.preferredWidth: 24
            source: "/components/icons/attachment-24px.svg"
        }
        Label {
            color: "#000000"
            text: qsTr("Attachment")
            font.weight: Font.Medium
            font.pixelSize: 16
            font.family: "Work Sans"
            verticalAlignment: Text.AlignVCenter
            Layout.leftMargin: 24
            Layout.fillWidth: true
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

