$:.unshift File.expand_path("../lib", __FILE__)
require "taps/version"

Gem::Specification.new do |gem|
  gem.name        = "taps"
  gem.version     = Taps.version
  gem.author      = "Ricardo Chimal, Jr."
  gem.email       = "ricardo@heroku.com"
  gem.homepage    = "http://github.com/ricardochimal/taps"
  gem.summary     = "simple database import/export app"
  gem.description = "A simple database agnostic import/export app to transfer data to/from a remote database."
  gem.executables = %w( taps schema )

  gem.files = Dir["**/*"].select { |d| d =~ %r{^(README|bin/|data/|ext/|lib/|spec/|test/)} }

  gem.add_dependency "json_pure",    ">= 1.2.0", "< 1.5.0"
  gem.add_dependency "rack",         ">= 1.0.1"
  gem.add_dependency "rest-client",  ">= 1.4.0", "< 1.7.0"
  gem.add_dependency "sequel",       "~> 3.17.0"
  gem.add_dependency "sinatra",      "~> 1.0.0"
  gem.add_dependency "sqlite3-ruby", "~> 1.2"
end

