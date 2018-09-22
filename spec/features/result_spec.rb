require 'spec_helper'
require './app'

feature "Results" do
  scenario "Shows player's 1 option" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "Dumbledore chose rock"
  end

  scenario "Shows winner" do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "And the winner is..."
  end
end
