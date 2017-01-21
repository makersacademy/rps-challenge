require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Playing a game' do
  before do
    visit '/'
    fill_in 'name', with: 'Ferdinand'
    click_button 'Submit'
  end # first the player has to register by entering their name
  # As a marketeer
  # So I can play a game
  # I want to be able to see the available shapes
  scenario 'Seeing the available shapes' do
    expect(page).to have_content 'Rock'
    expect(page).to have_content 'Paper'
    expect(page).to have_content 'Scissors'
  end
end
