def sign_up
	visit('/')
	fill_in :player, with: 'Hodor'
	click_button 'Play!'
end
