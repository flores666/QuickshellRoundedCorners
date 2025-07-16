pragma Singleton
import QtQuick 2.15

QtObject {
	property var aspectRatio: Screen.width / Screen.height
	property var height: Screen.height * 0.025
	property var widthCoef: 0.25
	property var mainColor: "#261717"
}
