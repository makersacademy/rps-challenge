require 'capybara/dsl'

feature 'as a marketeer I want to be able to register my name to play' do 

	scenario 'register player name' do 
	  visit('/')
	  fill_in('player_1', with: 'Russell')
	  click_button('Submit')
	  expect(page).to have_content('Russell')
	end

end