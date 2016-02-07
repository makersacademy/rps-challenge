require 'spec_helper'

feature 'Players can play again' do

  scenario 'new single player can play again' do
    play_one_player_game
    click_button "New player?"
    expect(page).to have_text("Please enter your name")
  end

  scenario 'single player can play again without re-entering name' do
    play_one_player_game
    click_button "Play Again? (One Player)"
    expect(page).to have_text("Welcome to the game Zeshan!")
  end

  scenario 'two players can play again' do
    play_two_player_game
    click_button "Play Again? (Two Players)"
    expect(page).to have_text("Please enter your name player 1")
    expect(page).to have_text("Please enter your name player 2")
  end

end
