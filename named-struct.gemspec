# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'named_struct/version'

Gem::Specification.new do |spec|
  spec.name          = "named-struct"
  spec.version       = NamedStruct::VERSION
  spec.authors       = ["Benjamin Dunkley"]
  spec.email         = ["ben@chemica.co.uk"]
  spec.summary       = %q{Structs with named parameters for initialisation}
  spec.description   = %q{NamedStruct is a Struct variant that allows the use of named parameters (via a hash) for initialisation}
  spec.homepage      = "https://github.com/chemica/named-struct"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.7.0"
end
