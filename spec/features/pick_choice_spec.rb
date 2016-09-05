require 'spec_helper'

feature 'Shape choices' do
  scenario 'display shapes for player to choose from' do
    sign_in_and_play
    expect(page).to have_button('rock')
    expect(page).to have_button('paper')
    expect(page).to have_button('scissors')
  end

  # feature 'Pick choice' do
  #   scenario 'player1 to pick shape rock' do
  #     sign_in_and_play
  #     click_button 'rock'
  #     expect(page).to have_content('You chose rock')
  #     # expect(page).to have_button('paper')
  #     # expect(page).to have_button('scissors')
  #   end
  # end
end
