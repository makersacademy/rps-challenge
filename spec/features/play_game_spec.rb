feature 'When playing Rock, Paper, Scissors,' do
	scenario 'All 3 options are visible for player 1' do
		sign_in_and_play_1_player
		expect(page).to have_content "Rock"
		expect(page).to have_content "Paper"
		expect(page).to have_content "Scissors"
	end

	scenario 'All 3 options are visible for player 2' do
		sign_in_and_play_2_player
		expect(page).to have_content "Rock"
		expect(page).to have_content "Paper"
		expect(page).to have_content "Scissors"
	end

	scenario 'Player 1 is able to select an option' do
		sign_in_and_play_1_player
		choose 'Rock'
	end
	scenario 'Player 2 is able to select an option' do
		sign_in_and_play_2_player
		within('.first') do
			choose 'Scissors', 'chosen_weapon_2'
		end
		within('.second') do
			choose 'Scissors', 'chosen_weapon_2'
		end
	end

end