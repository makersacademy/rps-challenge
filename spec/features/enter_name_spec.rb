require 'spec_helper'

  feature 'registering player name' do
    scenario 'Player can register and see their name' do
      visit('/')
      fill_in "name", with: "Barri"
      click_button "Submit"
      expect(page).to have_content "Barri"
  end
    scenario 'Can see options R P S' do
      visit('/play')
      expect(page).to have_content "Rock"
      expect(page).to have_content "Paper"
      expect(page).to have_content "Scissors"
    end
end
