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

  scenario 'when opponent has made a choice player gets the outcome' do
    visit '/'
    fill_in('name', with: 'Nicola')
    click_button('Submit')
    choose('rock')
    $game.player_1.choice = 'scissors'
    click_button('Choose')
    expect(page).to have_content "You won! :)"
  end

end
