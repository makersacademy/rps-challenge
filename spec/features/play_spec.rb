
feature 'play Rock Paper Scissors' do
	scenario 'choose a rock and play' do
		register
		choose "rock"
		click_button "Submit"
		expect(page).to have_content("You won!") || ("You lost.")
	end
	xscenario 'choose paper and play' do
		register
		choose "paper"
		click_button "Submit"
		expect(page).to have_content("You won!") || ("You lost.")
	end
	xscenario 'choose scissor and play' do
		register
		choose "scissor"
		click_button "Submit"
		expect(page).to have_content("You won!") || ("You lost.")
	end
end