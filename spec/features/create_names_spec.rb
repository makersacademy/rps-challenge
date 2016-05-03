feature "create player name" do
	scenario "player creates name" do
		sign_in_and_play
		expect(page).to have_content "Aday starts the game"
	end
end
