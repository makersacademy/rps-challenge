require 'spec_helper'

feature 'player has three choices' do

  scenario 'player can select rock' do
    visit('/')
    fill_in :player_name, with: 'Laura'
    click_button 'Play'
    click_button 'Rock'
    expect(page).to have_content "You chose Rock!"
  end

  scenario 'player can select paper' do
    visit('/')
    fill_in :player_name, with: 'Laura'
    click_button 'Play'
    click_button 'Paper'
    expect(page).to have_content "You chose Paper!"
  end

  scenario 'player can select scissors' do
    visit('/')
    fill_in :player_name, with: 'Laura'
    click_button 'Play'
    click_button 'Scissors'
    expect(page).to have_content "You chose Scissors!"
  end

end
