# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sunrise/comments/version"

Gem::Specification.new do |s|
  s.name = "sunrise-comments"
  s.version = Sunrise::Comments::VERSION.dup
  s.platform = Gem::Platform::RUBY 
  s.summary = "Comments for sunrise-cms"
  s.description = "Comments module for sunrise-cms"
  s.authors = ["Igor Galeta", "Pavlo Galeta"]
  s.email = "galeta.igor@gmail.com"
  s.rubyforge_project = "sunrise-comments"
  s.homepage = "https://github.com/galetahub/sunrise-comments"
  
  s.files = Dir["{app,lib,config,db,vendor}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["{spec}/**/*"]
  s.extra_rdoc_files = ["README.rdoc"]
  s.require_paths = ["lib"]
  
  s.add_dependency "sunrise-cms"
  s.add_dependency "auto_html"
end