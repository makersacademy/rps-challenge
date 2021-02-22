require_relative '../spec_helper'

feature 'play' do
  scenario 'player selects a move and gets outcome of game' do
    play
    expect(page).to have_content "Computer chose rock – you lose!"
  end
  scenario 'player can play again' do
    play
    click_button "Play again?"
    expect(page).to have_content "Hannah, let's play! Type rock, paper or scissors."
  end
end
