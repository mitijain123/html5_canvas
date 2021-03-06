require 'active_support'

module Html5Canvas
  class << self
    def enable
      enable_actionpack
    end

    def enable_actionpack
      require 'html5_canvas/helpers'
      require 'html5_canvas/view_helpers'
      ActionView::Base.send :include, Helpers
      ActionView::Base.send :include, ViewHelpers
    end

    def install_canvas_js
      require 'fileutils'
      orig = File.join(File.dirname(__FILE__), 'html5_canvas', 'assets', 'canvas')
      dest = File.join(Rails.root.to_s, 'public', 'javascripts', 'canvas')
      begin
        puts "Creating directory #{dest}..."
        FileUtils.mkdir_p dest
        puts "Copying Canvas to #{dest}..."
        FileUtils.cp_r "#{orig}/.", dest
        puts "Successfully installed Canvas."
      rescue
        puts "ERROR: Problem installing Canvas. Please manually copy "
        puts orig
        puts "to"
        puts dest
      end
    end

    def install_canvas_css
      require 'fileutils'
      orig = File.join(File.dirname(__FILE__), 'html5_canvas', 'assets', 'css')
      dest = File.join(Rails.root.to_s, 'public', 'stylesheets', 'canvas')
      begin
        puts "Creating directory #{dest}..."
        FileUtils.mkdir_p dest
        puts "Copying Canvas to #{dest}..."
        FileUtils.cp_r "#{orig}/.", dest
        puts "Successfully installed Canvas."
      rescue
        puts "ERROR: Problem installing Canvas css. Please manually copy "
        puts orig
        puts "to"
        puts dest
      end
    end


  end

end

if defined?(Rails::Railtie)
  require 'html5_canvas/railtie'
  Html5Canvas.enable_actionpack if defined? ActionController
end


