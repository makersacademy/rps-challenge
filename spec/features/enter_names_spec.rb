require 'spec_helper'

feature 'Enter name' do
  scenario 'submits player name' do
    visit ('/')
    fill_in :player_name, with: 'Samir'
    click_button 'Submit'
    expect(page).to have_content 'Samir'
  end
end
