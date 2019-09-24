import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
    id: page
    title: qsTr("Profile")
    background: Rectangle {
        color: "#FFFFFF"
    }

    property alias usernameLabel: usernameLabel
    property alias fullnameLabel: fullnameLabel
    property alias userEmailLabel: userEmailLabel

    Rectangle {
        id: avatarLayout
        width: 80
        height: 80
        color: "#196d22e9"
        radius: 100
        anchors.top: parent.top
        anchors.topMargin: 32
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: 0
    }
    RowLayout {
        id: fullnameRowLayout
        height: 56
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: avatarLayout.bottom
        anchors.topMargin: 32
        width: parent.width

        Image {
            width: 24
            height: 24
            opacity: 0.54
            sourceSize.height: 24
            sourceSize.width: 24
            Layout.leftMargin: 16
            Layout.alignment: Qt.AlignVCenter
            fillMode: Image.PreserveAspectFit
            source: "/components/icons/profile-24px.svg"
            antialiasing: true
        }

        Label {
            id: fullnameLabel
            Layout.rightMargin: 16
            Layout.leftMargin: 24
            font.pointSize: 16
            font.family: "Work Sans"
            Layout.fillWidth: true
            text: qsTr("Full name")
            Layout.alignment: Qt.AlignVCenter
        }
    }
    RowLayout {
        id: usernameRowLayout
        anchors.horizontalCenter: parent.horizontalCenter
        width: parent.width
        height: 56
        Layout.alignment: Qt.AlignVCenter
        anchors.top: fullnameRowLayout.bottom
        anchors.topMargin: 16

        Image {
            width: 24
            height: 24
            opacity: 0.54
            sourceSize.height: 24
            sourceSize.width: 24
            Layout.leftMargin: 16
            Layout.alignment: Qt.AlignVCenter
            fillMode: Image.PreserveAspectFit
            source: "/components/icons/user-24px.svg"
            antialiasing: true
        }

        Label {
            id: usernameLabel
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.rightMargin: 16
            Layout.leftMargin: 24
            font.pointSize: 16
            font.family: "Work Sans"
            Layout.fillWidth: true
            text: qsTr("Username")
        }
    }

    RowLayout {
        id: userEmail
        height: 56
        anchors.topMargin: 16
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: usernameRowLayout.bottom
        width: parent.width
        spacing: 8

        Image {
            width: 24
            height: 24
            opacity: 0.54
            sourceSize.height: 24
            sourceSize.width: 24
            Layout.leftMargin: 16
            Layout.alignment: Qt.AlignVCenter
            fillMode: Image.PreserveAspectFit
            source: "/components/icons/email-24px.svg"
            antialiasing: true
        }

        Label {
            id: userEmailLabel
            Layout.fillWidth: true
            text: qsTr("Your@email.com")
            Layout.rightMargin: 16
            Layout.leftMargin: 24
            verticalAlignment: Text.AlignVCenter
            font.family: "Work Sans"
            font.pointSize: 16
        }
    }

    ItemDelegate {
        id: profileSettings
        height: 56
        anchors.bottom: profileLogout.top
        anchors.bottomMargin: 8
        Layout.fillWidth: true
        text: qsTr("Settings")
        display: AbstractButton.TextOnly
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        font.weight: Font.Medium
        font.family: "Work Sans"
        font.pointSize: 16
    }
    ItemDelegate {
        id: profileLogout
        height: 56
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        Layout.fillWidth: true
        Text {
            text: qsTr("Log out")
            anchors.left: parent.left
            anchors.leftMargin: 16
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            wrapMode: Text.WordWrap
            font.weight: Font.Medium
            font.family: "Work Sans"
            font.pointSize: 16
            color: "#f44336"
        }
        display: AbstractButton.TextOnly
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

