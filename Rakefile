require 'rubygems'  
require 'rake'  
require 'echoe'  
   
 Echoe.new('html5_canvas', '0.1.0') do |p|  
   p.description     = "Generates html 5 tags to draw and record"  
   p.url             = "http://github.com/mitijain123/html5_canvas"
   p.author          = "Mitesh Jain"  
   p.email           = "mitijain123@gmail.com"  
   p.ignore_pattern  = ["tmp/*", "script/*"]  
   p.development_dependencies = []  
 end  
   
 Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
