require 'spec_helper'
require_relative 'web_helpers'

feature 'playing rock, paper, scissors' do
  scenario 'it displays rock, paper, scissors options' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'it displays the choice' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You choose Rock')
  end

  scenario 'it displays the opponent\'s random choice' do
    sign_in_and_play
    srand(200)
    click_button('Rock')
    expect(page).to have_content('Computer chooses Scissors')
  end

  scenario 'it displays the winner' do
    sign_in_and_play
    srand(200)
    click_button('Rock')
    expect(page).to have_content('You won!')
  end
end
