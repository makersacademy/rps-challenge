require 'spec_helper'

feature 'multi player game' do

  scenario 'the welcome page allows a player to start a multi player game' do
    visit '/'
    choose('multi')
    click_button('Start Game')
    expect(page).to have_content 'Enter your name'
  end

  scenario 'when a game is already in session a new player is just asked for her name' do
    visit '/'
    expect(page).to have_content 'Enter your name'
  end

  scenario 'when your opponent has yet to make a choice the player gets a holding page' do
    visit '/'
    fill_in('name', with: 'Nicola')
    click_button('Submit')
    choose('rock')
    click_button('Choose')
    expect(page).to have_content 'Still waiting for your opponent to decide'
  end

end
