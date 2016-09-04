def submit_name
  visit('/')
  click_button "Single-player"
  fill_in :name, with: "Rosie"
  click_button "Play!"
end

def player_choose_rock
  fill_in :weapon, with: "rock"
  click_button "Submit"
end

def submit_names
  visit('/')
  click_button "Multi-player"
  fill_in :player_1, with: "Rosie"
  fill_in :player_2, with: "Monster"
  click_button "Play!"
end

def players_choose
  fill_in :weapon_1, with: "rock"
  fill_in :weapon_2, with: "scissors"
  click_button "Submit"
end
