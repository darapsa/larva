import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import QtGraphicalEffects 1.0

Page {
    id: taskBriefComponents
    height: ticketSubjectLayout.height + ticketMetaLayout.height
    property alias ticketSubject: ticketSubject
    property alias userAvatar: userAvatar
    property alias ticketCreator: ticketCreator
    property alias ticketCreatedText: ticketCreatedText
    property alias ticketCreatedTimestamp: ticketCreatedTimestamp

    background: Rectangle {
        color: "#FFFFFF"
    }

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
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WrapAtWordBoundaryOrAnywhere
            Layout.rightMargin: 16
            Layout.fillWidth: true
            Layout.leftMargin: 16
            font.weight: Font.Medium
            font.family: "Work Sans"
            font.pixelSize: 20
        }
    }
    ColumnLayout {
        id: ticketMetaLayout
        anchors.top: ticketSubjectLayout.bottom
        anchors.right: parent.right
        anchors.left: parent.left
        spacing: 8
        RowLayout {
            id: creatorInfo
            Layout.leftMargin: 16
            Layout.topMargin: 8
            spacing: 8
            Layout.fillWidth: true

            Image {
                id: userAvatar
                width: 24
                height: 24
                source: "https://via.placeholder.com/24x24.png"
                fillMode: Image.PreserveAspectCrop
                layer.enabled: true
                layer.effect: OpacityMask {
                    maskSource: userAvatarMask
                }
            }
            Rectangle {
                id: userAvatarMask
                height: 24
                color: "#000000"
                width: 24
                radius: 12
                visible: false
            }
            Text {
                id: ticketCreator
                text: qsTr("Username")
                Layout.leftMargin: 8
                font.weight: Font.Medium
                font.family: "Work Sans"
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
                font.pixelSize: 14
            }
            Text {
                id: ticketCreatedText
                text: qsTr("created this issue")
                Layout.rightMargin: 16
                font.pixelSize: 14
                font.family: "Work Sans"
                Layout.fillWidth: true
            }
        }

        Text {
            id: ticketCreatedTimestamp
            text: qsTr("2017-07-25 14:05:30")
            Layout.bottomMargin: 16
            Layout.fillHeight: true
            Layout.leftMargin: 16
            font.pixelSize: 12
            font.family: "Work Sans"
            Layout.fillWidth: true
            Layout.rightMargin: 16
            width: ticketCreatedTimestamp.width
            color: "#8a000000"
        }
    }
}
