import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Page {
	id: page
	title: qsTr("Task detail page")
	background: Rectangle {
		color: "#FFFFFF"
	}

	property alias backButton: backButton
	property alias ticketBriefForm: ticketBriefForm
	property alias listView: listView

	header: ToolBar {
		background: Rectangle {
			color: "#FAFFFFFF"
		}
		RowLayout {
			id: toolBar
			anchors.fill: parent
			spacing: 8
			ToolButton {
				id: backButton
				icon.name: "back-button"
				icon.source: "/components/icons/arrow-back-24px.svg"
				highlighted: true
			}
			ToolButton {
				id: toolMoreButton
				icon.name: "more-button"
				icon.source: "/components/icons/more-vert-24px.svg"
				highlighted: true
				Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
			}
		}
	}
	ScrollView {
		id: contentView
		clip: true
		contentHeight: ticketBriefForm.height + separator.height + listView.height
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 0
		anchors.right: parent.right
		anchors.rightMargin: 0
		anchors.left: parent.left
		anchors.leftMargin: 0
		anchors.top: parent.top
		anchors.topMargin: 0
		TaskBriefForm {
			id: ticketBriefForm
			anchors.top: parent.top
			anchors.topMargin: 0
			anchors.right: parent.right
			anchors.rightMargin: 0
			anchors.left: parent.left
			anchors.leftMargin: 0
		}
		RowLayout {
			id: separator
			height: separatorLabel.height + 32
			anchors.top: ticketBriefForm.bottom
			anchors.topMargin: 0
			anchors.right: parent.right
			anchors.rightMargin: 0
			anchors.left: parent.left
			anchors.leftMargin: 0
			Label {
				id: separatorLabel
				height: 20
				color: "#000000"
				text: qsTr("Activities")
				Layout.leftMargin: 16
				verticalAlignment: Text.AlignVCenter
				font.weight: Font.Medium
				font.pixelSize: 16
				font.family: "Work Sans"
			}
		}
		ListView {
			id: listView
			keyNavigationWraps: true
			interactive: false
			anchors.right: parent.right
			anchors.rightMargin: 0
			anchors.left: parent.left
			anchors.leftMargin: 0
			anchors.top: separator.bottom
			anchors.topMargin: 0
		}
	}
}
