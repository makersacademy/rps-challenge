require 'spec_helper'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'signing up and registering name' do
	scenario 'sign up and see name' do

		visit '/'
		fill_in :name, with: 'Faisal'
		click_button 'Register'
		expect(page).to have_content 'Faisal'
	end 

end 
