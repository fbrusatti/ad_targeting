require 'spec_helper'
require 'capybara/rspec'
require 'capybara/rails'
require 'capybara-screenshot/rspec'

RSpec.configure do |config|
  if Capybara.current_driver == :rack_test
    DatabaseCleaner.strategy = :transaction
  else
    DatabaseCleaner.strategy = :truncation
  end

  # Javascript driver
  Capybara.javascript_driver = :webkit
end
