feature "Multiplayer game" do
  scenario "Start a game with two players" do
    sing_in_two_players_and_play
    expect(page).to have_content "Jose vs Paco"
  end

  scenario "Players draw" do
    sing_in_two_players_and_play
    click_button "Rock"
    click_button "Rock"
    expect(page).to have_content "Draw"
  end

  scenario "Players 1 wins" do
    sing_in_two_players_and_play
    click_button "Rock"
    click_button "Scissors"
    expect(page).to have_content "Jose wins"
  end

  scenario "Players 2 wins" do
    sing_in_two_players_and_play
    click_button "Rock"
    click_button "Paper"
    expect(page).to have_content "Paco wins"
  end
end
