
require 'spec_helper'

feature 'signing up and registering name' do
	scenario 'sign up and see name' do
		sign_in_and_play
		expect(page).to have_content 'Faisal'
	end 

end 
