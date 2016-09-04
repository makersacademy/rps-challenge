require 'spec_helper.rb'
require_relative './helpers.rb'

feature 'In Single Player Game' do
  scenario 'User is presented with RPS choices' do
    single_player_sign_in_helper
    expect(page).to have_content('Choose Your Attack')
  end
  scenario 'User chooses link' do
    single_player_sign_in_helper
    click_link('Rock')
    expect(page).to have_content('Player 1 Chose Rock')
  end
end

feature 'In Multiplayer Game' do
  scenario 'Player 1 is presented with RPS choices' do
    multiplayer_sign_in_helper
    expect(page).to have_content('Player 1 Choose Your Attack')
  end
  scenario 'Player 2 is presented with RPS choices' do
    multiplayer_sign_in_helper
    click_link('Rock')
    expect(page).to have_content('Player 2 Choose Your Attack')
  end
end
