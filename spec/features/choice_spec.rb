require 'spec_helper'

feature 'making a choice' do

	context 'when playing the computer' do

		before do
			start_game_vs_computer
		end

		scenario 'choosing rock' do
			make_choice('rock')
			expect(page).to have_content('Antony chose rock!')
		end

		scenario 'choosing paper' do
			make_choice('paper')
			expect(page).to have_content('Antony chose paper!')
		end

		scenario 'choosing scissors' do
			make_choice('scissors')
			expect(page).to have_content('Antony chose scissors!')
		end

		scenario 'choosing lizard' do
			make_choice('lizard')
			expect(page).to have_content('Antony chose lizard!')
		end

		scenario 'choosing spock' do
			make_choice('spock')
			expect(page).to have_content('Antony chose spock!')
		end
	end

	context 'when playing a player' do

		before do
			start_game_vs_player
		end

		scenario 'both players choose rock' do
			2.times { make_choice('rock') }
			expect(page).to have_content('Antony chose rock!')
			expect(page).to have_content('Player 2 chose rock!')
			expect(page).to have_content("it's a draw.")
		end

		scenario 'both players choose paper' do
	 		2.times { make_choice('paper') }
			expect(page).to have_content('Antony chose paper!')
			expect(page).to have_content('Player 2 chose paper!')
			expect(page).to have_content("it's a draw.")
		end

		scenario 'both players choose scissors' do
	 		2.times { make_choice('scissors') }
			expect(page).to have_content('Antony chose scissors!')
			expect(page).to have_content('Player 2 chose scissors!')
			expect(page).to have_content("it's a draw.")
		end

		scenario 'both players choose lizard' do
	 		2.times { make_choice('lizard') }
			expect(page).to have_content('Antony chose lizard!')
			expect(page).to have_content('Player 2 chose lizard!')
			expect(page).to have_content("it's a draw.")
		end

		scenario 'both players choose spock' do
	 		2.times { make_choice('spock') }
			expect(page).to have_content('Antony chose spock!')
			expect(page).to have_content('Player 2 chose spock!')
			expect(page).to have_content("it's a draw.")
		end
	end
end