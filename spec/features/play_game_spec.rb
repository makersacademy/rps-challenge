require 'spec_helper'

# User Story 2:

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Play rock/paper/scissors' do
  scenario 'allows to choose option' do
    sign_in_and_play
    choose('rock')
    click_button 'Play!'
    expect(page).to have_content 'You have chosen rock'
  end
  scenario 'congratulates in case of victory' do
    # sign_in_and_play
    # choose('rock')
    # click_button 'Play!'
    # expect(page).to have_content 'Congratulations, you win!'
  end
  scenario 'encourages to play again in case of defeat' do
    # sign_in_and_play
    # choose('rock')
    # expect(page).to have_content 'Congratulations, you win!'
  end
end
