require 'spec_helper'

feature 'next_round_spec: Next round' do

  before do
    single_player_next_from_win
  end

  scenario '1. displays title of game' do
    expect(page).to have_content('Rock Paper Scissors')
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

  scenario '5. displays player one\'s points' do
    expect(page).to have_content('Shane: 1')
  end

  scenario '6. displays player two\'s points' do
    expect(page).to have_content('Computer: 0')
  end
end
