$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "acts_as_contactable/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "acts-as-contactable"
  s.version     = ActsAsContactable::VERSION
  s.authors     = ["Nora Alvarado"]
  s.email       = ["noragmora@gmail.com"]
  s.homepage    = "https://github.com/aromaron/acts_as_contactable.git"
  s.summary     = "TBD"
  s.description = "TBD"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'bump',       '~> 0.5',   '>= 0.5.3'
end
