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
        height: taskTitle.height + 16 + 3
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
            font.pixelSize: 16
            font.family: "Google Sans"
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        }
    }
    RowLayout {
        id: taskDescriptionLayout
        width: parent.width
        height: taskDescription.height + 16 + 3
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: taskTitleLayout.bottom
        anchors.topMargin: 24
        Image {
            id: descriptionIcon
            Layout.topMargin: 20
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
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
            font.family: "Google Sans"
            font.pixelSize: 16
            Layout.rightMargin: 16
            Layout.leftMargin: 24
            Layout.fillWidth: true
            placeholderText: qsTr("Enter task description")
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
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
    RowLayout {
        id: attachmentItemLayout
        height: attachmentItem.height + 16
        anchors.leftMargin: 0
        anchors.top: attachmentLayout.bottom
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        ItemDelegate {
            id: attachmentItem
            height: 56
            text: qsTr("Attached-file-name.file-format")
            rightPadding: 16
            leftPadding: 161
            bottomPadding: 16
            topPadding: 16
            highlighted: false
            font.weight: Font.Medium
            font.pixelSize: 14
            font.family: "Work Sans"
            Layout.rightMargin: 16
            Layout.leftMargin: 66
            Layout.fillWidth: true
            background: Rectangle {
                color: "#D6C3F8"
                radius: 8
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

