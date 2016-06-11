require 'spec_helper'

feature 'Choose weapon' do
  scenario 'select a weapon to do battle' do
  	visit('/')
  	fill_in :player_name, with: 'Luke'
  	click_button 'Submit'
  	expect(page).to have_content 'Luke choose your weapon...'
  end
end