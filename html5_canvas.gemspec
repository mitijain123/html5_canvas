# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{html5_canvas}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mitesh Jain"]
  s.date = %q{2011-04-10}
  s.description = %q{Generates html 5 tags to draw and record}
  s.email = %q{mitijain123@gmail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/html5_canvas.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "lib/html5_canvas.rb", "html5_canvas.gemspec"]
  s.homepage = %q{http://github.com/mitijain123/html5_canvas}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Html5_canvas", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{html5_canvas}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Generates html 5 tags to draw and record}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
