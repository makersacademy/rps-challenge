feature 'shows winner for 2 player game' do

	scenario 'player 1 wins' do
		sign_in_and_play_2_player
		fill_in :p1_weapon, with: 'rock'
		click_button 'Submit'
		fill_in :p2_weapon, with: 'scissors'
		click_button 'Submit'
		expect(page).to have_content 'Ben wins!'
	end

	scenario 'player 1 loses' do
		sign_in_and_play_2_player
		fill_in :p1_weapon, with: 'paper'
		click_button 'Submit'
		fill_in :p2_weapon, with: 'scissors'
		click_button 'Submit'
		expect(page).to have_content 'Bethan wins!'
	end

	scenario 'its a draw' do
		sign_in_and_play_2_player
		fill_in :p1_weapon, with: 'paper'
		click_button 'Submit'
		fill_in :p2_weapon, with: 'paper'
		click_button 'Submit'
		expect(page).to have_content 'It\'s a draw'
	end

end

feature 'shows winner for single player game' do

	scenario 'player wins' do
		allow_any_instance_of(Computer).to receive(:weapon_rand).and_return(:scissors)
		sign_in_and_play_1_player
		fill_in :p1_weapon, with: 'rock'
		click_button 'Submit'
		expect(page).to have_content 'Ben wins!'
	end


end