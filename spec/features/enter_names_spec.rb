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
