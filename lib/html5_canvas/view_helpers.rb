module Html5Canvas
  module ViewHelpers
    def include_canvas_tag
      "<div id=\"controls\">
		<div class=\"ctr_btn\" id=\"btn_0\" style=\"background: #CCCCCC;\" onclick=\"setCPDrawAction(0)\" onMouseDown=\"setControlLook(0, '#CCCCCC')\" onMouseOver=\"setControlLook(0, '#EEEEEE')\" onMouseOut=\"setControlLook(0, '#FFFFFF')\">brush</div>
		<div class=\"ctr_btn\" id=\"btn_1\" onclick=\"setCPDrawAction(1)\" onMouseDown=\"setControlLook(1, '#CCCCCC')\" onMouseOver=\"setControlLook(1, '#EEEEEE')\" onMouseOut=\"setControlLook(1, '#FFFFFF')\">brush 2</div>
		<div class=\"ctr_btn\" id=\"btn_2\" onclick=\"setCPDrawAction(2)\" onMouseDown=\"setControlLook(2, '#CCCCCC')\" onMouseOver=\"setControlLook(2, '#EEEEEE')\" onMouseOut=\"setControlLook(2, '#FFFFFF')\">line</div>
		<div class=\"ctr_btn\" id=\"btn_3\" onclick=\"setCPDrawAction(3)\" onMouseDown=\"setControlLook(3, '#CCCCCC')\" onMouseOver=\"setControlLook(3, '#EEEEEE')\" onMouseOut=\"setControlLook(3, '#FFFFFF')\">rectangle</div>
		<div class=\"ctr_btn\" id=\"btn_4\" onclick=\"setCPDrawAction(4)\" onMouseDown=\"setControlLook(4, '#CCCCCC')\" onMouseOver=\"setControlLook(4, '#EEEEEE')\" onMouseOut=\"setControlLook(4, '#FFFFFF')\">circle</div>
		<div class=\"ctr_btn\" id=\"btn_5\" onclick=\"setCPDrawAction(5)\" onMouseDown=\"setControlLook(5, '#CCCCCC')\" onMouseOver=\"setControlLook(5, '#EEEEEE')\" onMouseOut=\"setControlLook(5, '#FFFFFF')\">clear</div>
		<br>

		<div class=\"ctr_btn\" id=\"btn_9\" onclick=\"canvasAnimator.newAnimation();\" onMouseDown=\"setControlLook(9, '#CCCCCC')\" onMouseOver=\"setControlLook(9, '#EEEEEE')\" onMouseOut=\"setControlLook(9, '#FFFFFF')\">new</div>
		<!--
		<div class=\"ctr_btn\" id=\"btn_10\" onclick=\"saveDrawing.removeLastNode();\" onMouseDown=\"setControlLook(10, '#CCCCCC')\" onMouseOver=\"setControlLook(10, '#EEEEEE')\" onMouseOut=\"setControlLook(10, '#FFFFFF')\">undo</div>
		<div class=\"ctr_btn\" id=\"btn_13\" onclick=\"saveDrawing.addLastRemovedNode();\" onMouseDown=\"setControlLook(13, '#CCCCCC')\" onMouseOver=\"setControlLook(13, '#EEEEEE')\" onMouseOut=\"setControlLook(13, '#FFFFFF')\">redo</div>
		<div class=\"ctr_btn\" id=\"btn_11\" onclick=\"saveDrawing.paintDrawing();\" onMouseDown=\"setControlLook(11, '#CCCCCC')\" onMouseOver=\"setControlLook(11, '#EEEEEE')\" onMouseOut=\"setControlLook(11, '#FFFFFF')\">repaint</div>
		<div class=\"ctr_btn\" id=\"btn_12\" onclick=\"saveDrawing.saveDrawing();\" onMouseDown=\"setControlLook(12, '#CCCCCC')\" onMouseOver=\"setControlLook(12, '#EEEEEE')\" onMouseOut=\"setControlLook(12, '#FFFFFF')\">print</div>
		-->
</div>
<canvas id=\"canvas\" width=\"400\" height=\"400\"></canvas>
<canvas id=\"canvasInterface\" width=\"400\" height=\"400\"></canvas>
<div id=\"chooserWidgets\">
<canvas id=\"colorChooser\" width=\"275\" height=\"80\"></canvas>
<canvas id=\"lineWidthChooser\" width=\"275\" height=\"76\"></canvas>
<canvas id=\"transportWidget\" width=\"275\" height=\"50\"></canvas>
</div>
"
    end
  end
end