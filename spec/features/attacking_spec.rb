feature 'player selects an option' do
	scenario 'when a user selects rock' do
		visit('/')
		fill_in :player_name, with: 'Test'
		click_on('submit')
		choose(option: 'rock')
		click_on('submit')
		expect(page).to have_content('rock')
	end

	scenario 'when a user selects paper' do
		visit('/')
		fill_in :player_name, with: 'Test'
		click_on('submit')
		choose(option: 'paper')
		click_on('submit')
		expect(page).to have_content('paper')
	end

	scenario 'when a user selects scissors' do
		visit('/')
		fill_in :player_name, with: 'Test'
		click_on('submit')
		choose(option: 'scissors')
		click_on('submit')
		expect(page).to have_content('scissors')
	end
end