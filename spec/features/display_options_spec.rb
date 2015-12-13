# require 'capybara'
# require 'selenium-webdriver'
# include Capybara::DSL
# Capybara.default_driver= :selenium

feature 'Display choices for game' do
  scenario 'Rock button' do
    sign_in_and_play
    find_button('rock').click
  end

  scenario 'Paper button' do
    sign_in_and_play
    find_button('paper').click
  end

  scenario 'Scissors button' do
    sign_in_and_play
    find_button('scissors').click
  end
end
