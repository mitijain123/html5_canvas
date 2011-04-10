namespace :canvas do

  desc 'Install or update the TinyMCE sources'
  task :install => :environment do
    Html5Canvas.install_canvas_js
    Html5Canvas.install_canvas_css
  end

end