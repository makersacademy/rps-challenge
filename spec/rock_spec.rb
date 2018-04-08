require "capybara/rspec"
require_relative "../app/app"

Capybara.app = RPS

feature "Choose rock" do
  scenario "choose rock and show player name chose rock" do
    sign_in_and_play
    rock
    expect(page).to have_content "Miriam Bancroft chose rock!"
  end
end
