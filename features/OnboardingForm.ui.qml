import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Page {
    id: page
    title: qsTr("Onboarding")

    Image {
        id: image
        height: 100
        anchors.top: parent.top
        anchors.topMargin: 32
        anchors.right: parent.right
        anchors.rightMargin: 64
        anchors.left: parent.left
        anchors.leftMargin: 64
        anchors.verticalCenter: parent.verticalCenter
        source: "../components/images/onboarding-1.png"
        fillMode: Image.PreserveAspectFit
    }

    Text {
        id: disclaimer
        color: "#fa000000"
        text: qsTr("By creating an account you agree to our Terms of Use and Privacy Policy.")
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.rightMargin: 16
        anchors.left: parent.left
        anchors.leftMargin: 16
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 16
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideMiddle
        wrapMode: Text.WordWrap
        font.pixelSize: 12
        font.family: "Work Sans"
        font.weight: Font.Normal
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

