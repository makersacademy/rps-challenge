def sign_in_and_play
    visit '/'
    fill_in 'Player_1_Name', with: 'Bob'
    click_button 'Submit'
end

def visual_test
  require 'capybara/dsl'
  require 'selenium-webdriver'

  include Capybara::DSL
  Capybara.default_driver = :selenium
end