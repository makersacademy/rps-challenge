require 'spec_helper'

feature "New Game" do
  scenario "Expects the new game button to reset the game back to the open page" do
    sign_in_and_play_a_few_games
    click_button "Rock"
    click_button "New Game"
    expect(page).to have_content("Rock, Paper, Scissors!")
  end
end
