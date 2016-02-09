require 'spec_helper'

feature "Players can play multiplayer games" do
  scenario "Players click multiplayer button" do
    two_player_log_in_page
    expect(page).to have_text("Please enter your name player 1")
    expect(page).to have_text("Please enter your name player 2")
  end

  scenario "Players enter their names names and are each welcomed" do
    two_player_sign_in
    expect(page).to have_text("Welcome to the game Zeshan!")
    click_button "Rock"
    expect(page).to have_text("Welcome to the game Batman!")
  end

  scenario "Players can win the game" do
    two_player_sign_in
    click_button "Rock"
    click_button "Scissors"
    expect(page).to have_text("Zeshan wins!")
  end

end
