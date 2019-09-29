import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
    id: page
    height: ticketHistoryText.height + 16
    background: Rectangle {
        color: "#eeeeee"
    }
    RowLayout {
        anchors.fill: parent
        spacing: 8
        Text {
            id: historyCreator
            text: qsTr("Username")
            font.weight: Font.Medium
            font.pixelSize: 14
            font.family: "Work Sans"
            Layout.leftMargin: 16
            width: historyCreator.width
        }
        Text {
            id: ticketHistoryText
            text: qsTr("Edit or Commented")
            font.pixelSize: 14
            font.family: "Work Sans"
            width: ticketHistoryText.width
        }
        Text {
            id: historyTimestamp
            text: qsTr("2017-07-25 15:05:30")
            Layout.rightMargin: 16
            font.pixelSize: 14
            font.family: "Work Sans"
            width: historyTimestamp.width
        }
    }
}
