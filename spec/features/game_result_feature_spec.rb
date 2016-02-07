feature 'as a player, I would like to see if I won,lost or drew' do 

	scenario 'select Rock' do 
		sign_in_and_play
		click_button('Rock')
	  expect(page).to have_content('Player 2 wins !')
	end

end