require 'capybara/rspec'
require_relative "../../lib/app"

Capybara.app = RockPaperScissors

feature "User clicks and submits a choice" do
  scenario "Has the options for the user to choose" do
    visit("/")
    fill_in :player_1_name, with: "Kendrick"
    click_button "Play!"
    expect(page).to have_content("Rock")
    expect(page).to have_content("Paper")
    expect(page).to have_content("Scissors")
  end

  scenario "User chooses and clicks submit button" do
    visit("/")
    fill_in :player_1_name, with: "Kendrick"
    click_button "Play!"
    choose("Rock")
    click_button "Submit"
    expect(page.status_code).to eq(200)
  end
end