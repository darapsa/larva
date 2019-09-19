import QtQuick 2.4

OnboardingForm {
    objectName: "onboarding"
    loginButton.onClicked: pageView.push("Login.qml")
    logoImage.source: "https://via.placeholder.com/100x24.png"
    onboardingImage.source: "https://via.placeholder.com/600x600.png"
    onboardingText1.text: qsTr("Get things done today, chill tomorrow.")
}

/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/
