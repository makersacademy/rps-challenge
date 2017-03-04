require 'spec_helper'

RSpec.feature "can make a move" do
  scenario "allows player to pick rock" do
    visit "/"
    fill_in("player_name", with: "Chris")
    click_button("Submit")
    click_button("Begin Game")
    expect(page).to have_button("Rock")
  end
end
