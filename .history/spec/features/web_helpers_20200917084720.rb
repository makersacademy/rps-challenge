def sign_in 
	visit "/"
	fill_in :player1, with: "Ursie"
	fill_in :player2, with: "Tom"
	click_button "Submit"
end 