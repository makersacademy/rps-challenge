def sign_in_and_play_1_player
	visit '/'
	click_button "1 Player"
	fill_in "player_1", with: "Sam"
	click_button "Submit"
end
def sign_in_and_play_2_player
	visit '/'
	click_button "2 Player"
	fill_in "player_1", with: "Sam"
	fill_in "player_2", with: "Darth Vader"
	click_button "Submit"
end