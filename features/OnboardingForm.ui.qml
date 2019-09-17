import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Page {
    id: page
    title: qsTr("Onboarding")

    property alias registerButton: registerButton
    property alias loginButton: loginButton

    Item {
        id: toolBarLayout
        height: 56
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0

        Image {
            width: 100
            height: 24
            fillMode: Image.PreserveAspectFit
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            Layout.fillWidth: true
            Layout.fillHeight: true
            source: "../components/images/kelakon-logo.png"
        }
    }

    Image {
        id: onboardingImage
        anchors.bottom: onboardingText1.top
        anchors.bottomMargin: 32
        anchors.top: toolBarLayout.bottom
        anchors.topMargin: 32
        anchors.right: parent.right
        anchors.rightMargin: 64
        anchors.left: parent.left
        anchors.leftMargin: 64
        source: "../components/images/onboarding-1.png"
        fillMode: Image.PreserveAspectFit
    }
    Text {
        id: onboardingText1
        text: qsTr("Achieve more today, chill tomorrow.")
        anchors.bottom: registerButton.top
        anchors.bottomMargin: 16
        wrapMode: Text.WordWrap
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        font.pointSize: 24
        font.family: "Work Sans"
        font.weight: Font.Medium
    }
    RoundButton {
        id: registerButton
        text: qsTr("Get started")
        hoverEnabled: false
        highlighted: true
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.bottom: loginButton.top
        anchors.bottomMargin: 8
        font.capitalization: Font.MixedCase
        font.family: "Work Sans"
    }

    RoundButton {
        id: loginButton
        y: 406
        flat: true
        highlighted: false
        Material.foreground: Material.primary
        text: qsTr("Log in")
        anchors.right: parent.right
        anchors.rightMargin: 8
        anchors.left: parent.left
        anchors.leftMargin: 8
        anchors.bottom: disclaimer.top
        anchors.bottomMargin: 8
        font.capitalization: Font.MixedCase
        font.family: "Work Sans"
    }

    Text {
        id: disclaimer
        color: "#8a000000"
        text: qsTr("By creating an account you agree to our Terms of Use and Privacy Policy.")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideMiddle
        wrapMode: Text.WordWrap
        font.pixelSize: 10
        font.family: "Work Sans"
        font.weight: Font.Normal
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

