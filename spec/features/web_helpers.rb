def one_player_mode
	visit('/')
	choose('one')
	click_button 'Next'
	fill_in :player_1_name, with: 'Player1'
	click_button 'Start'
end

def two_players_mode
	visit('/')
	choose('two')
	click_button 'Next'
	fill_in :player_1_name, with: 'Player1'
	fill_in :player_2_name, with: 'Player2'
  	click_button 'Start'
end
