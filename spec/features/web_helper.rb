def enter_name_play
	visit('/')
	fill_in :player_name, with: 'Vytis'
	click_button 'Submit'
end	