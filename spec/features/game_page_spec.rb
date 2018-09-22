require 'spec_helper'

describe RockPaperScissors do
  feature "begin the game" do
    it "#click_button" do
      visit_and_begin_game
      click_button 'Rock, Paper, Scissors...'
      expect(page).to have_content('Your move is:')
    end
    
    it "checks for computer's move" do
      visit_and_begin_game
      click_button 'Rock, Paper, Scissors...'
      expect(page).to have_content('The All-Knowing Computer\'s move:')
    end

    it "returns the winner" do
      srand(3)
      visit_and_begin_game
      click_button 'Rock, Paper, Scissors...'
      expect(page).to have_content('winner!')
    end
    
    it "returns a tie" do
      srand(4)
      visit_and_begin_game
      click_button 'Rock, Paper, Scissors...'
      expect(page).to have_content('tie!')
    end
  end
end
