require 'selenium-webdriver'

def browser_view
  include Capybara::DSL
  Capybara.default_driver = :selenium
end