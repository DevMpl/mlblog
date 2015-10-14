$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "mlblog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "mlblog"
  s.version     = Mlblog::VERSION
  s.authors     = ["TODO: MediaLab harada"]
  s.email       = ["TODO: harada@medialab.co.jp"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Mlblog."
  s.description = "TODO: Description of Mlblog."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1.13"
	s.add_dependency "awesome_nested_set"
	s.add_dependency "simple_form"
	s.add_dependency "semantic-ui-sass"
	s.add_dependency "rmagick"
	s.add_dependency "mini_magick"
	s.add_dependency "carrierwave"
	s.add_dependency "jquery-fileupload-rails"
	s.add_dependency "sanitize"
	s.add_dependency "ckeditor"
	s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
