feature 'Home Page' do
	scenario 'has a welcome message' do
		visit('/')
		expect(page).to have_content('Welcome to Rock, Paper, Scissors!')
	end
	scenario 'a play button' do
		visit ('/')
		find_button('PLAY!')
	end
end