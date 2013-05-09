# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "backyard/version"

Gem::Specification.new do |s|
  s.name        = "backyard"
  s.version     = Backyard::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Yves Senn"]
  s.email       = ["yves.senn@gmail.com"]
  s.homepage    = "http://rubygems.org/gems/backyard"
  s.summary     = %q{manage the models in your cucumbers with ease}
  s.description = %q{backyard allows you to name the models in your cucumber scenarios.}

  s.rubyforge_project = "backyard"

  s.add_development_dependency "rake"
  s.add_development_dependency "rspec"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "factory_girl", "4.2.0"
  s.add_development_dependency "activerecord", "3.2.13"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "yard"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
