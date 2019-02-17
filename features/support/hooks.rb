require 'watir'
require 'cucumber'
require 'rspec'

Before do
  @browser = Watir::Browser.new  :chrome
  @browser.window.maximize
end

After do
  @browser.close
end
