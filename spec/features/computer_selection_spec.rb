require 'spec_helper'
require_relative 'web_helper'

feature "computer makes a selection" do
  scenario "the computer makes a selection" do
    srand(1234)
    visit "/"
    fill_in :player_name, with:  "Dan"
    click_button("Let's Do This!")
    select('Rock', :from => 'take_your_pick')
    click_button("Submit")
    expect(page).to have_text("AIbot chose Scissors")
  end
end
