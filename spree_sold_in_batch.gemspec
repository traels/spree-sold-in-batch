# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_sold_in_batch'
  s.version     = '0.1.5'
  s.summary     = 'Sell products in counts of X'
  s.description = 'Will add dropdowns for quantity.'
  s.required_ruby_version = '>= 1.9.3'

  s.author    = 'Simon Træls Ravn'
  s.email     = 'cs2@cs2.dk'
  s.homepage  = 'http://www.cs2.dk'

  #s.files       = `git ls-files`.split("\n")
  #s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_core'
  s.add_dependency 'deface', '~> 1.0'

  #s.add_development_dependency 'capybara'
  #s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl', '~> 4.2'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rspec-rails'
  #s.add_development_dependency 'sass-rails'
  #s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end
