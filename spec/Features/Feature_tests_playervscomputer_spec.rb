require "capybara/rspec"
require_relative "../../lib/app"
require_relative "../../lib/Game"

Capybara.app = Selection

feature "Players names appear" do
  scenario "Player 1 and 2 enter names" do
    visit("/playervscomp")
    fill_in :Player1_name, with: "Tom"
    fill_in :Player2_name, with: "Ben"
    click_button "Submit"
    expect(page).to have_content "Welcome Tom and Ben"
  end
end
