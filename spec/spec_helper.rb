# Run Coverage report
require 'coveralls'
Coveralls.wear!

require 'simplecov'
SimpleCov.start do
  add_filter 'spec/dummy'
  add_group 'Controllers', 'app/controllers'
  add_group 'Helpers', 'app/helpers'
  add_group 'Mailers', 'app/mailers'
  add_group 'Models', 'app/models'
  add_group 'Views', 'app/views'
  add_group 'Libraries', 'lib'
end

require 'rspec/rails'
require 'database_cleaner'
require 'ffaker'
require 'factory_girl'
FactoryGirl.find_definitions

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require f }

require 'spree/testing_support/authorization_helpers'
require 'spree/testing_support/capybara_ext'
require 'spree/testing_support/controller_requests'
# Requires factories defined in spree_core
require 'spree/testing_support/factories'
require 'spree/testing_support/preferences'
require 'spree/testing_support/order_walkthrough'
require 'spree/testing_support/url_helpers'

# Requires factories defined in lib/spree_sort_products/factories.rb
require 'spree_sort_products/factories'

RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  # == Mock Framework
  #
  # If you prefer to use mocha, flexmock or RR, uncomment the appropriate line:
  #
  # config.mock_with :mocha
  # config.mock_with :flexmock
  # config.mock_with :rr
  config.mock_with :rspec
  config.color = true

  config.fail_fast = ENV['FAIL_FAST'] || false
  config.order = 'random'
end
