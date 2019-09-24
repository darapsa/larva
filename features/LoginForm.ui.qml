import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12

Page {
	property alias toolButton: toolButton
	property alias contentView: contentView

	header: ToolBar {
		background: Rectangle {
			color: "#FAFFFFFF"
		}
		RowLayout {
			ToolButton {
				id: toolButton
				icon.name: "back-button"
				icon.source: "/components/icons/arrow-back-24px.svg"
				highlighted: true
			}
		}
	}

	StackView {
		id: contentView
		anchors.topMargin: 432
		anchors.fill: parent
	}
}
