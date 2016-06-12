require 'capybara/dsl'
require 'features/web_helpers'

feature 'User choice' do
	scenario 'User is able to choose rock' do
		sign_in_and_play
		click_button 'Rock'
		expect(page).not_to have_content 'You chose paper!'
		expect(page).not_to have_content 'You chose scissors!'
		expect(page).to have_content 'You chose rock!'
	end
	scenario 'User is able to choose paper' do
		sign_in_and_play
		click_button 'Paper'
		expect(page).not_to have_content 'You chose rock!'
		expect(page).not_to have_content 'You chose scissors!'
		expect(page).to have_content 'You chose paper!'
	end
	scenario 'User is able to choose scissors' do
		sign_in_and_play
		click_button 'Scissors'
		expect(page).not_to have_content 'You chose rock!'
		expect(page).not_to have_content 'You chose paper!'
		expect(page).to have_content 'You chose scissors!'
	end
	
end