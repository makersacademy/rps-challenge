require 'spec_helper'

feature 'Enter names' do
  scenario 'enter names at start of game' do
    visit('/')
    fill_in :player_1_name, with: 'Batman'
    fill_in :player_2_name, with: 'Jigsaw'
    click_button 'Submit'
    expect(page).to have_content "Batman vs. Jigsaw"
  end
end
