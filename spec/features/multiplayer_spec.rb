require 'spec_helper'
require './app'

RSpec.feature 'testing multiplayer' do
  scenario 'player1 can enter name' do
    visit '/'
    click_button '2 players'
    expect(page).to have_field('player1')
  end

  scenario 'player2 can enter name' do
    visit '/'
    click_button '2 players'
    expect(page).to have_field('player2')
  end

  scenario 'players can start the game' do
    visit '/'
    click_button '2 players'
    expect(page).to have_button('Play')
  end

  scenario 'player1 can choose rock' do
    multi_name_play
    expect(page).to have_button('Rock')
  end

  scenario 'player1 can choose paper' do
    multi_name_play
    expect(page).to have_button('Paper')
  end

  scenario 'player1 can choose scissors' do
    multi_name_play
    expect(page).to have_button('Scissors')
  end

  scenario 'player1 can choose spock' do
    multi_name_play
    expect(page).to have_button('Spock')
  end

  scenario 'player1 can choose lizard' do
    multi_name_play
    expect(page).to have_button('Lizard')
  end

  scenario 'player2 can choose rock' do
    multi_name_play
    click_button 'Paper'
    expect(page).to have_button('Rock')
  end

  scenario 'player2 can choose paper' do
    multi_name_play
    click_button 'Paper'
    expect(page).to have_button('Paper')
  end

  scenario 'player2 can choose scissors' do
    multi_name_play
    click_button 'Paper'
    expect(page).to have_button('Scissors')
  end

  scenario 'player2 can choose spock' do
    multi_name_play
    click_button 'Paper'
    expect(page).to have_button('Spock')
  end

  scenario 'player2 can choose lizard' do
    multi_name_play
    click_button 'Paper'
    expect(page).to have_button('Lizard')
  end

  scenario 'player 1 wins' do
    multi_name_play
    click_button 'Rock'
    click_button 'Scissors'
    expect(page).to have_content('Claudia wins! :D')
  end

  scenario 'player 2 wins' do
    multi_name_play
    click_button 'Paper'
    click_button 'Scissors'
    expect(page).to have_content('Marianne wins! :D')
  end

  scenario 'draw' do
    multi_name_play
    click_button 'Paper'
    click_button 'Paper'
    expect(page).to have_content("It's a tie! Try again!")
  end

  scenario 'players can play again' do
    multi_name_play
    click_button 'Paper'
    click_button 'Rock'
    expect(page).to have_button('Play again')
  end

  scenario 'players start new game' do
    multi_name_play
    click_button 'Paper'
    click_button 'Rock'
    expect(page).to have_button('Start new game')
  end
end
