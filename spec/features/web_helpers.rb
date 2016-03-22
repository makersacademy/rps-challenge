def sign_in_and_play
	visit('/')
  fill_in :player_name, with: "Sam"
  click_button "Let's PLAY!"
end
