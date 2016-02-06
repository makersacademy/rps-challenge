require 'capybara/dsl'
require 'selenium-webdriver'
require 'tilt/erb'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature do 

	scenario do 
	  include Capybara::DSL
	  Capybara.default_driver = :selenium
	  visit('/')
	  fill_in('player_1', with: 'Russell')
	  click_button('Submit')
	  expect(page).to have_content('Russell')
	end

end