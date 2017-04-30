require_relative '../../app'
require 'spec_helper'

describe RPS do

  before do
    visit '/'
  end

  scenario 'has the option to change from different games' do
    expect(page).to have_content "MAIN MENU"
  end

  scenario 'select single player mode' do
    click_button 'Single Player'
    expect(page).to have_content "PLEASE TYPE IN YOUR NAME"
  end

  scenario 'add a player name to start the game' do
    click_button 'Single Player'
    fill_in 'player', with: 'TestPlayer'
    click_button 'Submit'
    expect(page).to have_content 'CHOOSE YOUR WEAPON'
  end

  scenario 'choose a weapon and fight' do
    click_button 'Single Player'
    fill_in 'player', with: 'TestPlayer'
    click_button 'Submit'
    click_button 'Rock'
    srand(2)
    expect(page).to have_content "VS"
  end
end
