import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

LoginForm {
        ToolBar {
            Material.elevation: 0
            background: Rectangle {
            color: "#FAFFFFFF"
            }
            RowLayout {
                ToolButton {
                    id: toolButton
                    icon.name: "back-button"
                    icon.source: "../components/icons/arrow-back-24px.svg"
                    highlighted: true
                    onClicked: {
                        if (stackView.depth > 1) {
                            stackView.pop()
                        } else {
                            drawer.open()
                        }
                    }
                }
            }
        }
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
