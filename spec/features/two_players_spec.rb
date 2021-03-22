feature 'two players: ' do
  scenario 'there are two human players both their names appear on the choice page' do
    two_players_setup
    expect(page).to have_content 'Player 1: Jack'
    expect(page).to have_content 'Player 2: Pam'
  end

  scenario 'both players can choose a move and then it tell us who won' do
    two_players_setup
    select_scissors
    player_2_select_rock
    expect(page).to have_content 'Pam is the WINNER!'
  end
end
