feature 'Player name entry' do

	scenario 'player enters name, name is displayed' do
		visit('/')
		fill_in :player_name, with: "Feynman"
		click_button "Submit"
		expect(page).to have_text("Feynman")
	end

end