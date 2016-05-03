feature "Show outcome" do
	scenario "Show winner of the game" do
		sign_in_and_play
		click_button "Outcome"
		expect(page).to have_text "wins"
	end
end