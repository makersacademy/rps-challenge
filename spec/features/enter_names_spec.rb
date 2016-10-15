require 'spec_helper'

feature 'enter names' do
    scenario 'submitting names' do
      visit('/')
      click_button 'proceed'
      fill_in :player_1_name, with: 'Victim'
      click_button 'Submit'
        expect(page).to have_content 'Jigsaw vs. Victim'
    end
end
