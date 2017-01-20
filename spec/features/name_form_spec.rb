require 'spec_helper'

feature "Enter a player name" do
  scenario "Adds Player name" do
    visit '/'
    fill_in :player_name, :with => "Tamar"
    click_button "Submit"

    expect(page).to have_content("Welcome, Tamar!")
  end
end
