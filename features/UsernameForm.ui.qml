import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

RowLayout {

    id: userName
    width: fillWidth
    height: 54
    anchors.topMargin: 8
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.left: parent.left
    anchors.leftMargin: 0
    spacing: 16

    Image {
        id: icon
        width: 24
        height: 24
        Layout.leftMargin: 16
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        fillMode: Image.PreserveAspectFit
        source: "/components/icons/user-24px.svg"
    }

    TextField {
        id: textField
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        font.pointSize: 16
        font.family: "Google Sans"
        Layout.fillWidth: true
        placeholderText: qsTr("Username")
    }
}
