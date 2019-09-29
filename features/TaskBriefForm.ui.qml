import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
    id: page
    RowLayout {
        id: ticketSubjectLayout
        height: ticketSubject.height + 32
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        spacing: 8
        Label {
            id: ticketSubject
            text: qsTr("Ticket subject")
            Layout.rightMargin: 16
            Layout.fillWidth: true
            Layout.leftMargin: 16
            font.weight: Font.Medium
            font.family: "Work Sans"
            font.pixelSize: 20
        }
    }
    RowLayout {
        id: ticketMetaLayout
        anchors.top: ticketSubjectLayout.bottom
        anchors.topMargin: 0
        height: userAvatar.height + 16
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        spacing: 8
        Rectangle {
            id: userAvatar
            height: 24
            width: 24
            radius: 8
            Layout.leftMargin: 16
            Image {
                anchors.fill: parent
                source: "https://via.placeholder.com/32x32.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Text {
            id: ticketCreator
            text: qsTr("Username")
            font.weight: Font.Medium
            width: ticketCreator.width
            font.family: "Work Sans"
            verticalAlignment: Text.AlignVCenter
            elide: Text.ElideRight
            font.pixelSize: 14
        }
        Text {
            id: ticketCreatedText
            text: qsTr("created this issue")
            width: ticketCreatedText.width
        }
        Text {
            id: ticketCreated
            text: qsTr("2017-07-25 14:05:30")
            Layout.rightMargin: 16
            width: ticketCreated.width
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

