feature 'Start game score 0-0' do
  scenario 'One player game' do
    one_player_mode
  	expect(page).to have_content 'Score 0-0'
  end

  scenario 'Two player game' do
    two_players_mode
  	expect(page).to have_content 'Score 0-0'
  end
end

feature 'View score after each turn' do
  scenario 'One player game' do
    one_player_mode
    first_turn_one_player
    click_link('Play again')
  	expect(page).to have_content 'Score 1-0'
  end

  scenario 'Two player game' do
    two_players_mode
    first_turn_two_players
    click_link('Play again')
  	expect(page).to have_content 'Score 0-1'
  end
end
