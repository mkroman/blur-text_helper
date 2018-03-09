# frozen_string_literal: true

lib = File.join(__dir__, 'lib')
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'blur/text_helper/version'

Gem::Specification.new do |spec|
  spec.name          = 'blur-text_helper'
  spec.version       = Blur::TextHelper::VERSION
  spec.authors       = ['Mikkel Kroman']
  spec.email         = ['mk@maero.dk']

  spec.summary       = %q{Text helper-module for Blur scripts.}
  spec.description   = %q{This is a text helper-module for Blur scripts that will make it easier to do common tasks with text.}
  spec.homepage      = 'https://github.com/mkroman/blur-text_helper'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activesupport', '~> 5.1'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
