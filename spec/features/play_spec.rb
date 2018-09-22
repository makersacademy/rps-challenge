require 'spec_helper'

feature "playing the game" do
  context "when plays the game" do
    scenario "player sees the options available" do
      visit('/play')
      expect(page).to have_content 'Rock'
      expect(page).to have_content 'Paper'
      expect(page).to have_content 'Scissors'
    end
  end
end
