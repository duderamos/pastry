ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

Dir[Rails.root.join('spec/support/**/*rb')].each {|f| require f}

RSpec.configure do |config|
  config.include Capybara::DSL
  config.mock_with :rspec
  config.order = 'random'
  #config.use_transactional_fixtures = true

  #config.include Rails.application.routes.url_helpers
end
