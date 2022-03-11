require 'spec_helper'

feature 'Testing the outcome page' do
  scenario "The player's choice is displayed" do
    visit('/')
    fill_in 'player_name', with: 'John'
    click_button('Submit')
    choose "rock"
    click_button('Submit')

    save_and_open_page
    
    expect(page).to have_content 'You chose rock'
  end

end
