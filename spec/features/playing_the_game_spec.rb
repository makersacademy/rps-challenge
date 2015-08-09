require 'spec_helper'

feature 'Starting the game' do
	scenario 'finds the page online' do
		visit '/'
		expect(page).to have_content 'Hello'
	end
end
