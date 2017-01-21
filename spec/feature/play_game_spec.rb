require 'spec_helper'


feature 'playing the game RPS' do
  scenario 'player to see options rock, paper or scissors' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
    expect(page).to have_button 'Paper'
    expect(page).to have_button 'Scissors'
  end

  scenario 'player to be able to choose tool' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end
end
