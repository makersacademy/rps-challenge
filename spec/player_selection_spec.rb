require 'capybara/dsl'

feature 'as a player, i would like to select a tool to play with' do 

	scenario 'select Rock' do 
	  visit('/')
	  fill_in('player_1', with: 'Russell')
	  click_button('Submit')
	  click_button('Rock')
	  expect(page).to have_content('You have choosen Rock')
	end

	scenario 'select Scissors' do 
	  visit('/')
	  fill_in('player_1', with: 'Russell')
	  click_button('Submit')
	  click_button('Scissors')
	  expect(page).to have_content('You have choosen Scissors')
	end

scenario 'select Paper' do 
	  visit('/')
	  fill_in('player_1', with: 'Russell')
	  click_button('Submit')
	  click_button('Paper')
	  expect(page).to have_content('You have choosen Paper')
	end


end