feature 'Play game' do
  scenario 'Play game against computer and view winner' do
    one_player_mode
    first_turn_one_player
    expect(page).to have_content 'Player1 won!!  Rock beats Scissors'
  end

  scenario 'Play game against another player and view winner' do
    two_players_mode
    first_turn_two_players
    expect(page).to have_content 'Player2 won!!  Lizard beats Spock'
  end
end
