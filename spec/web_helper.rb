def sin_in
	visit('/')
    fill_in :player, with: 'Edu'
    click_button 'Submit'
end