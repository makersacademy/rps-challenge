
feature 'play Rock Paper Scissors' do
	scenario 'choose a rock and play' do
		find_button("Rock").click
		expect(page).to have_content("You won!") || ("You lost.")
	end
	scenario 'choose paper and play' do
		find_button("Rock").click
		expect(page).to have_content("You won!") || ("You lost.")
	end
	scenario 'choose scissor and play' do
		find_button("Rock").click
		expect(page).to have_content("You won!") || ("You lost.")
	end
end