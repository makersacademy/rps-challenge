require 'spec_helper'

feature 'Win the game' do
  scenario 'Rock against Scissors' do
    srand(67809)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('You win')
  end
  scenario 'Paper against Scissors' do
    srand(67809)
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('Computer wins')
  end
  scenario 'Scissors against Scissors' do
    srand(67809)
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('It is a draw')
  end
  scenario 'Rock against Paper' do
    srand(67808)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Computer wins')
  end
end
