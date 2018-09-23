require 'spec_helper'

describe RockPaperScissors do
  feature "Checks out Homepage and fills info in" do
    it "#visit" do
      visit '/'
      expect(page).to have_text("the Greatest Game of Rock, Paper, and Scissors")
    end
    
    it "#fills in name and submits form" do
      visit_and_begin_game
      expect(page).to have_text("Carolina")
    end

    it "has #multiplayer features" do
      visit '/'
      click_button 'I want to beat my friend'
      expect(page).to have_content("Player One's Name:")
      expect(page).to have_content("Player Two's Name:")
    end

    it "#shows multiplayer page" do
      visit_for_multiplayer
      click_on 'Begin' 
      expect(page).to have_content("Patrick vs Squidward!")
    end
  end
end
