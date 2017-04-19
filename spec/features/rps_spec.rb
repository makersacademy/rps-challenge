require_relative '../spec_helper'
require_relative "web_helpers"

feature "New Game" do
  scenario "Player enters his name" do
    log_in
    expect(page).to have_content "Welcome to the game, Sal!"
  end

  scenario "Player can start a new game" do
    log_in
    expect(page).to have_button "New Game"
  end
end

feature "Choose attack" do
  scenario "Player can choose from multiple attacks" do
    log_in_and_new_game
    expect(page).to have_content "Choose an attack:"
    expect(page).to have_button "Rock"
    expect(page).to have_button "Paper"
    expect(page).to have_button "Scissors"
  end

  scenario "Player can attack and get a confirmation" do
    log_in_and_new_game
    click_button "Paper"
    expect(page).to have_content "You chose Paper"
    expect(page).to have_content "Hal chose "
  end
end

feature "Calculate result" do
  scenario "Calculate result and declare winner" do
    allow_any_instance_of(Array).to receive(:sample).and_return('Rock')
    log_in_and_new_game
    click_button "Paper"
    expect(page).to have_content "Sal wins: Paper beats Rock"
  end
end
