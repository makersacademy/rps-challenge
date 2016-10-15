require 'spec_helper'

feature 'playing the game' do
  scenario 'player can choose play options' do
    sign_in
    expect(page).to have_content 'Choose your weapon: Rock, Paper or Scissors!'
  end
  scenario 'player has choice of rock, paper or scissors' do
    sign_in
    expect(page).to have_selector("input[type=radio][value='Rock']")
    expect(page).to have_selector("input[type=radio][value='Paper']")
    expect(page).to have_selector("input[type=radio][value='Scissors']")
  end
  scenario 'player can choose rock, paper or scissors' do
    sign_in
    choose 'Rock'
    click_button 'Submit' 
    expect(page).to have_content 'Batman chose Rock'
  end
end
