require 'spec_helper'

feature 'New game' do
	scenario 'creating a new game' do
		enter_name
		expect(page).to have_content "Welcome to rock paper scissors Antony!"
	end
end 