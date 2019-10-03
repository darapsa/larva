import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

ColumnLayout {
    id: ticketDescriptionLayout
    property alias creatorText: creatorText
    property alias ticketDescription: ticketDescription
    property alias ticketDate: ticketDate
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.left: parent.left
    anchors.leftMargin: 0
    spacing: 8

    RowLayout {
        Layout.topMargin: 8
        spacing: 8
        Text {
            id: creatorText
            text: qsTr("Username")
            Layout.rightMargin: 0
            Layout.fillWidth: true
            Layout.bottomMargin: 0
            Layout.topMargin: 0
            font.weight: Font.Medium
            font.pixelSize: 14
            font.family: "Work Sans"
            Layout.leftMargin: 16
        }
        Text {
            id: ticketDate
            text: qsTr("2017-07-25 15:05:30")
            horizontalAlignment: Text.AlignRight
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            Layout.bottomMargin: 0
            Layout.topMargin: 0
            Layout.fillWidth: false
            Layout.leftMargin: 0
            Layout.rightMargin: 16
            font.pixelSize: 12
            font.family: "Work Sans"
            color: "#8a000000"
        }
    }
    Text {
        id: ticketDescription
        text: qsTr("You may put ticket activity description here. Such as editing, commenting, or updating the ticket status.")
        wrapMode: Text.WrapAtWordBoundaryOrAnywhere
        Layout.leftMargin: 16
        Layout.rightMargin: 16
        Layout.bottomMargin: 8
        Layout.topMargin: 0
        Layout.fillWidth: true
        font.pixelSize: 14
        font.family: "Work Sans"
        width: ticketDescription.width
        color: "#000000"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

