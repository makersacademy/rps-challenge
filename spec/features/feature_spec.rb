require_relative '../../app'
require 'spec_helper'

describe RPS do

  before do
    visit '/'
  end

  scenario 'has the option to change from different games' do
    expect(page).to have_content "Please choose the game you would like to play"
  end

  scenario 'select single player mode' do
    click_button 'Single Player'
    expect(page).to have_content "Please type in your name"
  end

  scenario 'add a player name to start the game' do
    click_button 'Single Player'
    fill_in 'player', with: 'Peter'
    click_button 'Submit'
    expect(page).to have_content 'Choose your weapon'
  end

  scenario 'choose a weapon and win' do
    click_button 'Single Player'
    fill_in 'player', with: 'Peter'
    click_button 'Submit'
    click_button 'Rock'
    expect(page).to have_content "You won"
  end
end
