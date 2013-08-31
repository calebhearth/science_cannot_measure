# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'science_cannot_measure/version'

Gem::Specification.new do |spec|
  spec.name          = "science_cannot_measure"
  spec.version       = ScienceCannotMeasure::VERSION
  spec.authors       = ["Caleb Thompson"]
  spec.email         = ["caleb@calebthompson.io"]
  spec.description   = "The latest in scientific truth"
  spec.summary       = "Science cannot measure such small differences"
  spec.homepage      = ""
  spec.license       = "GPL"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
