import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Page {
    id: page
    title: qsTr("Onboarding")

    property alias logoImage: logoImage
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
            id: logoImage
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
        text: qsTr("Get things done today, chill tomorrow.")
        anchors.bottom: registerButton.top
        anchors.bottomMargin: 16
        wrapMode: Text.WordWrap
        anchors.right: parent.right
        anchors.rightMargin: 72
        anchors.left: parent.left
        anchors.leftMargin: 16
        font.pointSize: 24
        font.family: "Work Sans"
        font.weight: Font.Bold
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
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 16
        font.capitalization: Font.MixedCase
        font.family: "Work Sans"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

