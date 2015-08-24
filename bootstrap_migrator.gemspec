# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap_migrator/version'

Gem::Specification.new do |spec|
  spec.name          = 'bootstrap_migrator'
  spec.version       = BootstrapMigrator::VERSION
  spec.authors       = ['Kevin Kirsche']
  spec.email         = ['kev.kirsche@gmail.com']

  spec.summary       = %q{Convert Bootstrap v3 HTML to v4 markup}
  spec.description   = %q{This gem parses HTML and provides the correct markup for using Bootstrap v4.}
  spec.homepage      = 'https://github.com/kkirsche/bootstrap_migrator'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
  spec.add_runtime_dependency 'nokogiri', '~> 1.6'
  spec.add_runtime_dependency 'highline', '~> 1.7'
end
