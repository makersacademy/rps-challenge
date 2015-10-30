require 'spec_helper'

feature 'Register a player' do
  scenario 'fill in player name when starting a new game' do
    sign_in_and_play
    expect(page).to have_content('Darth Vader playing Rock Paper Scissors')
  end
end
