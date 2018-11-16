feature 'player selects an option' do
	scenario 'when a user selects rock' do
		sign_in
		choose(option: 'rock')
		click_on('submit')
		expect(page).to have_content('rock')
	end

	scenario 'when a user selects paper' do
		sign_in
		choose(option: 'paper')
		click_on('submit')
		expect(page).to have_content('paper')
	end

	scenario 'when a user selects scissors' do
		sign_in
		choose(option: 'scissors')
		click_on('submit')
		expect(page).to have_content('scissors')
	end
end