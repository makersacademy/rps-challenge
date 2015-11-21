require 'capybara'
require './spec/web_helpers.rb'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

  feature 'registers player name:' do
    scenario 'allows to enter name and displays it' do
      register_and_play
      expect(page).to have_content('BoredPerson')
    end
  end
