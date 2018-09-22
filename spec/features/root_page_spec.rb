require 'spec_helper'

describe RockPaperScissors do
  feature "Checks out Homepage and fills info in" do
    it "#visit" do
      visit '/'
      expect(page).to have_text("the Greatest Game of Rock, Paper, and Scissors")
    end
    
    it "#fills in name and submits form" do
      visit '/'
      fill_in 'player', with: "Carolina"
      click_button 'Play Game'
      expect(page).to have_text("Carolina")
    end
  end
end
