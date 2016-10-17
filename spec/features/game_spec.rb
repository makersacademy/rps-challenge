require 'spec_helper'
require './lib/player'

feature 'Saving player name' do
  scenario 'when starting a new game' do
    enter_names_and_play
    expect(page).to have_text("Player_1")
  end
end

feature 'Player can choose between weapons' do
  scenario 'when play page loads' do
    enter_names_and_play
    expect(page).to have_text("Rock")
    expect(page).to have_text("Paper")
    expect(page).to have_text("Scissors")
  end
end

feature 'Displays player\'s weapon of choice' do
  scenario 'on result page' do
    enter_names_and_play
    click_button("rock")
    expect(page).to have_text("Rock")
  end
end
