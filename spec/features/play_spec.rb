
feature 'play Rock Paper Scissors' do
	scenario 'choose a rock and play' do
		register
		choose "weapon", :option => "rock"
		click_button "Submit"
		expect(page).to have_content("You won!") || ("You lost.")
	end
	scenario 'choose paper and play' do
		register
		choose "weapon", :option => "paper"
		click_button "Submit"
		expect(page).to have_content("You won!") || ("You lost.")
	end
	scenario 'choose scissor and play' do
		register
		choose "weapon", :option => "scissors"
		click_button "Submit"
		expect(page).to have_content("You won!") || ("You lost.")
	end
end