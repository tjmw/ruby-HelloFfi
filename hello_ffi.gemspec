# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hello_ffi/version'

Gem::Specification.new do |spec|
  spec.name          = 'hello_ffi'
  spec.version       = HelloFfi::VERSION
  spec.authors       = ['Tom Wey']
  spec.email         = ['tjmwey@gmail.com']
  spec.description   = %q{FFI Experiment}
  spec.summary       = %q{Hello FFI!}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0.0'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'

  spec.add_dependency 'ffi'
end
