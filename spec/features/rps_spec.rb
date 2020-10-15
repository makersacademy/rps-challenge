# coding: utf-8

require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = RPS

feature "Allows the user to enter their name and see it displayed" do
  scenario "User enters 'Dan' and sees it on the next page" do
    visit("/")
    fill_in :name, with: "Dan"
    click_button "Submit"
    expect(page).to have_content("Dan")
  end
end

feature "Rock, paper and scissors buttons" do
  before :each do
    visit("/")
    fill_in :name, with: "Dan"
    click_button "Submit"
  end
  scenario "After entering their name, the player should see rock, paper and scissors buttons" do
    expect(page).to have_selector(:link_or_button, "Rock")
    expect(page).to have_selector(:link_or_button, "Paper")
    expect(page).to have_selector(:link_or_button, "Scissors")
  end

  scenario "The player can select one of the buttons and see their choice displayed" do
    click_link "Rock"
    expect(page).to have_content("You chose rock.")
  end
end
