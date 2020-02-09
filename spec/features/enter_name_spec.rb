require 'spec_helper'

  feature 'registering player name' do
    scenario 'Player can register and see their name' do
      visit('/')
      fill_in "name", with: "Barri"
      click_button "Play"
      expect(page).to have_content "Barri"
  end
end
