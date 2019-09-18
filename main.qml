import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import "features"

ApplicationWindow {
    id: window
    visible: true
    width: 360
    height: 640
    title: {
        text: qsTr("kelakon")
    }
    header:
    ToolBar {

        background: Rectangle {
        color: "#FAFFFFFF"
        }
        RowLayout {
            ToolButton {
                id: toolButton
                icon.name: "menu-button"
                icon.source: "components/icons/menu-24px.svg"
                highlighted: true
                onClicked: {
                    if (contentView.depth > 1) {
                        contentView.pop()
                    } else {
                        drawer.open()
                    }
                }
            }

            Label {
                text: contentView.currentItem.title
                font.family: "Work Sans"
                font.weight: Font.Medium
                font.pointSize: 20
                wrapMode: Text.WordWrap
                elide: Label.ElideRight
                horizontalAlignment: Qt.AlignHCenter
                verticalAlignment: Qt.AlignVCenter
            }
        }
    }


    Drawer {
        id: drawer
        width: window.width * 0.8
        height: window.height
        visible: false

        Column {
            anchors.fill: parent

            ItemDelegate {
                text: qsTr("Page 1")
                width: parent.width
                onClicked: {
                    contentView.push("Page1Form.ui.qml")
                    drawer.close()
                }
            }
            ItemDelegate {
                text: qsTr("Page 2")
                width: parent.width
                onClicked: {
                    contentView.push("Page2Form.ui.qml")
                    drawer.close()
                }
            }
        }
    }
    StackView {
        id:  contentView
        initialItem: Onboarding {

        }

        anchors.fill: parent


    }
}
