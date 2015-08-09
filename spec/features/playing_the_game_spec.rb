require 'spec_helper'

feature 'Starting the game' do
	scenario 'finds the page online' do
		visit '/'
		expect(page).to have_content 'Hello'
	end

	scenario 'finds link to the game' do
		visit '/'
		expect(page).to have_content 'Wanna play?'
	end

	scenario 'i need to enter my name' do
		visit '/'
		click_link 'Wanna play?'
		expect(page).to have_content 'Please enter your name:'
	end

	scenario 'the game accepting a players name' do
		visit '/name_set'
		dummy_name = 'Joe'
		fill_in "name", with: dummy_name
		click_button 'Submit'
		expect(page).to have_content "Hello #{dummy_name}"
	end
end

feature 'Playing the game' do
	scenario 'i need to choose my weapon of choice' do
		visit '/play'
		expect(page).to have_content "weapon"
	end

	scenario 'the game responds with an answer' do
		visit '/play'
		click_link 'Paper'
		expect(page).to have_content 'answer'
	end
end
