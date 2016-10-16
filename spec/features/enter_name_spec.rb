require 'spec_helper'

feature 'enter names' do
    scenario 'Submitting names' do
      visit('/')
      fill_in :player_1_name, with: 'Brian'
      fill_in :player_2_name, with: 'Tom'
      click_button 'Submit'
      expect(page).to have_content 'Brian vs. Tom'
    end
end
