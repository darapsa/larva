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
        text: qsTr("Application name")
    }


    StackView {
        id: pageView
        anchors.fill: parent

        initialItem: Onboarding {}

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
                        pageView.push("Page1Form.ui.qml")
                        drawer.close()
                    }
                }
                ItemDelegate {
                    text: qsTr("Page 2")
                    width: parent.width
                    onClicked: {
                        pageView.push("Page2Form.ui.qml")
                        drawer.close()
                    }
                }
            }
        }
    }
}
