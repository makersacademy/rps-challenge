
require 'spec_helper'

feature 'A game of RPS with Player vs Computer' do

  scenario 'a player is able to choose from Rock, Paper or Scissors' do
    sign_in_and_play_single
    click_button('Paper')
    expect(page).to have_content('James chose Paper')
  end

  scenario 'a single player game' do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    sign_in_and_play_single
    click_button ('Rock')
    expect(page).to have_content('THE RESULT: James chose Rock The Computer chose Paper')
  end


end
