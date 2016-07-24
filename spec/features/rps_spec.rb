require_relative '../spec_helper'
require_relative "web_helpers"

feature "Enter name" do
  scenario "Player enters his name" do
    log_in
    expect(page).to have_content "Welcome to the game, Sal!"
  end

end

feature "Start new game" do
  scenario "player can start a new game" do
    log_in
    expect(page).to have_button "New Game"
  end
end

feature "Choose attack" do
  scenario "choose from multiple attacks" do
    log_in_and_new_game
    expect(page).to have_content "Choose an attack:"
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end
end
