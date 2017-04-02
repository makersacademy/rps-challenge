require 'spec_helper'

feature 'Register user name' do
  scenario 'Player registers name and sees name' do
    visit('/')
    fill_in :player_1, with: 'John'
    click_button 'Submit'
    expect(page).to have_content 'John'
  end
end
