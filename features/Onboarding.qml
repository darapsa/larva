import QtQuick 2.4

OnboardingForm {
    objectName: "onboarding"
    loginButton.onClicked: pageView.push("Login.qml")
    logoImage.source: "../components/images/kelakon-logo.png"
    onboardingImage.source: "../components/images/onboarding-1.png"
    onboardingText1.text: qsTr("Get things done today, chill tomorrow.")
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
