# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'weasel/version'

Gem::Specification.new do |spec|
  spec.name          = 'weasel'
  spec.version       = Weasel::VERSION
  spec.authors       = ['Agustin Cavilliotti']
  spec.email         = ['cavi21@gmail.com']

  spec.summary       = %q{Simple Audit gem}
  spec.description   = %q{Works as a weasel for your controllers}
  spec.homepage      = 'https://github.com/cavi21/weasel'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'activerecord', '>= 5', '< 6'
  spec.add_dependency 'sidekiq', '>= 2', '< 7'
  spec.add_dependency 'maxminddb', '~> 0.1'

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'pry-nav'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
end
