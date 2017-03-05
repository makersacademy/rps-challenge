require 'spec_helper'

RSpec.feature "confirms you have selected rock" do
  scenario "gives a confirmation message" do
    visit "/"
    fill_in("player_name", with: "Chris")
    click_button("Submit")
    click_button("Begin Game")
    click_button("Paper")
    expect(page).to have_text("You have selected PAPER!")
  end
end
