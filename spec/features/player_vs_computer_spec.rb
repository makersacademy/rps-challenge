
require 'spec_helper'

feature 'A game of RPS with Player vs Computer' do

  before do
    allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
  end

  scenario 'a player is able to choose from Rock, Paper or Scissors' do
    sign_in_and_play_single
    click_button('paper')
    click_button('fight')
    expect(page).to have_content('James chose paper')
  end

  scenario 'a player can win the game' do
    sign_in_and_play_single
    click_button('rock')
    click_button('fight')
    expect(page).to have_content('James is the winner!')
  end

  scenario 'the computer can win a game' do
    sign_in_and_play_single
    click_button('paper')
    click_button('fight')
    expect(page).to have_content('Computer is the winner!')
  end

  scenario 'there is a draw' do
    sign_in_and_play_single
    click_button('scissors')
    click_button('fight')
    expect(page).to have_content('It\'s a draw!')
  end
end
