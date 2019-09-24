import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Rectangle {
    id: rectangle
    color: "#fff"
    border.width: 0

    property alias backButton: backButton
    property alias instructionLabel: instructionLabel
    property alias userEmail: userEmail
    property alias passTextField: passTextField
    property alias createPassButton: createPassButton
    property alias emailAddressLabel: emailAddressLabel

    ToolBar {
        id: toolbar
        height: 56
        font.family: "Google Sans"
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        background: Rectangle {
            color: "#FFF"
        }

        RowLayout {
            anchors.fill: parent
            spacing: 8

            ToolButton {
                id: backButton
                icon.name: "back-icon"
                icon.source: "/components/icons/arrow-back-24px.svg"
                highlighted: true
            }
        }
    }

    Label {
        id: instructionLabel
        x: 16
        y: 232
        color: "#2b2626"
        text: qsTr("Create password")
        anchors.bottom: userEmail.top
        anchors.bottomMargin: 16
        font.letterSpacing: 0.25
        lineHeight: 1
        font.weight: Font.Bold
        wrapMode: Text.WordWrap
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.right: parent.right
        anchors.rightMargin: 88

        font.family: "Google Sans"
        font.pointSize: 34
    }

    RowLayout {
        id: userEmail
        height: 56
        anchors.bottom: passTextFieldLayout.top
        anchors.bottomMargin: 16
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
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
            id: emailAddressLabel
            Layout.fillWidth: true
            text: qsTr("your@email.com")
            Layout.leftMargin: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font.family: "Google Sans"
            font.pointSize: 16
            color: "#99000000"
        }
    }
    RowLayout {
        id: passTextFieldLayout
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: createPassButton.top
        anchors.bottomMargin: 16
        width: parent.width
        spacing: 8
        height: 56

        Image {
            width: 24
            height: 24
            opacity: 0.54
            sourceSize.height: 24
            sourceSize.width: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.leftMargin: 16
            fillMode: Image.PreserveAspectFit
            source: "/components/icons/lock-24px.svg"
            antialiasing: true
        }

        TextField {
            id: passTextField
            Layout.rightMargin: 16
            Layout.leftMargin: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            font.pointSize: 16
            anchors.bottomMargin: 16
            font.family: "Google Sans"
            Layout.fillWidth: true
            placeholderText: qsTr("Password")
            echoMode: TextInput.Password
        }
    }
    RoundButton {
        id: createPassButton
        x: 34
        y: 278
        text: qsTr("Next")
        enabled: false
        font.family: "Google Sans"
        font.capitalization: Font.MixedCase
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 8
        highlighted: true
        Material.background: Material.primary
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

