require 'spec_helper'

describe RockPaperScissors do
  feature "begin the game" do
    it "#click_button" do
      visit_and_begin_game
      click_button 'Rock, Paper, Scissors...'
      expect(page).to have_content('Your move is:')
    end
  end
end