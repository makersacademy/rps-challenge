require 'spec_helper'

feature 'C - Play the round' do

  scenario 'selecting moves for players - with winner' do
    sign_in_and_player_number
    accept_player_names
    player_moves_rockpaper
    expect(page).to have_content 'Last round won by: Jane'
  end

  scenario 'selecting moves for players - with tie' do
    sign_in_and_player_number
    accept_player_names
    player_moves_rockrock
    expect(page).to have_content 'No winner for last round'
  end

  scenario 'selecting random moves for player' do
    sign_in_and_player_number
    accept_player_names
    player_moves_rockrock
    # srand 0 
    expect(page).to have_content 'No winner for last round'
  end

end

#Feature / scenario is in Capybara
