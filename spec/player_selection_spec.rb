require 'capybara/dsl'

feature 'as a player, i would like to select a tool to play with' do 

	scenario 'selecting rock' do 
	  visit('/')
	  fill_in('player_1', with: 'Russell')
	  click_button('Submit')
	  click_button('rock')
	  expect(page).to have_content('You have choosen rock')
	end

end