import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

LoginEmailForm {
    emailTextField.onTextChanged: {
        if (!emailTextField.text || !continueButton.enabled)
            continueButton.enabled = !continueButton.enabled
    }
    continueButton.onClicked: {
        /*User.emailAddress = emailTextField.text*/
        contentView.push("LoginPassword.qml")
    }
}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
