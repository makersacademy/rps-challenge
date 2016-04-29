feature 'Enter name(s) via form to start game' do
  scenario 'One player game' do
    one_player_mode
  	expect(page).to have_content 'Player1 vs. Computer'
  end

	scenario 'Two player game' do
    two_players_mode
  	expect(page).to have_content 'Player1 vs. Player2'
  end
end
