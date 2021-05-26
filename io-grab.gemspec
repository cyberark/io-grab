# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'io/grab/version'

Gem::Specification.new do |spec|
  spec.name          = "io-grab"
  spec.version       = IO::Grab::VERSION
  spec.authors       = ["Rafał Rzepecki"]
  spec.email         = ["divided.mind@gmail.com"]
  spec.description   = %q{Adds #grab method to IO, which permits capturing all writes to that IO.}
  spec.summary       = %q{Capture IO writes}
  spec.homepage      = "https://github.com/dividedmind/io-grab"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.2.18"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
