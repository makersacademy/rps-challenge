require 'spec_helper'

feature "Play View Page" do
  scenario "Keep the players details and scores on the screen" do
    sign_in_and_play
    expect(page).to have_content("Ali vs. The_Computer")
    expect(page).to have_content("Ali score: 0")
    expect(page).to have_content("The_Computer score: 0")
    expect(page).to have_content("Games played: 0")
  end
end
