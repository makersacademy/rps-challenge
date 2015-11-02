require 'spec_helper'

feature 'choose number of players' do
  scenario 'Single Player' do
  	visit('/')
  	click_button 'Single Player'
   	expect(page).to have_content 'Player 1'
   	expect(page).not_to have_content 'Player 2'
  end
  scenario 'Multiplayer' do
  	visit('/')
    click_button 'Multiplayer'
    expect(page).to have_content 'Player 1'
   	expect(page).to have_content 'Player 2'
  end
end