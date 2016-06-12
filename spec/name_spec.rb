require 'capybara/dsl'
require './views/named_player'

feature 'Enter name' do
	scenario 'submit name' do
		visit('/')
		fill_in :player_name, with: 'Cam'
		click_button 'Submit'
end
end