require 'spec_helper'

feature 'Register name' do
  scenario 'Submit player name' do
    visit('/')
    fill_in :player_name, with: 'Alwin'
    click_button 'Submit'
    expect(page).to have_content 'Welcome Alwin'
  end
end
