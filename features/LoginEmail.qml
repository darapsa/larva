import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

LoginEmailForm {
    anchors.fill: parent
    emailTextField.onTextChanged: {
        if (!emailTextField.text || !continueButton.enabled)
            continueButton.enabled = !continueButton.enabled
    }
}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
