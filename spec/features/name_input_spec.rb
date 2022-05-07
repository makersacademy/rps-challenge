require 'capybara/rspec'
require_relative "../../app"

Capybara.app = RockPaperScissors

feature "Enter name on Homepage" do
  scenario "Show successful code when loading homepage" do
    visit("/")
    expect(page.status_code).to eq(200)
  end

  scenario "Show name on /play when entered" do
    visit("/")
    fill_in :player_1_name, with: "Kendrick"
    click_button "Play!"
    expect(page).to have_content "Kendrick"
  end
end

