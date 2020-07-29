require 'spec_helper'
require './lib/game'

feature 'Singleplayer outcome page' do
  scenario 'User wins' do
    srand(2)
    sign_in_and_play
    fill_in :choice, with: 'Paper'
    click_button("Play!")
    expect(page).to have_content("Hibo wins!")
  end

  scenario 'Computer wins' do
    srand(2)
    sign_in_and_play
    fill_in :choice, with: 'Scissors'
    click_button("Play!")
    expect(page).to have_content("Computer wins!")
  end

  scenario 'Draw' do
    srand(2)
    sign_in_and_play
    fill_in :choice, with: 'Rock'
    click_button("Play!")
    expect(page).to have_content("It's a draw")
  end
end
