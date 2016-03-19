def sign_in_and_play
	visit('/')
	fill_in('player_1', with: 'BettyBoo')
	click_button 'Lets Play!'
end