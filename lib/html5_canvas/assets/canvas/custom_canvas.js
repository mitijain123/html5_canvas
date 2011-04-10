var canvasPainter;
var saveDrawing;
var canvasAnimator;
var colorWidget;
var lineWidthWidget;
var transportWidget;

function doOnLoad() {
    if (CanvasHelper.canvasExists("canvas")) {
        canvasPainter = new CanvasPainter("canvas", "canvasInterface", {x: 90, y: 10});
        //init save objects
        //saveDrawing = new CPDrawing(canvasPainter);
        canvasAnimator = new CPAnimator(canvasPainter);

        //init widgets
        colorWidget = new ColorWidget('colorChooser', {x: 500, y: 10});
        colorWidget.addWidgetListener(function() {
            canvasPainter.setColor(colorWidget.colorString);
        });

        lineWidthWidget = new LineWidthWidget('lineWidthChooser', 10, {x: 500, y: 120});
        canvasPainter.setLineWidth(10);
        lineWidthWidget.addWidgetListener(function() {
            canvasPainter.setLineWidth(lineWidthWidget.lineWidth);
        });

        transportWidget = new TransportWidget('transportWidget', {x: 500, y: 190}, canvasAnimator);
    } else {
        var ffb = new Image();
        ffb.src = "http://www.mozilla.org/products/firefox/buttons/getfirefox_large2.png";
        document.getElementById("controls").style.display = "none";
        document.getElementById("noCanvas").style.display = "block";
        document.getElementById("ffbutton").src = ffb.src;
        document.getElementById("cpainterInfo").style.display = "none";
    }
}

function printError(error) {
    document.getElementById("errorArea").innerHTML += error + "<br>";
}

// used by the dhtml buttons
function setControlLook(id, color) {
    if (id != canvasPainter.curDrawAction)
        document.getElementById("btn_" + id).style.background = color;
}

function setCPDrawAction(action) {
    document.getElementById("btn_" + canvasPainter.curDrawAction).style.background = "#FFFFFF";
    document.getElementById("btn_" + action).style.background = "#CCCCCC";
    canvasPainter.setDrawAction(action);
}
