
def sign_in
	visit('/')
	fill_in :player_name, with: 'Test'
	click_on('submit')
end