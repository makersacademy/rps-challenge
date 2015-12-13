# require 'capybara'
# require 'selenium-webdriver'
# include Capybara::DSL
# Capybara.default_driver= :selenium

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play game' do
  scenario 'selects rock' do
    sign_in_and_play
    click_button("Rock")
  end
end
