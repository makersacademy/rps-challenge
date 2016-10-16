require "spec_helper"

feature 'Displays Main game page' do
  scenario 'Player has choice of Rock' do
    single_player_login
    find_button('Rock').click
  end

  scenario 'Player has choice of Paper' do
    single_player_login
    find_button('Paper').click
  end

  scenario 'Player has choice of Scissors' do
    single_player_login
    find_button('Scissors').click
  end
end
