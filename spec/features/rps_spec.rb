require 'capybara/rspec'
require './spec/features/web_helper.rb'
require './lib/game.rb'
require './lib/computer.rb'

describe Rps do
  describe 'Homepage', :type => :feature do
    it "Should contain a form to let login the player" do
      visit '/'
      expect(page).to have_selector("input")
    end
    it "Should show the name of the game" do
      visit '/'
      expect(page).to have_content("Rock-Paper-Scissor GAME")
    end
    it "Should show the name of the player, in the /play route" do
      sign_in_and_play
      expect(page).to have_content("Marco")
    end
  end
  describe '/play', :type => :feature do
    it "Check if clicking the button Rock the player win" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissor)
      sign_in_and_play
      click_rock
      expect(page).to have_content("Marco WON!")
    end
  end
  describe '/play', :type => :feature do
    it "Check if clicking the button Paper the player win" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      sign_in_and_play
      click_paper
      expect(page).to have_content("Marco WON!")
    end
  end
  describe '/play', :type => :feature do
    it "Check if clicking the button Scissor the player win" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
      sign_in_and_play
      click_scissor
      expect(page).to have_content("Computer WON!")
    end
  end
end

# -what :type => :feature Allow us to use methods such visit ('/')
#  to test the web site.
# -should i test each tag, each content?  I don't think so.
# Then.. in base of what i decide what to test?
