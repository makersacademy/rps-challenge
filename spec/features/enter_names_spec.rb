feature 'Enter names' do
	scenario 'allows 1 user to enter and view their name' do
		sign_in_and_play_1_player
		expect(page).to have_content "Welcome Player 1: Sam!"
	end	
	scenario 'allows 2 users to enter and view their names' do
		sign_in_and_play_2_player
		expect(page).to have_content "Welcome Player 1: Sam!"
		expect(page).to have_content "Welcome Player 2: Darth Vader!"
	end	

end