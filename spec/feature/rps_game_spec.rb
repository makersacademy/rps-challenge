require 'spec_helper'

feature 'Play RPS' do
	scenario 'the page asks the player to chose an option' do
		sign_in_and_play
		expect(page).to have_content("Please select rock, paper or scissors:")
	end

	scenario 'it displays the result after player choses an option' do
		sign_in_and_play
		click_button('scissors')
		expect(page).to have_content("You chose: scissors.")
	end

	scenario 'it remembers the name of the player if they would like to play again.' do
		sign_in_and_play
		click_button('rock')
		click_button('Play again?')
		expect(page).to have_content("Hello, player_1.")
	end
end
