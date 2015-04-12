# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'PrimesMultiplicationTableGenerator/version'

Gem::Specification.new do |spec|
  spec.name          = "PrimesMultiplicationTableGenerator"
  spec.version       = PrimesMultiplicationTableGenerator::VERSION
  spec.authors       = ["Jack Green"]
  spec.email         = ["jgreen@gmail.com"]
  spec.summary       = %q{Simple gem to produce a multiplication table for the first N primes.}
  spec.description   = %q{Given a command line that specifies the number of primes to include (-n), produces a multiplication table for those primes.}
  spec.homepage      = ""
  spec.required_ruby_version = '~> 2.1'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rspec"
  spec.add_dependency "rake"
end
