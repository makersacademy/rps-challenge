require "capybara/rspec"
require_relative "../../lib/app.rb"

Capybara.app = App

feature "on signing in to the game of RPS" do
  scenario "homepage has an option to submit a name" do
    visit("/signin")
    expect(page).to have_field("playername")
  end

end
