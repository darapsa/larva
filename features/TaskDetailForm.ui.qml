import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
    id: page
    title: qsTr("Task detail page")
    background: Rectangle {
        color: "#FFFFFF"
    }

    property alias backButton: backButton

    header: ToolBar {
        background: Rectangle {
            color: "#FAFFFFFF"
        }
        RowLayout {
            id: toolBar
            anchors.fill: parent
            spacing: 0
            ToolButton {
                id: backButton
                icon.name: "back-button"
                icon.source: "/components/icons/arrow-back-24px.svg"
                highlighted: true
            }
            ToolButton {
                id: toolMoreButton
                icon.name: "more-button"
                icon.source: "/components/icons/more-vert-24px.svg"
                highlighted: true
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            }
        }
    }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:9;anchors_x:0;anchors_y:183}
}
##^##*/

