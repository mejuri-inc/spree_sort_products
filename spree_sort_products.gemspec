# encoding: UTF-8
Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_sort_products'
  s.version     = '2.3.3'
  s.summary     = 'Spree Sort Products gives you ability to sort products with in a taxon for spree.'
  s.description = 'Spree Sort Products extends the ability of a taxon on its products to be sorted from the web interface using the drag and drop behavior.'
  s.required_ruby_version = '>= 2.3.0'

  s.author    = 'Surya Tripathi'
  s.email     = 'raj.surya19@gmail.com'
  s.homepage  = 'https://github.com/suryart/spree_sort_products'

  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_dependency 'spree_backend', '~> 2.3.0'
  s.add_dependency 'jquery-dragsort-rails', '~> 1.0.0'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'rails', '4.1.16'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails', '5.0.7'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3', '1.3.9'
end
