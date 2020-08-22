feature 'Player name entry' do

	scenario 'player enters name, name is displayed' do
		fill_in :player_name, with: "Feynman"
		expect(page).to have_text("Feynman")
		click_button "Submit"
	end

end