require './app.rb'

feature 'Homepage' do
	scenario "Welcome screen shown on homepage" do
		visit '/'
		expect(page).to have_button('Single Player')
	end
end