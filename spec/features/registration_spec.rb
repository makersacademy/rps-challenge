feature 'Custom player name' do
	scenario 'Player should be able to input their own name' do
		visit('/')
		fill_in :player_name, with: 'Test'
		click_on('submit')
		expect(page).to have_content('Test')
	end
end