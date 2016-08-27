ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'factory_girl'
require "minitest/reporters"

Minitest::Reporters.use!

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :minitest_4
    with.library :rails
  end
end

class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods

  FactoryGirl.definition_file_paths = [File.expand_path('../factories', __FILE__)]
  FactoryGirl.find_definitions

  # Add more helper methods to be used by all tests here...
end
