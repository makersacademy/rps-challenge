require "capybara/rspec"
require_relative "../app/app"

Capybara.app = RPS

feature "Choose scissors" do
  scenario "choose scissors and show player name chose scissors" do
    sign_in_and_play
    scissors
    expect(page).to have_content "Miriam Bancroft chose scissors!"
  end
end
