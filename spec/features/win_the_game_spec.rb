require 'spec_helper'

feature 'Win the game' do
  before do
    srand(67_809)
    sign_in_and_play
  end

  scenario 'Rock against Scissors' do
    click_button('rock')
    expect(page).to have_content('Darth Vader wins')
  end
  scenario 'Paper against Scissors' do
    click_button('paper')
    expect(page).to have_content('Computer wins')
  end
  scenario 'Scissors against Scissors' do
    click_button('scissors')
    expect(page).to have_content('It is a draw')
  end
  scenario 'Rock against Paper' do
    srand(67_808)
    click_button('rock')
    expect(page).to have_content('Computer wins')
  end
end
