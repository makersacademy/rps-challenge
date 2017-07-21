require 'spec_helper'

feature 'Player can enter a name and start a game' do
  scenario 'Player enters name and gets directed to a game page' do
    visit('/')
    fill_in('player_name', with: 'Player Name')
    click_button 'Submit'
    expect(page).to have_content 'Player Name'
  end
end
