require 'spec_helper.rb'
require_relative './helpers.rb'

feature 'In Single Player Game' do
  scenario 'User is presented with RPS choices' do
    single_player_sign_in_helper
    expect(page).to have_content('Please choose your attack:')
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
    expect(page).to have_content('Please choose your attack Player 1')
  end
  scenario 'Player 2 is presented with RPS choices' do
    multiplayer_sign_in_helper
    click_link('Rock')
    expect(page).to have_content('Please choose your attack Player 2')
  end
end
