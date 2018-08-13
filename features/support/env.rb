require 'cucumber/rails'
require 'factory_bot'

World(FactoryBot::Syntax::Methods)
World(Rails.application.routes.url_helpers)
