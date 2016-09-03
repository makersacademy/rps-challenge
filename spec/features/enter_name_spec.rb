require 'spec_helper'

feature 'player name entry' do

  scenario 'player is welcomed to the game' do
    visit('/')
    expect(page).to have_content 'Ready to play Rock, Paper, Scissors?'
  end

  scenario 'player submits name' do
    visit('/')
    fill_in :player_name, with: 'Laura'
    click_button 'Play'
    expect(page).to have_content 'Welcome, Laura'
  end
end
