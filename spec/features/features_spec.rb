require 'spec_helper'
require './app'

RSpec.feature 'Testing homepage' do
  scenario 'have game title' do
    visit '/'
    expect(page).to have_content 'RPS'
  end

  scenario 'player1 can enter name' do
    visit '/'
    expect(page).to have_field('player1')
  end

  scenario 'player2 can enter name' do
    visit '/'
    expect(page).to have_field('player2')
  end

  scenario 'players can start the game' do
    visit '/'
    expect(page).to have_button('Play')
  end
end

RSpec.feature 'play again' do
  scenario 'player can play again' do
    visit '/'
    fill_in 'player1', with: 'Claudia'
    fill_in 'player2', with: 'Marianne'
    click_button 'Play'
    click_button 'Paper'
    click_button 'Rock'
    expect(page).to have_button('Play again')
  end
end

RSpec.feature 'multiplayer' do
  scenario 'player1 can choose rock' do
    visit '/'
    fill_in 'player1', with: 'Claudia'
    fill_in 'player2', with: 'Marianne'
    click_button 'Play'
    expect(page).to have_button('Rock')
  end

  scenario 'player1 can choose paper' do
    visit '/'
    fill_in 'player1', with: 'Claudia'
    fill_in 'player2', with: 'Marianne'
    click_button 'Play'
    expect(page).to have_button('Paper')
  end

  scenario 'player1 can choose scissors' do
    visit '/'
    fill_in 'player1', with: 'Claudia'
    fill_in 'player2', with: 'Marianne'
    click_button 'Play'
    expect(page).to have_button('Scissors')
  end

  scenario 'player2 can choose rock' do
    visit '/'
    fill_in 'player1', with: 'Claudia'
    fill_in 'player2', with: 'Marianne'
    click_button 'Play'
    click_button 'Paper'
    expect(page).to have_button('Rock')
  end

  scenario 'player2 can choose paper' do
    visit '/'
    fill_in 'player1', with: 'Claudia'
    fill_in 'player2', with: 'Marianne'
    click_button 'Play'
    click_button 'Paper'
    expect(page).to have_button('Paper')
  end

  scenario 'player2 can choose scissors' do
    visit '/'
    fill_in 'player1', with: 'Claudia'
    fill_in 'player2', with: 'Marianne'
    click_button 'Play'
    click_button 'Paper'
    expect(page).to have_button('Scissors')
  end

  scenario 'player 1 wins' do
    visit '/'
    fill_in 'player1', with: 'Claudia'
    fill_in 'player2', with: 'Marianne'
    click_button 'Play'
    click_button 'Paper'
    click_button 'Rock'
    expect(page).to have_content('Claudia wins! :D')
  end

  scenario 'player 2 wins' do
    visit '/'
    fill_in 'player1', with: 'Claudia'
    fill_in 'player2', with: 'Marianne'
    click_button 'Play'
    click_button 'Paper'
    click_button 'Scissors'
    expect(page).to have_content('Marianne wins! :D')
  end

  scenario 'draw' do
    visit '/'
    fill_in 'player1', with: 'Claudia'
    fill_in 'player2', with: 'Marianne'
    click_button 'Play'
    click_button 'Paper'
    click_button 'Paper'
    expect(page).to have_content("It's a tie! Try again!")
  end
end
