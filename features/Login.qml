import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

LoginForm {

        continueButton.onClicked: {
                            stackView.push("EnterPasswordForm.ui.qml")
                        }
}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
