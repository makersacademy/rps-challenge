require_relative 'web_helper'

feature 'Choose weapon' do
  scenario 'singleplayer can have a weapon' do
    single_sign_in_and_play
    choose("player_1_weapon", option: "Rock")
    click_button "Battle!"
    expect(page).to have_content 'Player 1 chose Rock'
    expect(page).not_to have_content 'Player 1 chose Paper'
  end

  scenario 'multiplayer can have a weapon' do
    multi_sign_in_and_play
    choose("player_1_weapon", option: "Rock")
    choose("player_2_weapon", option: "Rock")
    click_button "Battle!"
    expect(page).to have_content 'Player 1 chose Rock'
    expect(page).to have_content 'Player 2 chose Rock'
  end
end
