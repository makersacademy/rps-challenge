require 'spec_helper'

RSpec.feature "click start game to begin the game" do
  scenario "allows player to begin the game" do
    visit "/"
    fill_in("player_name", with: "Chris")
    click_button("Submit")
    click_button("Begin Game")
    expect(page).to have_text('Welcome To Rock, Paper, Scissors')
  end
end
