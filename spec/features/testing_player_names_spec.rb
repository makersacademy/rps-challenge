require 'spec_helper'

feature 'Testing player names' do
  scenario 'The player names are displayed after submitting form' do
    visit('/')
    fill_in 'player_name', with: 'John'
    click_button('Submit')

    save_and_open_page
    
    expect(page).to have_content 'Welcome to the game, John'
  end



end



