import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
    id: page
    title: qsTr("Task detail page")

    property alias backButton: backButton
    property alias listView: listView
    property alias ticketBriefForm: ticketBriefForm

    header: ToolBar {
        background: Rectangle {
            color: "#FAFFFFFF"
        }
        RowLayout {
            id: toolBar
            anchors.fill: parent
            spacing: 8
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
    StackView {
        id: contentView
        anchors.fill: parent
        background: Rectangle {
            color: "#FFFFFF"
        }
        TaskBriefForm {
            id: ticketBriefForm
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
        }
        RowLayout {
            id: separator
            height: separatorLabel.height + 32
            anchors.top: ticketBriefForm.bottom
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            Label {
                id: separatorLabel
                height: 20
                color: "#000000"
                text: qsTr("Activities")
                Layout.leftMargin: 16
                verticalAlignment: Text.AlignVCenter
                font.weight: Font.Medium
                font.pixelSize: 16
                font.family: "Work Sans"
            }
        }
        ListView {
            id: listView
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: separator.bottom
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            spacing: 0

            ScrollBar.vertical: ScrollBar {}
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

