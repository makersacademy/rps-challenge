feature 'End Game' do
	scenario 'allows user to end the game' do
		single_player_sign_in
		click_button('rock')
		find_button('End Game')
	end
end