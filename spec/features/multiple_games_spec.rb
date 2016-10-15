require 'spec_helper'

feature 'playing multiple games' do
	context 'playing the computer' do
		scenario 'restarting game after playing' do
			start_game_vs_computer
			3.times do
				choose('rock')
				click_button('Make your choice!')
				click_on('Play again?')
			end
			expect(page).to have_content "Welcome to rock, paper, scissors, lizard, spock Antony!"
		end
	end

	context 'playing a player' do
		scenario 'restarting game after playing' do
			start_game_vs_player
			3.times do
				2.times { make_choice('rock') }
				click_on('Play again?')
			end
			expect(page).to have_content "Welcome to rock, paper, scissors, lizard, spock Antony!"
		end
	end
end