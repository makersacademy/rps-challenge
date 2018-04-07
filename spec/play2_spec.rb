require "capybara/rspec"
require_relative "../app/app"

Capybara.app = RPS

describe RPS do

  feature "Computer selects specific weapon" do
    scenario "computer selects scissors and shows weapon" do
      sign_in_and_play
      rock
      continue
      expect(page).to have_content "Takeshi chose scissors!"
    end
  end

  feature "Computer selects random weapon" do
    scenario "computer selects random weapon and shows weapon" do

      sign_in_and_play
      rock
      continue
      expect(page).to have_content "Takeshi chose paper!"
    end
  end

end
