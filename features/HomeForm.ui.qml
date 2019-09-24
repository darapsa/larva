import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
    property alias menuButton: menuButton
    property alias titleLabel: titleLabel
    property alias profileButton: profileButton
    property alias contentView: contentView

    header: ToolBar {
        background: Rectangle {
            color: "#FAFFFFFF"
        }
        RowLayout {
            anchors.fill: parent
            spacing: 0
            ToolButton {
                id: menuButton
                icon.name: "menu-button"
                highlighted: true
            }
            Label {
                id: titleLabel
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
            ToolButton {
                id: profileButton
                icon.name: "profile-button"
                highlighted: true
            }
        }
    }

    StackView {
        id: contentView
        anchors.fill: parent
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/

