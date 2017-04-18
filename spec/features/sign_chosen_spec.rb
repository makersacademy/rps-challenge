feature "Sign chosen" do
	scenario "Player do shows Rock" do
		sign_in_and_play
		expect(page).to have_text("Aday have chosen Rock")
	end
end