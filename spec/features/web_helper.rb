def sign_in_and_play
	visit('/')
	fill_in :name, with: 'Dave'
	select('Rock', from: 'choice')
	click_button 'Submit'
end