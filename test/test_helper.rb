require "minitest/autorun"
require "rack/test"

ENV["RACK_ENV"] = "test"

require_relative "../app"

module TestHelpers
  def app
    Sinatra::Application
  end
end

class Minitest::Test
  include Rack::Test::Methods
  include TestHelpers
end
