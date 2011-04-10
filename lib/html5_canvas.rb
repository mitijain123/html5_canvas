module Html5Canvas
  def self.install_canvas
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
end

class ActiveView::Base
  include ActiveView::Helpers::Html5Canvas
end

