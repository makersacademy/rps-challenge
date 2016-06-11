feature 'Play again' do
	scenario 'once game has ended' do
		single_player_sign_in
		click_button('rock')
		find_button('Play Again!')
	end
end