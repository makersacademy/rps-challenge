def sign_in_and_play_p2
  visit("/")
  fill_in :player_1, with: "Player1"
  fill_in :player_2, with: "Player2"
  click_button "Let's Play!"
end

def sign_in_and_play_comp
  visit("/")
  fill_in :player_1, with: "Player1"
  click_button "Let's Play!"
end

def select_lizard
  choose("lizard")
  click_button 'NEXT!'
end

def select_spock
  choose("spock")
  click_button 'NEXT!'
end
