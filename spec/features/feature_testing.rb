feature 'Enter names' do
	scenario 'Sign in and insert name of player' do
		sign_in_and_play
		expect(page).to have_content('Fabio vs Kakashi')
	end
end