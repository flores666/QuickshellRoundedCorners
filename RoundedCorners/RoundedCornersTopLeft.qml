import QtQuick 2.15
import Quickshell
import "../globals"

PanelWindow {
  id: topLeftCorner
  anchors {
    top: true
    left: true
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

      ctx.fillStyle = Globals.mainColor;
      ctx.beginPath();
      ctx.moveTo(0, radius);
      ctx.quadraticCurveTo(0, 0, radius, 0);
      ctx.lineTo(0, 0);  // закрашиваем только треугольный угол
      ctx.closePath();
      ctx.fill();
    }
  }
}
