require 'capybara/rspec'

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
  end
end

# -what :type => :feature doeas?
# -should i test each tag, each content?  I don't think so.
# Then.. in base of what i decide what to test?
