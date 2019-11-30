def visit_and_enter_name
  visit "/"
  fill_in "player_name", with: "Andrea"
  click_button "Enter your name"
end

def play_a_game
  choose "Rock"
  click_button "OK"
end
