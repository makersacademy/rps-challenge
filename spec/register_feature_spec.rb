require 'capybara/dsl'

feature do 

	scenario do 
	  visit('/')
	  fill_in('player_1', with: 'Russell')
	  click_button('Submit')
	  expect(page).to have_content('Russell')
	end

end