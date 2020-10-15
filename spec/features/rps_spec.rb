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
