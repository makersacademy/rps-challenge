feature Challenge do
  scenario "asks for players name" do
    name_and_submit
    expect(page).to have_content "Welcome Ayodele Alakija!"
  end

  scenario "asks for name of player 1" do
    two_player_option
    expect(page).to have_content "So we have Ayodele Alakija"
  end

  scenario "asks for name of player 2" do
    two_player_option
    expect(page).to have_content "And we have Thomas Miller"
  end
end
