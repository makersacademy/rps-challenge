require 'spec_helper'

feature 'making a choice' do

	scenario 'choosing rock' do
		enter_name
		choose('rock')
		click_button('Make your choice!')
		expect(page).to have_content('You chose rock!')
	end

	scenario 'choosing paper' do
		enter_name
		choose('paper')
		click_button('Make your choice!')
		expect(page).to have_content('You chose paper!')
	end

	scenario 'choosing scissors' do
		enter_name
		choose('scissors')
		click_button('Make your choice!')
		expect(page).to have_content('You chose scissors!')
	end
end