require 'spec_helper'
require './app'

RSpec.feature 'Testing solo' do
  scenario 'player can enter name' do
    visit '/'
    click_button '1 player'
    expect(page).to have_field('player')
  end

  scenario 'player can start the game' do
    visit '/'
    click_button '1 player'
    expect(page).to have_button('Play')
  end

  scenario 'player wins' do
    solo_name_play
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    click_button 'Scissors'
    expect(page).to have_content 'Claudia wins! :D'
  end

  scenario 'computer wins' do
    solo_name_play
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    click_button 'Rock'
    expect(page).to have_content 'Skynet wins! :D'
  end

  scenario 'draw' do
    solo_name_play
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    click_button 'Paper'
    expect(page).to have_content "It's a tie! Try again!"
  end

  scenario 'player can play again' do
    solo_name_play
    click_button 'Paper'
    expect(page).to have_button('Play again')
  end

  scenario 'player can start new game' do
    solo_name_play
    click_button 'Paper'
    expect(page).to have_button('Start new game')
  end
end
