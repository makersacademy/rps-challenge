require 'spec_helper.rb'

feature 'Submitting the form with names: ' do
	scenario 'One player standard mode' do
		one_player_standard
		expect(page).to have_content 'Omar vs. Computer'
		expect(page).to have_content ('Omar turn\'s')
		expect(page).to have_button('rock')
		expect(page).to have_button('paper')
		expect(page).to have_button('scissors')
	end

	scenario 'One player extended mode' do
		one_player_extended
		expect(page).to have_content 'Omar vs. Computer'
		expect(page).to have_content ('Omar turn\'s')
		expect(page).to have_button('rock')
		expect(page).to have_button('paper')
		expect(page).to have_button('scissors')
		expect(page).to have_button('lizard')
		expect(page).to have_button('spock')
	end
end
