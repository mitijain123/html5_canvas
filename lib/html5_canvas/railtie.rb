if defined?(Rails::Railtie)
  module Html5Canvas
    class Railtie < Rails::Railtie
      rake_tasks do
        load "#{File.dirname(__FILE__)}/tasks/html5_canvas.rake"
      end
    end
  end
end
