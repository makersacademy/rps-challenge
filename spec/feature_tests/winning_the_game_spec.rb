require 'spec_helper'

feature 'Winning the game' do
  scenario 'The player wins the game' do
    sign_in_and_play
    click_button 'ROCK'
    expect(page).to have_content "You have ...... WON!"
  end

  scenario 'The player loses the game' do
    sign_in_and_play
    click_button 'PAPER'
    expect(page).to have_content "You have ...... LOST!"
  end

  scenario 'The game is a draw' do
    sign_in_and_play
    click_button 'SCISSORS'
    expect(page).to have_content "You have ...... DRAWN!"
  end

  scenario 'Playing the game again' do
    sign_in_and_play
    click_button 'ROCK'
    click_button 'Play Again'
    expect(page).to have_content "Felix challenges the Champion to a game of ROCK, PAPER, SISSORS..."
  end

  scenario 'Choosing lizard' do
    sign_in_and_play
    click_button 'LIZARD'
    expect(page).to have_content "You have ...... LOST!"
  end

  scenario 'Choosing Spock' do
    sign_in_and_play
    click_button 'SPOCK'
    expect(page).to have_content "You have ...... WON!"
  end

end
