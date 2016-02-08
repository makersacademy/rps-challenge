feature 'as a player, I would like to see my opponents weapon' do 


	scenario 'select Rock' do 
		sign_in_and_play
	  click_button('Rock') 
	  expect(page).to have_content('The Computer selected Paper')
	end

end