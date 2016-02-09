require 'spec_helper'

feature 'Players can play again' do

  scenario 'new single player can play again' do
    play_one_player_game
    click_button "New player?"
    expect(page).to have_text("Please enter your name")
  end

  scenario 'two players can play again' do
    play_two_player_game
    click_button "Play Again?"
    expect(page).to have_text("Please enter your name")
    expect(page).to have_text("Or click here for multiplayer")
  end

end
