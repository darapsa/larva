import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

GridLayout {
    property alias task: task
    property alias taskTitle: taskTitle
    property alias itemDelegate: itemDelegate

    id: task
    height: 72
    anchors.right: parent.right
    anchors.rightMargin: 0
    anchors.left: parent.left
    anchors.leftMargin: 0

    ItemDelegate {
        id: itemDelegate
        Layout.fillWidth: parent.width
        Layout.fillHeight: parent.height
        GridLayout {

            anchors.fill: parent
            CheckBox {
                Layout.leftMargin: 4
                display: AbstractButton.IconOnly
            }
            ColumnLayout {
                Layout.leftMargin: 14
                spacing: 0
                Layout.fillWidth: true
                Layout.fillHeight: true

                Text {
                    id: taskTitle
                    text: qsTr("Task title")
                    Layout.rightMargin: 16
                    elide: Text.ElideRight
                    Layout.columnSpan: 0
                    Layout.rowSpan: 0
                    verticalAlignment: Text.AlignVCenter
                    Layout.topMargin: 0
                    font.weight: Font.Medium
                    font.family: "Work Sans"
                    font.pixelSize: 16
                    Layout.fillWidth: true
                }
                Text {
                    text: qsTr("Truncated task description")
                    Layout.rightMargin: 16
                    font.pixelSize: 14
                    Layout.topMargin: 4
                    Layout.columnSpan: 0
                    Layout.rowSpan: 0
                    verticalAlignment: Text.AlignVCenter
                    Layout.bottomMargin: 0
                    color: "#b3000000"
                    Layout.fillWidth: true
                    elide: Text.ElideRight
                }
                Text {
                    id: taskTimestamp
                    color: "#8a000000"
                    text: qsTr("DD/MM/YYYY")
                    topPadding: 4
                    font.pixelSize: 12
                    font.family: "Work Sans"
                }
            }
            Image {
                id: chevronRight
                Layout.minimumHeight: 24
                Layout.minimumWidth: 24
                Layout.rightMargin: 12
                opacity: 0.54
                sourceSize.height: 24
                sourceSize.width: 24
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                source: "/components/icons/chevron-right-24px.svg"
            }
        }
    }
}
