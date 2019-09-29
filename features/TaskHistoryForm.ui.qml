import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
    id: page
    background: Rectangle {
        color: "#eeeeee"
    }
    height: ticketDescriptionLayout.height + ticketDateLayout.height
    property alias creator: creator
    property alias ticketDescription: ticketDescription
    property alias ticketDate: ticketDate

    RowLayout {
        id: ticketDescriptionLayout
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        spacing: 8
        Text {
            id: creator
            text: qsTr("Username")
            Layout.bottomMargin: 8
            Layout.topMargin: 8
            font.weight: Font.Medium
            font.pixelSize: 14
            font.family: "Work Sans"
            Layout.leftMargin: 16
        }
        Text {
            id: ticketDescription
            text: qsTr("Edit or Commented")
            Layout.bottomMargin: 8
            Layout.topMargin: 8
            Layout.fillWidth: true
            font.pixelSize: 14
            font.family: "Work Sans"
            width: ticketDescription.width
            color: "#000000"
        }
    }
    RowLayout {
        id: ticketDateLayout
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: ticketDescriptionLayout.bottom
        anchors.topMargin: 0
        spacing: 8
        Text {
            id: ticketDate
            text: qsTr("2017-07-25 15:05:30")
            Layout.bottomMargin: 8
            Layout.topMargin: 8
            Layout.fillWidth: true
            Layout.leftMargin: 16
            Layout.rightMargin: 16
            font.pixelSize: 12
            font.family: "Work Sans"
            color: "#8a000000"
        }
    }
}



