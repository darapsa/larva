import QtQuick 2.4

OnboardingForm {
    objectName: "onboarding"
    loginButton.onClicked: stackView.push("Login.qml")
}
