require "capybara/rspec"
require_relative "../../app"

Capybara.app = RpsApp

feature "serve web app" do
  scenario "should serve home page" do
    visit("/")
    expect(page).to have_content("Player, enter your name below:")
    expect(page).to have_button("Submit")
  end
end
