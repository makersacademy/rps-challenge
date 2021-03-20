require 'spec_helper'

describe RockPaperScissors do
  feature 'the homepage' do
    scenario 'the hompage has the title rock paper, scissors' do
      visit '/home'
      expect(page).to have_content "Rock, Paper, Scissors"
    end
  end

  feature 'player can enter a name' do
    scenario 'the player can see their name on the play page' do
      visit '/home'
      fill_in 'player_name', with: "Sneaky Racoon"
      click_button 'Submit'
      expect(page).to have_content "Sneaky Racoon"
    end
  end
end
