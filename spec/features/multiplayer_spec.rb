require 'spec_helper'
require './app'

RSpec.feature 'testing multiplayer' do
  scenario 'player1 can enter name' do
    visit '/'
    click_button 'multiplayer'
    expect(page).to have_field('player1')
  end

  scenario 'player2 can enter name' do
    visit '/'
    click_button 'multiplayer'
    expect(page).to have_field('player2')
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
end
