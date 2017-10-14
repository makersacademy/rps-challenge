require 'spec_helper'

feature 'Enter name' do
  scenario 'The player can enter their name' do
    visit ('/')
    fill_in :player_name, with: "Tim"
    click_button 'Submit'
    expect(page).to have_content "Tim"
  end
end
