def enter_name
  visit ("/")
    fill_in :player_name, with: "Joe"
    click_button "Register name"
end

def start_game
  enter_name
  click_button "Play!"
end

def pick_rock
  start_game
  click_button "Rock"
end