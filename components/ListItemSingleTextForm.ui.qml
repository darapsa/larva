import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
	property alias title: title
	property alias delegate: delegate

	width: 328
	height: 64

	ItemDelegate {
		id: delegate
		anchors.fill: parent

		Image {
			id: image
			width: 32
			anchors.left: parent.left
			anchors.top: parent.top
			anchors.bottom: parent.bottom
			anchors.leftMargin: 16
			anchors.topMargin: 16
			anchors.bottomMargin: 16
			fillMode: Image.PreserveAspectFit
		}

		FontLoader {
			id: robotoMonoBold
			source: "../fonts/RobotoMono-Bold.ttf"
		}

		Text {
			id: title
			width: 208
			text: qsTr("Project name")
			anchors.left: image.right
			anchors.top: parent.top
			anchors.bottom: parent.bottom
			anchors.leftMargin: 16
			anchors.topMargin: 20
			anchors.bottomMargin: 20
			lineHeight: 24
			verticalAlignment: Text.AlignVCenter
			font.family: robotoMonoBold.name
			font.pixelSize: 16
			font.letterSpacing: 0.15
		}
	}
}
