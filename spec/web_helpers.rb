def sign_in_and_play
	allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
	visit('/')
	click_button('One Player')
	fill_in('player_1', with: 'Russell')
	click_button('Submit')
end
