require 'spec_helper'

feature 'play game' do
  scenario 'Play game against another player' do
    two_player_mode
    turn_for_two_players
    expect(page).to have_content 'Player1 wins! Rock beats Scissors'
  end
end