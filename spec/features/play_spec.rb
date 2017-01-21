require 'spec_helper'

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Playing a game' do
  before do
    visit '/'
    fill_in 'name', with: 'Ferdinand' # first the player has to register by entering their name
    click_button 'Submit'
  end

  # As a marketeer
  # So I can play a game
  # I want to be able to see the available tools
  scenario 'Seeing the available forms' do
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  # As a marketeer
  # So I can play a game
  # I want to be able to choose a tool to play
  scenario 'Choose a tool' do # how do you imagine this scenario?
    click_button 'Rock'
    expect(page).to have_content 'Rock! A wise choice.'
  end
end
