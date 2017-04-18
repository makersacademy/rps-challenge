def sign_in_and_play
	visit("/")
	fill_in :player_name, with: "Aday"
	fill_in :sign, with: "Rock"
	click_button "Submit"
end
