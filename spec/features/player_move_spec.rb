require 'spec_helper'

feature 'Player move' do
  scenario 'Player plays Rock' do
    sign_in_and_start_game
    make_move('Rock')
    expect(page).to have_content('Zaphod played Rock')
  end
  
  scenario 'Player plays Paper' do
    sign_in_and_start_game
    make_move('Paper')
    expect(page).to have_content('Zaphod played Paper')
  end

  scenario 'Player plays Scissors' do
    sign_in_and_start_game
    make_move('Scissors')
    expect(page).to have_content('Zaphod played Scissors')
  end
end
