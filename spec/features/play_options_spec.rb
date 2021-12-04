feature "Play options" do
	scenario "see play options" do
		register_and_play
		expect(page).to have_content('Rock')
		expect(page).to have_content('Paper')
		expect(page).to have_content('Scissors')
	end
end
