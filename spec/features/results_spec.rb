feature 'Results Page' do

  scenario 'the results page has specific text' do
    one_player_game_played
    expect(page).to have_content('Aaaand the winner is')
  end

  scenario 'your choice of weapon is displayed (single player)' do
    one_player_game_played
    expect(page).to have_content('Ed played rock')
  end

  scenario 'RPS-Bot has their choice displayed (single player)' do
    srand(1)
    one_player_game_played
    expect(page).to have_content('RPS-Bot played paper')
  end

  scenario 'Both players have their choices displayed (two player)' do
    two_player_game_played
    expect(page).to have_content('Ed played rock, and Judith played scissors')
  end
end
