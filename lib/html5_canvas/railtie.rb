require 'rails'
require 'html5_canvas'
if defined?(Rails::Railtie)
  module Html5Canvas
    class Railtie < Rails::Railtie
      config.to_prepare do
        ApplicationController.send(:extend, Html5Canvas::Helpers)
        ApplicationController.send(:extend, Html5Canvas::ViewHelpers)
      end
      rake_tasks do
        load "tasks/html5_canvas.rake"
      end
    end
  end
end
