# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'c8dasm/version'

Gem::Specification.new do |spec|
  spec.name          = "c8dasm"
  spec.version       = C8dasm::VERSION
  spec.authors       = ["lkdjiin"]
  spec.email         = ["xavier.nayrac@gmail.com"]
  spec.summary       = %q{Desassembler for Chip8 binaries.}
  spec.description   = %q{c8dasm is a utility to desassemble a Chip8 binary file.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
