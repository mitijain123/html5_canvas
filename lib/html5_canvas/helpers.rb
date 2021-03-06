module Html5Canvas
  module Helpers
    def get_canvas_js
      javascript_include_tag("canvas/cp_depends.js") +
      javascript_include_tag("canvas/excanvas.js") +
      javascript_include_tag("canvas/CanvasWidget.js") +
      javascript_include_tag("canvas/CanvasPainter.js") +
      javascript_include_tag("canvas/CPWidgets.js") +
      javascript_include_tag("canvas/CPAnimator.js") +
      javascript_include_tag("canvas/CPDrawing.js") +
      javascript_include_tag("canvas/canvas2image.js") +
      javascript_include_tag("canvas/base64.js") +
      javascript_include_tag("canvas/custom_canvas.js")
    end

    def raw_canvas_init
      "doOnLoad();"
    end

    def raw_canvas_js
      javascript_tag raw_canvas_init
    end

    def include_canvas_js
      get_canvas_js
    end

    def call_initial_function
      raw_canvas_js
    end

    def include_canvas_css
      stylesheet_link_tag("canvas/canvas.css")
    end
  end
end