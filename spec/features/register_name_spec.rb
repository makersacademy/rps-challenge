require 'spec_helper'

feature 'Register player name' do
  scenario 'register player name to begin game' do
    visit('/')
    fill_in :player_name, with: 'Hiro'
    click_button 'Submit'
    expect(page).to have_content 'Hiro vs. Computer'
  end
end
