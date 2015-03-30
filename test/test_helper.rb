# Active Support
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
# Active Support
class ActiveSupport < ActionController::TestCase
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
