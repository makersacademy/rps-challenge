require 'spec_helper'
require_relative 'web_helper'

feature "computer makes a selection" do
  scenario "the computer makes a selection" do
    srand(1234)
    visit "/"
    fill_in :player_name, with:  "Dan"
    click_button("Let's Do This!")
    click_button("Rock")
    expect(page).to have_text("AIbot chose Scissors")
  end
end
