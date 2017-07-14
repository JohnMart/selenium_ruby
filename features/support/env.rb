require 'watir'
require 'page-object'
require 'pry'
require 'pry-nav'

# launch an instance of chrome.
browser = Watir::Browser.new :chrome

Before do
  @browser = browser
end

# close the browser on exit.
at_exit do
  browser.close
end