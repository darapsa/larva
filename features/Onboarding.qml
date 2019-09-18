import QtQuick 2.4

OnboardingForm {
    objectName: "onboarding"
    loginButton.onClicked: pageView.push("LoginEmail.qml")
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
