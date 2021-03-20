require 'spec_helper'

feature 'Player move' do
  scenario 'Player chooses Rock' do
    sign_in_and_start_game
    choose('Rock')
    click_on('submit')
    expect(page).to have_content('Zaphod played Rock')
  end
  
  scenario 'Player chooses Paper' do
    sign_in_and_start_game
    choose('Paper')
    click_on('submit')
    expect(page).to have_content('Zaphod played Paper')
  end

  scenario 'Player chooses Scissors' do
    sign_in_and_start_game
    choose('Scissors')
    click_on('submit')
    expect(page).to have_content('Zaphod played Scissors')
  end
end