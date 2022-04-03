# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'acts_as_downcasable_on/version'

Gem::Specification.new do |spec|
  spec.name          = 'acts_as_downcasable_on'
  spec.version       = ActsAsDowncasableOn::VERSION
  spec.authors       = ['Vital Ryabchinskiy']
  spec.email         = ['vital.ryabchinskiy@gmail.com']

  spec.description   = 'Easy way to define AR attributes that should be stored in lowercase'
  spec.summary       = 'Provide functionality to force AR attributes to lowercase'
  spec.homepage      = 'https://github.com/vitalinfo/acts_as_downcasable_on'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.49'
  spec.add_development_dependency 'sqlite3', '~> 1.3'

  spec.add_runtime_dependency 'activerecord', '>= 4.0.0', '< 7.1'
end
