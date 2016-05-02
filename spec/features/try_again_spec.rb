require 'spec_helper.rb'

feature 'Try again after playing: ' do
	scenario 'Repeat game with same players' do
		full_game
		click_button 'Try again'
		expect(page).to have_content ('Omar vs. Laura')
		expect(page).to have_content ('Omar\'s turn')
		expect(page).to have_button('rock')
		expect(page).to have_button('paper')
		expect(page).to have_button('scissors')
	end
end