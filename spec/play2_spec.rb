require "capybara/rspec"
require_relative "../app/app"

Capybara.app = RPS

describe RPS do
  let(:computer_choice) {double :computer_choice}

  feature "Computer selects random weapon" do
    scenario "computer selects random weapon and shows weapon" do
      computer_choice = "paper"
      sign_in_and_play
      rock
      continue
      expect(page).to have_content "Takeshi chose paper!"
    end
  end

  feature "Shows the player winning" do
    scenario "player choses rock and computer choses scissors" do
      variable = double(:computer_choice => "scissors")
      sign_in_and_play
      rock
      continue
      expect(page).to have_content "Miriam Bancroft wins"
    end
  end

end
