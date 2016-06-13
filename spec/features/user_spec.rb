require 'capybara/dsl'
require 'features/web_helpers'

feature 'User choice of move' do
	scenario 'User can choose paper' do
		sign_in
		click_button 'Paper'
		expect(page).not_to have_content 'You chose scissors!'
		expect(page).not_to have_content 'You chose rock!'
		expect(page).to have_content 'You chose paper!'
	end
	scenario 'User can choose rock' do
		sign_in
		click_button 'Rock'
		expect(page).not_to have_content 'You chose scissors!'
		expect(page).not_to have_content 'You chose paper!'
		expect(page).to have_content 'You chose rock!'
	end
	scenario 'User can choose scissors' do
		sign_in
		click_button 'Scissors'
		expect(page).not_to have_content 'You chose paper!'
		expect(page).not_to have_content 'You chose rock!'
		expect(page).to have_content 'You chose scissors!'
	end
end