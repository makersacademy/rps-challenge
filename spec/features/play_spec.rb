
feature 'play Rock Paper Scissors' do
	xscenario 'choose a rock and play' do
		register
		p Game.game.player_2.name
		find_button("Rock").click
		expect(page).to have_content("You won!") || ("You lost.")
	end
	xscenario 'choose paper and play' do
		register
		find_button("Rock").click
		expect(page).to have_content("You won!") || ("You lost.")
	end
	xscenario 'choose scissor and play' do
		register
		find_button("Rock").click
		expect(page).to have_content("You won!") || ("You lost.")
	end
end