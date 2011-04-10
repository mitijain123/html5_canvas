namespace :canvas do

  desc 'Install or update the TinyMCE sources'
  task :install => :environment do
    Html5Canvas.install_canvas
  end

end