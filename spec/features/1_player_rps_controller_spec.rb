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

end
