require 'spec_helper'

feature 'Enter name' do
  scenario 'submit name to play' do
  	visit('/')
  	fill_in :player_name, with: 'Luke'
  	click_button 'Submit'
  	expect(page).to have_content 'Luke vs. Machine'
  end
end