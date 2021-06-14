feature 'Enter names' do
	scenario 'Sign in and insert name of player' do
		sign_in_and_play
		expect(page).to have_content('Fabio vs Kakashi!')
	end
end

feature 'Choose RPS' do
	scenario 'Player chooses rock ' do
		sign_in_and_play
		click_button('rock')
		expect(page).to have_content('you chose rock')
	end
end