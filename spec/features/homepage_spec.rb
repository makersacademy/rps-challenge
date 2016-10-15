require './app.rb'

feature 'Homepage' do
	scenario "Welcome screen shown on homepage" do
		visit '/'
		expect(page).to have_content("Welcome to Rock, Papers Scissors!")
	end
end