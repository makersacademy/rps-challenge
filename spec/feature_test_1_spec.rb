require 'spec_helper.rb'
require './app.rb'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'registering names' do
  scenario 'Player 1 register name' do
    visit('/')
    fill_in "player_1", with: 'Carl'
    click_button 'Submit'
    expect(page).to have_content 'Carl'
  end
end
