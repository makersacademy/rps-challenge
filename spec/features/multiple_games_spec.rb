require 'spec_helper'

feature 'playing multiple games' do
	scenario 'restarting game after playing' do
		enter_name
		3.times do
			choose('rock')
			click_button('Make your choice!')
			click_on('Play again?')
		end
		expect(page).to have_content "Welcome to rock, paper, scissors, lizard, spock Antony!"
	end
end