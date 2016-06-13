def sign_in_and_play
	visit '/'
	fill_in :name, with: 'Faisal'
	click_button 'Register'
end 