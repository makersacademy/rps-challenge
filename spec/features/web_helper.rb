def single_player_sign_in
	visit('/')
	click_link('PLAY!')
	fill_in('player1_name', with: 'Riya')
	click_button('Submit')
end