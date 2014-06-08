require 'rspec'
require 'guard/rspec'
require 'psychoframe'
require 'coveralls'
Coveralls.wear!

RSpec.configure do |config|
  config.color_enabled = true
  config.order = :random
end
