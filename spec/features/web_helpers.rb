def sign_in_and_player_number
  visit ("/")
  select "2", :from => "noofplayers"
  click_button "submit"
end

def accept_player_names
  fill_in :player1, with: "John"
  fill_in :player2, with: "Jane"
  click_button "submit"
end

def player_moves_rockrock
  select "rock", :from => "move1"
  select "rock", :from => "move2"
  click_button "submit"
end

def player_moves_rockpaper
  select "rock", :from => "move1"
  select "paper", :from => "move2"
  click_button "submit"
end
