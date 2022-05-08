require 'capybara/rspec'
require_relative "../../lib/app"

Capybara.app = RockPaperScissors

feature "Chooses a winner" do
  scenario "returns 'you win!' to /result when user wins" do
    visit("/")
    fill_in :player_1_name, with: "Kendrick"
    click_button "Play!"
    choose("Rock")
    click_button "Submit"
    expect(page).to have_content("You win!")
  end
end



