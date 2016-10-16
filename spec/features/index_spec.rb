require 'spec_helper'

feature "index page" do
  scenario "front page" do
    visit "/"
    expect(page).to have_text("Rock, Paper, Scissors")

  end

  scenario "entering name" do
    visit"/"
    fill_in :player_name, with: "Elizabeth"
    click_button("Submit")
    expect(page).to have_text("Welcome Elizabeth")
  end
end
