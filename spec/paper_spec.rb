require "capybara/rspec"
require_relative "../app/app"

Capybara.app = RPS

feature "Choose paper" do
  scenario "choose paper and show player name chose paper" do
    sign_in_and_play
    paper
    expect(page).to have_content "Miriam Bancroft chose paper!"
  end
end
