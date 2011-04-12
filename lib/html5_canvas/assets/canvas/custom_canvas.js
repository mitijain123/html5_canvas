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

function printCanvas(){
    var oCanvas = document.getElementById("canvas");
    Canvas2Image.saveAsPNG(oCanvas);  // will prompt the user to save the image as PNG.
//    Canvas2Image.saveAsJPEG(oCanvas); // will prompt the user to save the image as JPEG.
//                                      // Only supported by Firefox.
//    Canvas2Image.saveAsBMP(oCanvas);  // will prompt the user to save the image as BMP.
//
//    // returns an <img /> element containing the converted PNG image
    var oImgPNG = Canvas2Image.saveAsPNG(oCanvas, true);

//    // returns an <img /> element containing the converted JPEG image (Only supported by Firefox)
//    var oImgJPEG = Canvas2Image.saveAsJPEG(oCanvas, true);
//
//    // returns an <img /> element containing the converted BMP image
//    var oImgBMP = Canvas2Image.saveAsBMP(oCanvas, true);

    // all the functions also takes width and height arguments.
    // These can be used to scale the resulting image:
    // saves a PNG image scaled to 100x100
    Canvas2Image.saveAsPNG(oCanvas, false, 100, 100);
}