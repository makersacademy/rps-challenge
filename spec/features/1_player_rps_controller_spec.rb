require 'spec_helper'
require './app/controllers/1_player_rps_controller'

feature '/' do

  before(:each) do
    visit('/')
  end

  scenario 'expect home page to have content (Enter Player 1)' do
    expect(page).to have_content('Enter Player Name')
  end

  scenario 'expect submit button' do
    expect(page).to have_button('Submit')
  end

  scenario 'expect game.player.name to equal Bob' do
    fill_in('player', with: 'Bob')
    click_button('Submit')
    expect($game.player.name).to eq('Bob')
  end

  scenario 'expect play button' do
    expect(page).to have_button('Play')
  end

end

feature '/play' do

  before(:each) do
    visit('/')
    fill_in('player', with: 'Bob')
    click_button('Submit')
    click_button('Play')
  end

  scenario 'expect click play button to redirect to /play' do
    expect(page).to have_content('Whats Your Move?')
  end

  scenario 'expect rock button' do
    click_button('Submit')
    expect($game.player.move.item).to eq('rock')
  end

end
