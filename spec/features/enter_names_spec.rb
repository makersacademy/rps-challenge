require 'capybara/dsl'
require 'features/web_helpers'

feature 'Enter a name' do
  scenario 'submit a name' do
  	sign_in
  end
end

feature 'Player name is acknowledged' do
	scenario 'player name is inlcluded in welcome' do
		sign_in
		expect(page).to have_content "Welcome Tom! Would you like to play rock, paper or scissors?"
	end
end