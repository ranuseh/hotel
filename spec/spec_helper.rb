require 'simplecov'
SimpleCov.start
require 'minitest'
require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative '../lib/hotel'
require_relative '../lib/room'
require_relative '../lib/booking'
require_relative '../lib/reservation_system.rb'




