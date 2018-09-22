require 'spec_helper'

feature "playing the game" do
  context "when plays the game" do
    scenario "player sees the options available" do
      visit('/play')
      expect(page).to have_button 'Rock'
      expect(page).to have_button 'Paper'
      expect(page).to have_button 'Scissors'
    end
  end

  context "when player must choose an option" do
    scenario "player selects a shape" do
      visit('/play')
      click_button "Rock"
      #choice = "paper"
      expect(page).to have_content 'You chose Rock!!'
    end
  end
end
