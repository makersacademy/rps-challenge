require 'spec_helper'
require './app'

RSpec.feature 'Testing solo' do
  scenario 'player can enter name' do
    visit '/'
    click_button 'singleplayer'
    expect(page).to have_field('player1')
  end

  scenario 'player can start the game' do
    visit '/'
    click_button 'singleplayer'
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
    expect(page).to have_content 'Skynet wins! :('
  end

  scenario 'draw' do
    solo_name_play
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    click_button 'Paper'
    expect(page).to have_content "It's a tie! Try again!"
  end
end
