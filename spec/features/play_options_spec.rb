feature "Play options" do
	scenario "see play options" do
		register_and_play
		expect(page).to have_button 'Rock'
		expect(page).to have_button 'Paper'
		expect(page).to have_button 'Scissors'
	end

	scenario "choose a play option" do
		register_and_play
		click_button 'Rock'
		expect(page).to have_content 'You chose: Rock'
	end
end
