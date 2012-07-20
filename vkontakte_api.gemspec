# encoding: utf-8
$: << File.expand_path('../lib', __FILE__)
require 'vkontakte_api/version'

Gem::Specification.new do |s|
  s.name        = 'vkontakte_api'
  s.version     = VkontakteApi::VERSION
  s.authors     = ['Vsevolod Romashov']
  s.email       = ['7@7vn.ru']
  s.homepage    = 'http://7even.github.com/vkontakte_api'
  s.summary     = %q{Ruby wrapper for VKontakte API}
  s.description = %q{A transparent wrapper for VKontakte API. Supports ruby-way naming of API methods (without method lists inside), optional authorization, files uploading, logging and any faraday-supported http adapter of your choice.}
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  
  s.add_runtime_dependency 'faraday',                     '~> 0.8'
  s.add_runtime_dependency 'faraday_middleware',          '~> 0.8'
  s.add_runtime_dependency 'faraday_middleware-parse_oj', '~> 0.1'
  s.add_runtime_dependency 'oauth2',                      '~> 0.8'
  s.add_runtime_dependency 'hashie',                      '~> 1.2'
  
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'awesome_print'
end