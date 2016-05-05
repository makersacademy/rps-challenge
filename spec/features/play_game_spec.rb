feature "Play game" do
  scenario "Play game against computer and view winner" do
    one_player_mode
    first_turn_one_player
    expect(page).to have_content "Player1 won!!  Rock beats Scissors"
  end

  scenario "Play game against another player and view winner" do
    two_players_mode
    first_turn_two_players
    expect(page).to have_content "Player2 won!!  Lizard beats Spock"
  end

  scenario "Play game against another player and view winner" do
    two_players_mode
    choose('spock1')
    choose('spock2')
    click_button('Reveal winner')
    expect(page).to have_content "Draw!"
  end
end
