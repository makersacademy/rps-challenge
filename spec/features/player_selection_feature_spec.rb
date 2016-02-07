require 'capybara/dsl'

feature 'as a player, I would like to select a weapon to play with' do 

	scenario 'select Rock' do 
	  visit('/')
	  click_button('One Player')
	  fill_in('player_1', with: 'Russell')
	  click_button('Submit')
	  click_button('Rock')
	  expect(page).to have_content('Russell selected  Rock')
	end

	scenario 'select Scissors' do 
	  visit('/')
	  click_button('One Player')
	  fill_in('player_1', with: 'Russell')
	  click_button('Submit')
	  click_button('Scissors')
	  expect(page).to have_content('Russell selected Scissors')
	end

	scenario 'select Paper' do 
	  visit('/')
	 	click_button('One Player')
	  fill_in('player_1', with: 'Russell')
	  click_button('Submit')
	  click_button('Paper')
	  expect(page).to have_content('Russell selected Paper')
	end


end