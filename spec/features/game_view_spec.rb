require 'spec_helper'

feature "Game View Page" do
  scenario "Expects the player to fill in their name and appear on the game screen" do
    sign_in_and_play
    expect(page).to have_content("Ali vs. The_Computer")
    expect(page).to have_content("Ali score: 0")
    expect(page).to have_content("The_Computer score: 0")
    expect(page).to have_content("Games played: 0")
  end
end
