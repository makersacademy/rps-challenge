require 'spec_helper'

feature 'Player sign-in' do
  scenario 'Player can sign in and see their name' do
    visit('/')
    fill_in :player_1_name, with: 'Leon'
    click_button 'Submit Name'
    expect(page).to have_content 'Leon'
  end
end
