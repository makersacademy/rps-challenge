def start_single_player
  visit '/'
  click_button 'Single Player'
end

def start_multiplayer
  visit '/'
  click_button 'Multiplayer'
end

def enter_name
  start_single_player
  fill_in(:name_one, with: "Dog")
  click_button "Submit"
end

def play_rock
  enter_name
  click_button "Rock"
end
