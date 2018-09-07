# frozen_string_literal: true

$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'acts_as_contactable/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'acts-as-contactable'
  s.version     = ActsAsContactable::VERSION
  s.authors     = ['Nora Alvarado']
  s.email       = ['noragmora@gmail.com']
  s.homepage    = 'https://github.com/aromaron/acts_as_contactable.git'
  s.summary     = 'TBD'
  s.description = 'TBD'
  s.license     = 'MIT'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency "rails", "~> 5.2.1"

  s.add_development_dependency 'bump', '~> 0.5', '>= 0.5.3'
  s.add_development_dependency 'factory_bot', '~> 4.8'
  s.add_development_dependency 'rspec', '~> 3.6'
  s.add_development_dependency 'rubocop', '~> 0.49.1'
  s.add_development_dependency 'simplecov', '~> 0.15.0'
  s.add_development_dependency 'sqlite3', '~> 1.3'
end
