import QtQuick 2.15
import Quickshell
import "../globals"

PanelWindow {
	id: bottomLeftCorner
	anchors {
		bottom: true
		right: true
	}
	implicitWidth: 20
	implicitHeight: 20
	color: "transparent" // окно полностью прозрачное

	Canvas {
		anchors.fill: parent
		onPaint: {
			var ctx = getContext("2d");
			ctx.clearRect(0, 0, width, height);

			var radius = 25;

			ctx.fillStyle = Env.colors.primary;
			ctx.beginPath();
			ctx.moveTo(width - radius, height);
			ctx.quadraticCurveTo(width, height, width, height - radius);
			ctx.lineTo(width, height);
			ctx.closePath();
			ctx.fill();
		}
	}
}
