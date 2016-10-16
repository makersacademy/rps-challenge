require 'spec_helper'

feature "New Game" do
  scenario "Expects the new game button to reset the game back to the open page" do
    sign_in_and_play_a_few_games
    click_button "ROCK"
    click_button "Reset Scores"
    expect(page).to have_content("Ali vs. The_Computer")
    expect(page).to have_content("Ali score: 0")
    expect(page).to have_content("The_Computer score: 0")
    expect(page).to have_content("Games played: 0")
  end
end
