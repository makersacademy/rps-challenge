feature 'Choose Weapon' do
	scenario 'Player can choose Rock' do
		single_player_sign_in
		find_button('rock')
	end
	scenario 'Player can choose Paper' do
		single_player_sign_in
		find_button('paper')
	end
	scenario 'Player can choose Scissors' do
		single_player_sign_in
		find_button('scissors')
	end
end