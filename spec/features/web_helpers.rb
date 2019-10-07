def sign_in
  visit('/')
  fill_in :player_name, with: "Jazz"
  click_button "Play!"
end

def sign_in_and_play
  visit('/')
  fill_in :player_name, with: "Jazz"
  click_button "Play!"
  click_button "Rock"
end

def computers_move
  Computer.new.play
  srand(3)
end

def play_rock
  click_button "Rock"
end
