require 'spec_helper.rb'

feature 'Playing: ' do
	context 'Two players standard mode' do
		scenario 'Tie' do
			two_players_standard
			expect(page).to have_content ('Omar\'s turn')
			click_button 'rock'
			expect(page).to have_content ('Laura\'s turn')
			click_button 'rock'
			expect(page).to have_content ('Omar: Rock vs. Laura: Rock')
			expect(page).to have_content ('Tie')
		end

		scenario 'Player one wins' do
			two_players_standard
			expect(page).to have_content ('Omar\'s turn')
			click_button 'rock'
			expect(page).to have_content ('Laura\'s turn')
			click_button 'scissors'
			expect(page).to have_content ('Omar: Rock vs. Laura: Scissors')
			expect(page).to have_content ('The winner is Omar')
		end

		scenario 'Player two wins' do
			two_players_standard
			expect(page).to have_content ('Omar\'s turn')
			click_button 'paper'
			expect(page).to have_content ('Laura\'s turn')
			click_button 'scissors'
			expect(page).to have_content ('Omar: Paper vs. Laura: Scissors')
			expect(page).to have_content ('The winner is Laura')
		end
	end

	context 'Two players extended mode' do
		scenario 'Tie' do
			two_players_extended
			expect(page).to have_content ('Omar\'s turn')
			click_button 'spock'
			expect(page).to have_content ('Laura\'s turn')
			click_button 'spock'
			expect(page).to have_content ('Omar: Spock vs. Laura: Spock')
			expect(page).to have_content ('Tie')
		end

		scenario 'Player one wins' do
			two_players_extended
			expect(page).to have_content ('Omar\'s turn')
			click_button 'lizard'
			expect(page).to have_content ('Laura\'s turn')
			click_button 'paper'
			expect(page).to have_content ('Omar: Lizard vs. Laura: Paper')
			expect(page).to have_content ('The winner is Omar')
		end

		scenario 'Player two wins' do
			two_players_extended
			expect(page).to have_content ('Omar\'s turn')
			click_button 'spock'
			expect(page).to have_content ('Laura\'s turn')
			click_button 'paper'
			expect(page).to have_content ('Omar: Spock vs. Laura: Paper')
			expect(page).to have_content ('The winner is Laura')
		end
	end
end
