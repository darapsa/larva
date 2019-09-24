import QtQuick 2.12
import QtQuick.Controls 2.12

Column {
	property alias todayItemDelegate: todayItemDelegate
	property alias futureItemDelegate: futureItemDelegate

	anchors.fill: parent
	ItemDelegate {
		id: todayItemDelegate
		width: parent.width
	}

	ItemDelegate {
		id: futureItemDelegate
		width: parent.width
	}
}
