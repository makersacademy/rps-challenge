def sign_in
	visit '/'
	fill_in :player_name, with: "Ursie"
	click_button "Submit"
end 