import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12

Page {
    id: page
    title: qsTr("Today")

    RoundButton {
        id: roundButton
        width: 64
        height: 64
        display: AbstractButton.IconOnly
        spacing: 8

        padding: 16
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 8
        anchors.right: parent.right
        anchors.rightMargin: 8
        highlighted: true

        icon.name: "add-icon"
        icon.source: "/assets/add-24px.svg"
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

