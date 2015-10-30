require 'spec_helper'

feature 'Register a player' do
  scenario 'fill in player name when starting a new game' do
    visit('/')
    fill_in('player_name', with: 'Darth Vader')
    click_button('Start game')
    expect(page).to have_content('Darth Vader playing Rock Paper Scissors')
  end
end
