# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'autorun/version'

Gem::Specification.new do |spec|
  spec.name          = "autorun"
  spec.version       = Autorun::VERSION
  spec.authors       = ["Shintaro Torii"]
  spec.email         = ["shintaro.torii@gmail.com"]
  spec.description   = %q{A simple scripting helper module}
  spec.summary       = %q{Autorun allows you write a simple executable script per class easily}
  spec.homepage      = "https://github.com/twodollarz/autorun"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'coveralls', '~> 0.7.0'
  spec.add_development_dependency 'mime-types', '< 2.0.0' if RUBY_VERSION < '1.9.0'
end
