import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Page {
    id: page
    title: qsTr("Log in")

    property alias emailTextField: emailTextField
    property alias continueButton: continueButton

    Text {
        id: pageTitle
        text: contentView.currentItem.title
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.WordWrap
        anchors.right: parent.right
        anchors.rightMargin: 88
        anchors.bottom: pageInstruction.top
        anchors.bottomMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 16
        font.pointSize: 14
        font.family: "Work Sans"
        font.weight: Font.Medium
    }
    Text {
        id: pageInstruction
        color: "#000000"
        text: qsTr("Continue with your email.")
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.WordWrap
        anchors.right: parent.right
        anchors.rightMargin: 88
        font.family: "Work Sans"

        font.pointSize: 24
        font.weight: Font.Bold
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.bottom: emailLayout.top
        anchors.bottomMargin: 0
    }
    RowLayout {
        id: emailLayout
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: continueLayout.top
        anchors.bottomMargin: 16
        spacing: 8
        height: 56

        Image {
            width: 24
            height: 24
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            opacity: 0.54
            sourceSize.height: 24
            sourceSize.width: 24
            Layout.leftMargin: 16
            fillMode: Image.PreserveAspectFit
            source: "/components/icons/email-24px.svg"
            antialiasing: true
        }

        TextField {
            id: emailTextField
            topPadding: 16
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.rightMargin: 16
            Layout.leftMargin: 8
            Layout.fillWidth: true
            placeholderText: qsTr("Enter your email")
            font.pointSize: 16
            font.family: "Work Sans"
            color: "#000000"
        }
    }
    RowLayout {
        id: continueLayout
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0

        Text {
            id: disclaimer
            text: qsTr("By continuing, you are agree to our Terms of Use and Privacy Policy.")
            Layout.rightMargin: 16
            Layout.leftMargin: 16
            font.family: "Roboto"
            font.pointSize: 12
            color: "#FA000000"
            wrapMode: Text.WordWrap
            verticalAlignment: Text.AlignVCenter
            rightPadding: 0
            leftPadding: 0
            Layout.alignment: Qt.AlignVCenter
            Layout.fillWidth: true
        }

        RoundButton {
            id: continueButton
            width: 72
            height: 72
            Layout.preferredHeight: 64
            Layout.preferredWidth: 64
            Layout.minimumHeight: 64
            Layout.minimumWidth: 64
            Layout.rightMargin: 0
            Layout.leftMargin: 0
            flat: false
            rightPadding: 0
            leftPadding: 0
            bottomPadding: 0
            topPadding: 0
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Material.background: Material.primary
            display: AbstractButton.IconOnly
            icon.name: "arrow-forward-icon"
            icon.source: "/components/icons/arrow-forward-24px.svg"
            highlighted: true
            enabled: false
        }
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

