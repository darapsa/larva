import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import "../../pages"

Page {
    header:ToolBar {
            background: Rectangle {
            color: "#FAFFFFFF"
            }
            RowLayout {
                anchors.fill: parent

                ToolButton {
                    id: menuButton
                    icon.name: "menu-button"
                    icon.source: "../components/icons/menu-24px.svg"
                    highlighted: true
                    onClicked: {
                        if (pageView.depth > 1) {
                            pageView.pop()
                        } else {
                            drawer.open()
                        }
                    }
                }
                Label {
                    id:title
                    text: contentView.currentPage.title
                    verticalAlignment: Text.AlignVCenter
                    wrapMode: Text.WordWrap
                    font.family: "Work Sans"
                    font.weight: Font.Medium
                    font.pointSize: 20
                }
            }
        }

    }

TaskList {

}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
