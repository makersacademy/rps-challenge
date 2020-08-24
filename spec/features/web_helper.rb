def sing_n_play
  visit('/')
  fill_in('Player', with: "Gosho")
  click_button "GO"
end

def battle 
  sing_n_play
  choose_n_confirm
end

def multy_sign_n_play
  visit("/")
  click_link "Multiplayer"
  fill_in('Player_1', with: "Player_1")
  fill_in('Player_2', with: "Player_2")
  click_button "Play" 
end

def choose_n_confirm
  click_button "Rock"
  click_link "Confirm Choice"
end
