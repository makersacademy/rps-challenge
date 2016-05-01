require 'spec_helper.rb'

feature 'Back to home after playing: ' do
	scenario 'Shows Home page' do
		full_game
		click_button 'Home'
		expect(page).to have_content ('One player')
		expect(page).to have_content ('Two players')
		expect(page).to have_content ('Standard')
		expect(page).to have_content ('Extended')
		expect(page).to have_button('Submit')
	end
end