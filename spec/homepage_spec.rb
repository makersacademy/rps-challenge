require "capybara/rspec"
require_relative "../app/app"

Capybara.app = RPS

feature "Enter player names" do
  scenario "submit name and see the name shown on the page" do
    sign_in_and_play
    expect(page).to have_content "Player 1: Miriam Bancroft"
  end
end
