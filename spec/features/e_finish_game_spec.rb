require 'spec_helper'

feature 'E - Finish game and declare winner' do

  scenario 'selecting option to finish game' do
    sign_in_and_player_number
    accept_player_names
    player_moves_rockpaper
    click_button "Finish"
    expect(page).to have_content 'The game is over'
  end

  scenario 'selecting option to finish game - with winner' do
    sign_in_and_player_number
    accept_player_names
    player_moves_rockpaper
    click_button "Finish"
    expect(page).to have_content 'The game is over'
    expect(page).to have_content 'Result: Winner - Jane'
  end

  scenario 'selecting option to finish game - with no winner' do
    sign_in_and_player_number
    accept_player_names
    player_moves_rockrock
    player_moves_rockrock
    click_button "Finish"
    expect(page).to have_content 'The game is over'
    expect(page).to have_content 'Result: No winner'
  end

end
