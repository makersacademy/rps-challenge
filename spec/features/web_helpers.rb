def enter_name
	visit('/')
	fill_in :name, with: "Antony"
	click_button 'Submit'
end