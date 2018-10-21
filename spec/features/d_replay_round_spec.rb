require 'spec_helper'

feature 'D - Play another round' do

  scenario 'selecting moves for players - no tie - two rounds' do
    sign_in_and_player_number
    accept_player_names
    expect(page).to have_content 'Rounds played: 0'
    player_moves_rockpaper
    player_moves_rockpaper
    expect(page).to have_content 'Rounds played: 2'
  end

end
