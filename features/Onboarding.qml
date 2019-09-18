import QtQuick 2.4

OnboardingForm {
    objectName: "onboarding"
    loginButton.onClicked: contentView.push("Login.qml")
}
