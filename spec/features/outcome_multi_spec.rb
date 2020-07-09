require 'spec_helper'
require './lib/game'

feature 'Multiplayer outcome page' do
  scenario 'Player 1 wins' do
    multiplayer_sign_in
    fill_in :choice_1, with: 'Scissors'
    click_button("Play!")
    fill_in :choice_2, with: 'Paper'
    click_button("Play!")
    expect(page).to have_content("Player 1 wins!")
  end

  scenario 'Player 2 wins' do
    multiplayer_sign_in
    fill_in :choice_1, with: 'Rock'
    click_button("Play!")
    fill_in :choice_2, with: 'Paper'
    click_button("Play!")
    expect(page).to have_content("Player 2 wins!")
  end

  scenario 'Draw' do
    multiplayer_sign_in
    fill_in :choice_1, with: 'Rock'
    click_button("Play!")
    fill_in :choice_2, with: 'Rock'
    click_button("Play!")
    expect(page).to have_content("It's a draw!")
  end
end
