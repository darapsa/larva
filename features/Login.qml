import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
    header:
    ToolBar {

        background: Rectangle {
        color: "#FAFFFFFF"
        }
        RowLayout {
            ToolButton {
                id: toolButton
                icon.name: "back-button"
                icon.source: "../../assets/arrow-back-24px.svg"
                highlighted: true
                onClicked: {
                    if (pageView.depth > 1) {
                        pageView.pop()
                    } else {
                        drawer.open()
                    }
                }
            }
        }
    }


StackView {
    id: contentView
    anchors.topMargin: 432
    anchors.fill: parent
    initialItem: LoginEmail{
    }
}
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
