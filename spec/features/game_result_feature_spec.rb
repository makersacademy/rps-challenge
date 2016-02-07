feature 'as a player, I would like to see if I won,lost or drew' do 

	scenario 'select Rock' do 
		allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
	  visit('/')
	  fill_in('player_1', with: 'Russell')
	  click_button('Submit')
	  click_button('Rock') 
	  expect(page).to have_content('You lose!')
	end

end