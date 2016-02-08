feature 'as a player, I would like to play another player' do 


	scenario 'select Rock' do 
		allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
	  visit('/')
	  click_button('Two Player')
	  fill_in('player_1', with: 'Russell')
	  fill_in('player_2', with: 'Hayley')
	  click_button('Submit')
	  click_button('Rock') 
	  click_button('Paper') 
	  expect(page).to have_content('Hayley wins!')
	end

end