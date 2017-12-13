require 'capybara/rspec'
require './spec/features/web_helper.rb'
require './lib/game.rb'

describe Rps, :type => :feature do
  describe 'Homepage' do
    it "Should contain a form to let login the player" do
      visit '/'
      expect(page).to have_selector("input")
    end
    it "Should show the name of the game" do
      visit '/'
      expect(page).to have_content("Rock-Paper-Scissor GAME")
    end
    it "Should show the name of the player_1, in the /play route" do
      sign_in_and_play
      expect(page).to have_content("Marco")
    end
    it "Should show the name of the player_2, in the /play route" do
      sign_in_and_play
      expect(page).to have_content("Queen Elizabeth")
    end
  end
  describe '/play' do
    it "Check if player 1 win using scissor and Queen lose using Rock." do
      sign_in_and_play
      click_scissor(1)
      click_rock(2)
      expect(page).to have_content("Queen Elizabeth WON!")
    end
  end
  describe '/play' do
    it "Check if player 1 win using Rock and Queen lose using Scissor." do
      sign_in_and_play
      click_scissor(2)
      click_rock(1)
      expect(page).to have_content("Marco WON!")
    end
  end
  describe '/play' do
    it "Check if player 1 win using Paper and Queen lose using Paper" do
      sign_in_and_play
      click_paper(1)
      click_paper(2)
      expect(page).to have_content("TIE!")
    end
  end
end
