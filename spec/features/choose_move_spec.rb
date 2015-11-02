require 'spec_helper'

feature 'Choose move' do

  scenario 'A player can choose Rock' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('You chose rock')
  end

  scenario 'A player can choose Paper' do
    sign_in_and_play
    click_button('paper')
    expect(page).to have_content('You chose paper')
  end

  scenario 'A player can choose Scissors' do
    sign_in_and_play
    click_button('scissors')
    expect(page).to have_content('You chose scissors')
  end

  scenario 'Computer chooses random move' do
    srand(67_809)
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content('Computer chose scissors')
  end
end
