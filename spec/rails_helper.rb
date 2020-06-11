# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require File.expand_path('../dummy/config/environment.rb',  __FILE__)
require 'spec_helper'
require 'support/database_cleaner.rb'

if ENV.fetch('REPORT_COVERAGE',false) == "true"
  require 'simplecov'
  require 'simplecov-cobertura'
  SimpleCov.formatter = SimpleCov::Formatter::CoberturaFormatter
  SimpleCov.start 'rails'
end

# Add additional requires below this line. Rails is not loaded until this point!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.render_views = true

  # Capybara javascript drivers require transactional fixtures set to false, and we use DatabaseCleaner
  # to cleanup after each test instead.  Without transactional fixtures set to false the records created
  # to setup a test will be unavailable to the browser, which runs under a seperate server instance.
  config.use_transactional_fixtures = false
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

  # config.include Devise::TestHelpers, :type => :controller

  # include spree test helper methods
  config.include Spree::TestingSupport::UrlHelpers
  config.include Spree::TestingSupport::Preferences
  config.include Capybara::DSL
  config.include Spree::TestingSupport::ControllerRequests, :type => :controller
end
