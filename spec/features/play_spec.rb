require 'spec_helper'

feature 'game_spec: Start a game' do

  before do
    single_player_sign_in
  end

  scenario '1. displays greeting that includes name' do
    expect(page).to have_content('Shane, you will play the computer.')
  end

  scenario '2. asks the user to choose a weapon' do
    expect(page).to have_content('Choose your weapon.')
  end

  scenario '3. has a button for weapon Rock' do
    expect(page).to have_button('Rock')
  end

  scenario '4. has a button for weapon Paper' do
    expect(page).to have_button('Paper')
  end

  scenario '4. has a button for weapon Scissors' do
    expect(page).to have_button('Scissors')
  end
end
