import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

LoginForm {
        header:
            ToolBar {
            Material.elevation: 0
            background: Rectangle {
            color: "#FAFFFFFF"
            }
            RowLayout {
                ToolButton {
                    id: backButton
                    icon.name: "back-icon"
                    icon.source: "../components/icons/arrow-back-24px.svg"
                    highlighted: true
                    onClicked: {
                        if (stackView.depth > 1) {
                            stackView.pop()
                        }
                    }
                }
            }
        }
        footer:
            RowLayout {
                id: continueLayout
                height: 80
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0

                Text {
                    id: disclaimer
                    text: qsTr("By continuing, you are agree to our Terms of Use and Privacy Policy.")
                    Layout.rightMargin: 16
                    Layout.leftMargin: 16
                    font.family: "Roboto"
                    font.pointSize: 12
                    color: "#FA000000"
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    rightPadding: 0
                    leftPadding: 0
                    Layout.alignment: Qt.AlignVCenter
                    Layout.fillWidth: true
                }

                RoundButton {
                    id: continueButton
                    width: 72
                    height: 72
                    Layout.preferredHeight: 64
                    Layout.preferredWidth: 64
                    Layout.minimumHeight: 64
                    Layout.minimumWidth: 64
                    Layout.rightMargin: 16
                    Layout.leftMargin: 16
                    flat: false
                    rightPadding: 0
                    leftPadding: 0
                    bottomPadding: 0
                    topPadding: 0
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Material.background: Material.primary
                    display: AbstractButton.IconOnly
                    icon.name: "arrow-forward-icon"
                    icon.source: "../components/icons/arrow-forward-24px.svg"
                    highlighted: true

                    onClicked: {
                        stackView.push("EnterPasswordForm.ui.qml")
                    }
                }

        }
}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
