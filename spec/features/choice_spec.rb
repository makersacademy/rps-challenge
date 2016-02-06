require 'spec_helper'

  feature "Player enters their name" do
    scenario "Player 1 enters their name" do
      visit '/'
      fill_in 'Player_1', with: "Zeshan"
      click_button "Submit name"
      expect(page).to have_text("Welcome to the game Zeshan!")
      expect(page).to have_text("Please select a choice from below")
      click_button "Rock"
      expect(page).to have_text("Zeshan chose Rock")
    end
end
