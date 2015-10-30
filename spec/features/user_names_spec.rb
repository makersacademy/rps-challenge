require 'spec_helper'

feature 'Enter user name' do
  scenario 'User name is entered' do
    visit('/')
    fill_in(:player_name, with: 'Player 1')
    click_button("Submit")
    expect(page).to have_content 'Player 1 has logged in!'
  end
end