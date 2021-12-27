def register_and_play
  visit('/')
	 fill_in :marketeer_name, with: 'Sam'
	 click_button 'Submit'
end
