# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'common_identification_numbers/version'

Gem::Specification.new do |spec|
  spec.name          = "common_identification_numbers"
  spec.version       = CommonIdentificationNumbers::VERSION
  spec.authors       = ["Michal Pasternak"]
  spec.email         = ["m.pasternak@mail.com"]
  spec.description   = %q{Validators for common numbers like PESEL, NIP, REGON}
  spec.summary       = %q{Validators for common numbers like PESEL, NIP, REGON}
  spec.homepage      = "https://github.com/mike-pasternak/common_identification_numbers"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  spec.add_development_dependency 'activemodel', '>=3.0'
  spec.add_development_dependency "bundler", ">= 1.3"
  spec.add_development_dependency "rake"
end
