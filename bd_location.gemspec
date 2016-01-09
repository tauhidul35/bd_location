# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bd_location/version'

Gem::Specification.new do |spec|
  spec.name          = 'bd_location'
  spec.version       = BDLocation::VERSION
  spec.authors       = ['Md. Tauhidul Islam']
  spec.email         = ['tauhidul35@gmail.com']
  spec.summary       = %q{BD location}
  spec.description   = %q{Address of Bangladesh}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
