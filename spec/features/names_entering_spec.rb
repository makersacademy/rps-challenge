feature "name entering and keeping form" do
  scenario "Submit the names and gets greet" do
    sign_in_and_play
    expect(page).to have_content "Hello Aga and Patryk"
  end
  scenario "Shows the name of the winner, player 2 wins" do
    sign_in_and_play
    player_1_rock_player2_paper
    expect(page).to have_content "The winner is: Patryk"
  end
  scenario "Shows the name of the winner, player 1 wins" do
    sign_in_and_play
    player_1_spock_player2_rock
    expect(page).to have_content "The winner is: Aga"
  end
  scenario "New names to for the new game" do
    sign_in_and_play
    player_1_lizard_player2_lizard
    click_button "Change players"
    fill_in :player_1_name, with: "Bonnie"
    fill_in :player_2_name, with: "Clyde"
    click_button "Submit"
    expect(page).to have_content "Hello Bonnie and Clyde"
  end
end
