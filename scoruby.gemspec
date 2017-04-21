# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scoruby/version'

Gem::Specification.new do |spec|
  spec.name          = "scoruby"
  spec.version       = Scoruby::VERSION
  spec.authors       = ["Asaf Schers"]
  spec.email         = ["schers@riskified.com"]

  spec.summary       = %q{Creates a random forest object from a pmml file.}
  spec.homepage      = 'https://github.com/asafschers/scoruby'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "lib/random_forest", "lib/gbm"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 12.0"
  spec.add_development_dependency "rspec", "~> 3.5"
  spec.add_development_dependency "pry", "~> 0.10"
  spec.add_development_dependency "ruby-prof"
  spec.add_dependency "nokogiri", "~> 1.7"
end