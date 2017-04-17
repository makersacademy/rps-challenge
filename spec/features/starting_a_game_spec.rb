require 'spec_helper'

feature 'Starting a new game' do

	scenario 'begins with seeing greeting' do
		visit '/'
		expect(page).to have_content 'Welcome to Rock, Paper, Scissors!'
	end

	scenario 'begins with asking a user for their name in a form and takes them to a new page' do
		visit '/'
		fill_in('player_name', :with => 'Alex')
		click_button 'New Game'
		expect(page).to have_content "Alex's game:"
	end

	scenario 'after a player inputs their name, a new game is created and a player is asked for their play' do
		visit '/'
		fill_in('player_name', :with => 'Alex')
		click_button 'New Game'
		page.check 'Rock'
		click_button 'Submit'
		expect(page).to have_content 'Rock'
	end

end