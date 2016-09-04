
require 'spec_helper'

feature 'A game of RPS with Player vs Computer' do

  scenario 'a player is able to choose from Rock, Paper or Scissors' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('James chose Paper')
  end


end
