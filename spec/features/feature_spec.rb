require "spec_helper"
require "./app"

feature 'Sign in' do


  scenario 'when entering game with a name, the player will be welcomed and prompted for input' do
    enter_game
    expect(page).to have_content 'Alright, Hendrik, what will it be?'
  end

  scenario 'The player can chose from 3 options - Rock, Paper or scissors' do
    enter_game
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("scissors")
  end

  scenario 'The player choses the "Rock" option and plays the game' do
    enter_game
    click_button("Rock")
    expect(page).to have_content 'You chose "Rock". Your Opponent chose'
  end

end
