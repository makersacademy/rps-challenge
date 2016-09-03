require 'spec_helper'

feature 'player has three choices' do

  before do
    sign_in_and_play
  end

  scenario 'player can select rock' do
    click_button 'Rock'
    expect(page).to have_content "You chose Rock!"
  end

  scenario 'player can select paper' do
    click_button 'Paper'
    expect(page).to have_content "You chose Paper!"
  end

  scenario 'player can select scissors' do
    click_button 'Scissors'
    expect(page).to have_content "You chose Scissors!"
  end

end
