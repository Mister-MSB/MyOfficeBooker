require 'simplecov'
require 'cucumber/rails'
require 'factory_bot'

if ENV['RAILS_ENV'] == 'test'
  require 'codecov'
  SimpleCov.formatter = SimpleCov::Formatter::Codecov
end

World(FactoryBot::Syntax::Methods)
World(Rails.application.routes.url_helpers)
