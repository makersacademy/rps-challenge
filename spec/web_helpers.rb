def sign_in_and_play
  visit '/'
		fill_in :name, with: 'Dave'
		click_button 'Play!'
end