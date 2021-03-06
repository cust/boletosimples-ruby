# encoding: UTF-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boletosimples/version'

Gem::Specification.new do |gem|
  gem.name          = 'boletosimples'
  gem.version       = BoletoSimples::VERSION
  gem.authors       = ['Kivanio Barbosa', 'Rafael Lima', 'Thiago Belem']
  gem.email         = ['kivanio@gmail.com', 'contato@rafael.adm.br', 'contato@thiagobelem.net']
  gem.description   = 'Boleto Simples API wrapper.'
  gem.summary       = 'Boleto Simples API wrapper.'
  gem.homepage      = 'https://github.com/BoletoSimples/boletosimples-ruby'

  gem.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  gem.executables   = gem.files.grep(/^bin\//).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(/^(test|spec|features)\//)
  gem.require_paths = ['lib']

  gem.required_ruby_version = '>= 1.9'

  # Gems that must be intalled for boletosimples to work
  gem.add_dependency 'her', '~> 0.7.3'
  gem.add_dependency 'faraday_middleware', '~> 0.9.1'
  gem.add_dependency 'faraday-http-cache', '~> 1.0.1'

  # Gems that must be installed for boletosimples to compile and build
  gem.add_development_dependency 'pry', '~> 0.10.1'
  gem.add_development_dependency 'rspec', '~> 3.2.0'
  gem.add_development_dependency 'vcr', '~> 2.9'
  gem.add_development_dependency 'webmock', '~> 1.20.4'
  gem.add_development_dependency 'rake', '~> 10.4.2'
  gem.add_development_dependency 'coveralls', '~> 0.7.11'
  gem.add_development_dependency 'codeclimate-test-reporter', '~> 0.4.7'
end
