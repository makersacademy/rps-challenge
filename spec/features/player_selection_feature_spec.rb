require 'capybara/dsl'

feature 'as a player, I would like to select a weapon to play with' do 

	scenario 'select Rock' do 
	  sign_in_and_play
	  click_button('Rock')
	  expect(page).to have_content('Russell selected  Rock')
	end

	scenario 'select Scissors' do 
	  sign_in_and_play
	  click_button('Scissors')
	  expect(page).to have_content('Russell selected Scissors')
	end

	scenario 'select Paper' do 
	  sign_in_and_play
	  click_button('Paper')
	  expect(page).to have_content('Russell selected Paper')
	end


end