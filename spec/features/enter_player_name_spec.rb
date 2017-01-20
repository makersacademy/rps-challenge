require 'spec_helper'

feature 'Entry form'  do
  scenario 'displays player name' do
    visit('/')
    fill_in :player, with: 'Player'
    click_button 'Submit'
    expect(page).to have_content('Player')
  end
end
