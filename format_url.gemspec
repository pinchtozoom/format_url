# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'format_url/version'

Gem::Specification.new do |spec|
  spec.name          = "format_url"
  spec.version       = FormatUrl::VERSION
  spec.authors       = ["David Hopkinson"]
  spec.email         = ["david@pinchtozoom.co.uk"]
  spec.description   = %q{Format and validation a URL in active record}
  spec.summary       = %q{An example of formatting a url based on Railscast Episode #301. Ryan Rocks!}
  spec.homepage      = "https://github.com/pinchtozoom/format_url"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec"
  spec.add_development_dependency "supermodel"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
