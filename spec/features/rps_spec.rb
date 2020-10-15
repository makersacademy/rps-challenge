# coding: utf-8

require "capybara/rspec"
require_relative "../../lib/app"

Capybara.app = RPS

feature "Shows the words RPS" do
  scenario "Load the base page and display 'RPS" do
    visit("/")
    expect(page).to have_content "RPS"
  end
end
