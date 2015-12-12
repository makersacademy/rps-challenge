# require 'capybara'
# require 'selenium-webdriver'
# include Capybara::DSL
# Capybara.default_driver= :selenium

feature 'Display options for game' do
  scenario 'Rock button' do
    sign_in_and_play
    find_button('Rock').click
  end

  scenario 'Paper button' do
    sign_in_and_play
    find_button('Rock').click
  end

  scenario 'Scissors button' do
    sign_in_and_play
    find_button('Rock').click
  end
end
