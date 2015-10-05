require 'spec_helper'

feature 'Starting a new game' do
  before(:each) { visit '/' }

  scenario 'First page asks how many players there are' do
    expect(page).to have_content "How many players are playing?"
  end

  scenario 'Must ask player to choose an object' do
    visit ('/players')
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

  scenario 'Must ask player 2 to choose an object' do
    visit ('/')
    click_button '2 Player'
    fill_in('name1', with: "Usman")
    fill_in('name2', with: "Jamil")
    click_button 'Start Game'
    click_button 'rock'
    click_button 'rock'
    expect(page).to have_content "draw"
  end

  scenario 'Must allow game to be a draw' do
    visit ('/')
    click_button '2 Player'
    fill_in('name1', with: "Usman")
    fill_in('name2', with: "Jamil")
    click_button 'Start Game'
    click_button 'rock'
    click_button 'rock'
    expect(page).to have_content "draw"
  end

  scenario 'Must allow a player to win' do
    visit ('/')
    click_button '2 Player'
    fill_in('name1', with: "Usman")
    fill_in('name2', with: "Jamil")
    click_button 'Start Game'
    click_button 'rock'
    click_button 'paper'
    expect(page).to have_content "Player 2 wins!"
  end

  scenario 'Must allow a player to win' do
    visit ('/')
    click_button '2 Player'
    fill_in('name1', with: "Usman")
    fill_in('name2', with: "Jamil")
    click_button 'Start Game'
    click_button 'paper'
    click_button 'rock'
    expect(page).to have_content "Player 1 wins!"
  end
end
