require "capybara/rspec"
require_relative "../../app/rps"

Capybara.app = RPS

feature "ask for the players name" do
  scenario "submit players name and see it in lights"do
    visit("/")
    fill_in :player1, with: "Meryl"

    click_button "Submit"
    expect(page).to have_content "Welcome Meryl!"
  end
end