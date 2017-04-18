feature "Create player name" do
	scenario "Player creates name" do
		sign_in_and_play
		expect(page).to have_content "Aday"
	end
end
