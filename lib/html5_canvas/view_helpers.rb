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
    <div class=\"ctr_btn\" id=\"btn_6\" onclick=\"setCPDrawAction(6)\" onMouseDown=\"setControlLook(6, '#CCCCCC')\" onMouseOver=\"setControlLook(6, '#EEEEEE')\" onMouseOut=\"setControlLook(6, '#FFFFFF')\">Draw Image</div>
		<br>
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