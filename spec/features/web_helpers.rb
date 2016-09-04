def sign_in_and_play_one_player
  visit '/'
  click_button("I wanna play you mate")
  fill_in(:player, with: "Summer")
  click_button "Bring it on!"
end

def player_chooses_rock
  choose("rps1")
  click_button("Submit")
end

def player_chooses_paper
  choose("rps2")
  click_button("Submit")
end

def player_chooses_scissors
  choose("rps3")
  click_button("Submit")
end
