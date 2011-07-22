# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hamls_comment/version"

Gem::Specification.new do |s|
  s.name        = "hamls_comment"
  s.version     = HamlsComment::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Andy Fleener"]
  s.email       = ["andy.fleener@thefutureis.mobi"]
  s.homepage    = ""
  s.summary     = %q{This gem will patch the haml gem to include comments for the start and end of every template haml renders that showes you the location of that template}
  s.description = %q{This gem will put a  comment into every rendered haml template that tells you the location of that template}

  s.rubyforge_project = "hamls_comment"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.add_dependency("haml")
end
