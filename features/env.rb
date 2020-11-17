
require 'appium_console'
require 'appium_lib'
require 'pry'
require 'rspec'
require 'faker'

DEVICE = ENV['PLATFORM']

caps = Appium.load_appium_txt file: File.expand_path("support/caps/#{DEVICE}/appium.txt", __dir__), verbose: true
Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object
