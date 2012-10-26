# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jdbc-postgresql/version'

Gem::Specification.new do |gem|
  gem.name          = "jdbc-postgresql"
  gem.version       = Jdbc::Postgresql::VERSION
  gem.authors       = ["Rodrigo Rosenfeld Rosas"]
  gem.email         = ["rr.rosas@gmail.com"]
  gem.description   = %q{Packages the jdbc official driver in a gem}
  gem.summary       = %q{PostgresSQL jdbc driver for JRuby}
  gem.homepage      = "https://github.com/rosenfeld/jdbc-postgresql"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
