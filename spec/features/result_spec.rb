require 'spec_helper'

feature 'testing results' do
  scenario 'shows results' do
      visit('/')
      fill_in('player_1_name', with: "Tango")
      fill_in('player_2_name', with: "Cash")
      click_button("Submit")
      click_button("Rock")
      click_button("Paper")
      expect(page).to have_content("Paper beats Rock")
  end
end
