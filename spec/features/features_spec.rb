require "spec_helper"
require_relative './web_helper'

feature "/index", type: :feature do
  before do
    visit "/"
  end

  scenario "Enter your name" do
    expect(page).to have_text("Enter your name")
  end

  scenario "submitting names" do
    fill_in :name, with: "Puyan"
    click_button "Submit"
    expect(page).to have_content "Puyan"
  end
end

feature "/choose" do
  before do
    visit "/"
    sign_in_and_play
  end

  scenario "there are buttons" do
    expect(page).to have_button "Rock"
  end
end

  # scenario "clicking button" do
  #   visit "/choose"
  #   click_button "rock"
  #   # expect(page).to go to another page
  # end
