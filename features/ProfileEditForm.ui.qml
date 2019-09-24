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

    property alias usernameText: usernameText
    property alias fullnameText: fullnameText
    property alias userEmailText: userEmailText

    header: ToolBar {
        background: Rectangle {
            color: "#FAFFFFFF"
        }
        RowLayout {
            anchors.fill: parent
            spacing: 0
            id: toolBar

            ToolButton {
                id: backButton
                icon.name: "back-button"
                icon.source: "/components/icons/arrow-back-24px.svg"
                highlighted: true
            }
            Label {
                text: pageView.currentItem.title
                Layout.leftMargin: 16
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignLeft
                wrapMode: Text.WordWrap
                font.family: "Work Sans"
                font.weight: Font.Medium
                font.pointSize: 20
                color: "#000000"
                Layout.fillWidth: true
            }
            Button {
                id: saveProfileButton
                text: qsTr("Save")
                leftPadding: 8
                rightPadding: 8
                padding: 8
                highlighted: true
                font.weight: Font.Medium
                display: AbstractButton.TextOnly
                font.family: "Work Sans"
                font.capitalization: Font.MixedCase
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                Layout.rightMargin: 8
            }
        }
    }
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
        anchors.top: avatarLayout.bottom
        anchors.topMargin: 32
        anchors.horizontalCenter: parent.horizontalCenter
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

        TextField {
            id: fullnameText
            Layout.rightMargin: 16
            Layout.leftMargin: 24
            font.pointSize: 16
            font.family: "Work Sans"
            Layout.fillWidth: true
            placeholderText: qsTr("Full name")
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

        TextField {
            id: usernameText
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.rightMargin: 16
            Layout.leftMargin: 24
            font.pointSize: 16
            font.family: "Work Sans"
            Layout.fillWidth: true
            placeholderText: qsTr("Username")
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

        TextField {
            id: userEmailText
            Layout.fillWidth: true
            placeholderText: qsTr("Your@email.com")
            Layout.rightMargin: 16
            Layout.leftMargin: 24
            verticalAlignment: Text.AlignVCenter
            font.family: "Work Sans"
            font.pointSize: 16
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

