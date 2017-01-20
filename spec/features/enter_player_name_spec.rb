require 'spec_helper'

feature "Entry form"  do
  scenario "displays player names" do
    visit('/')
    fill_in :player, with: 'Player'
    click_button 'submit'
    expect(page).to have_content('Player')
  end
end
