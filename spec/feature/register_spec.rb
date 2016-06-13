require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'registering name' do
	scenario 'register a name' do
	  visit '/'
	  fill_in :name, with: 'Abdulla'
	  click_button 'Submit'
	  expect(page).to have_content 'Abdulla'
	end
	
end