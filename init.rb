require 'html5_canvas'
ActionController::Base.send(:helper, Html5Canvas::Helpers)
ActionView::Base.send (:include, Html5Canvas::ViewHelpers)