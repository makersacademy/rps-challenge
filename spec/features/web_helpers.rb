def sign_in_and_play
  visit '/details'
  fill_in :name, with: "player1"
  click_button "Start"
end

def sign_in_two_players
	visit '/multiplayer_details'
	fill_in :player1, with: "player1"
	fill_in :player2, with: "player2"
	click_button "Start"
end