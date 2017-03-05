require 'spec_helper'

RSpec.feature "initialising battle game with 2 players" do
  scenario "allows player to enter their name and see it" do
    set_up
    expect(page).to have_text("Alice")
  end
end

RSpec.feature "player can select an option" do
  scenario "shows a confirmation when player selects an option" do
    set_up
    click_button("Rock")
    expect(page).to have_text("Alice chose rock!")
  end
end
