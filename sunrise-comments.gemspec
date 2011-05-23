# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sunrise-comments}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Igor Galeta", "Pavlo Galeta"]
  s.date = %q{2011-05-23}
  s.description = %q{Sunrise is a Aimbulance CMS}
  s.email = %q{galeta.igor@gmail.com}
  s.extra_rdoc_files = [
    "README.rdoc"
  ]
  s.files = [
    "README.rdoc",
    "Rakefile",
    "app/controllers/comments_controller.rb",
    "app/sweepers/comment_sweeper.rb",
    "app/views/comments/_block.html.erb",
    "app/views/comments/_comment.html.erb",
    "app/views/comments/_form.html.erb",
    "app/views/comments/create.js.erb",
    "app/views/comments/destroy.js.erb",
    "config/locales/ru.yml",
    "config/locales/uk.yml",
    "config/routes.rb",
    "lib/generators/sunrise/comments/USAGE",
    "lib/generators/sunrise/comments/install_generator.rb",
    "lib/generators/sunrise/comments/templates/comment.rb",
    "lib/generators/sunrise/comments/templates/create_comments.rb",
    "lib/sunrise-comments.rb",
    "lib/sunrise/comments.rb",
    "lib/sunrise/comments/author.rb",
    "lib/sunrise/comments/base.rb",
    "lib/sunrise/comments/engine.rb",
    "lib/sunrise/comments/version.rb",
    "lib/sunrise/models/comment.rb"
  ]
  s.homepage = %q{https://github.com/galetahub/sunrise-comments}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Rails CMS}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<sunrise>, ["~> 0.1.0"])
    else
      s.add_dependency(%q<sunrise>, ["~> 0.1.0"])
    end
  else
    s.add_dependency(%q<sunrise>, ["~> 0.1.0"])
  end
end

