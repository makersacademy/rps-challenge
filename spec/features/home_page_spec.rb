feature 'Home Page' do
	scenario 'has a welcome message' do
		visit('/')
		expect(page).to have_content('Welcome to Rock, Paper, Scissors!')
	end
	scenario 'has Single Player button' do
		visit ('/')
		find_button('Single Player')
	end
	scenario 'has Multi Player button' do
		visit ('/')
		find_button('Multi Player')
	end
end