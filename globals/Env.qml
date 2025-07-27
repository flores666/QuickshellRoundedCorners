pragma Singleton
import QtQuick 2.15

QtObject {
	readonly property QtObject colors: QtObject {
		readonly property color primary: "#000807";
	}
}
