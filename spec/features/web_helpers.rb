def sign_in_and_play
  visit '/details'
  fill_in :name, with: "foobar"
  click_button "Start"
end

def sign_in_two_players
	visit '/multiplayer_details'
	fill_in :player1, with: "foobar"
	fill_in :player2, with: "barfoo"
	click_button "Start"
end