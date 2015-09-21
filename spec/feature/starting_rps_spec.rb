require 'spec_helper'

feature 'Starting a new game' do
  before(:each) { visit '/' }

  scenario 'First page asks how many players there are' do
    expect(page).to have_content "How many players are playing?"
  end

  scenario 'Must ask player to choose an object' do
    visit ('/single_player')
    fill_in('name', with: "Usman")
    click_button 'Start Game'
    expect(page).to have_content "Usman, choose your object..."
  end

  scenario 'Must take to 1 player game if only 1 player' do
    visit ('/')
    click_button '1 Player'
    fill_in('name', with: "Usman")
    click_button 'Start Game'
    expect(page).to have_content "Usman, choose your object..."
  end

  scenario 'Must take to 2 player game if 2 players' do
    visit ('/')
    click_button '2 Player'
    fill_in('name1', with: "Usman")
    fill_in('name2', with: "Jamil")
    click_button 'Start Game'
    expect(page).to have_content "Usman, choose your object..."
  end

  scenario 'Must provide a result of the game' do
    visit '/start_game'
    click_button 'rock'
    expect(page).to have_content "Game result:"
  end

  scenario 'asks for two players name' do
    visit '/double_player'
    expect(page).to have_content "Enter the name of player 1:" && "
      Enter the name of player 2:"
  end

  scenario 'Must ask player 1 to choose an object' do
    visit ('/start_game_double')
    click_button 'rock'
    expect(page).to have_content "choose your object..."
  end

  scenario 'Must ask player 2 to choose an object' do
    visit ('/start_game_double')
    click_button 'rock'
    click_button 'rock'
    expect(page).to have_content "That's a draw!"
  end

  scenario 'Must take to 2 player game if 2 players' do
    visit ('/')
    click_button '2 Player'
    fill_in('name1', with: "Usman")
    fill_in('name2', with: "Jamil")
    click_button 'Start Game'
    click_button 'rock'
    click_button 'rock'
    expect(page).to have_content "That's a draw!"
  end
end
