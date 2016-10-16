require 'spec_helper'

feature 'New game' do
	scenario 'creating a new game vs computer' do
		start_game_vs_computer
		expect(page).to have_content "Welcome to rock, paper, scissors, lizard, spock Antony!"
	end

	scenario 'creating a new game vs player' do
		start_game_vs_computer
		expect(page).to have_content "Welcome to rock, paper, scissors, lizard, spock Antony!"
	end

end 