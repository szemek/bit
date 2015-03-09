# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bit/version'

Gem::Specification.new do |spec|
  spec.name          = 'bit'
  spec.version       = Bit::VERSION
  spec.author        = 'Przemysław Dąbek'
  spec.email         = 'przemyslaw.dabek@lunarlogic.io'
  spec.summary       = 'git wrapper with support for Bitbucket'
  spec.homepage      = 'https://github.com/szemek/bit'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_runtime_dependency 'gli', '~> 2.13.0'
end
