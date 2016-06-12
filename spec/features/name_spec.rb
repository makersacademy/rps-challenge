require 'capybara/dsl'
require 'features/web_helpers'


feature 'Enter name' do
	scenario 'submit name' do
		sign_in_and_play
	end
end

feature 'Player name is recognised' do
	scenario 'Players name is included on /named-player' do
	sign_in_and_play
		expect(page).to have_content 'Cam, would you like to pick rock, paper or scissors?'
	end
end

