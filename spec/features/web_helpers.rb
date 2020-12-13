def enter_name
  visit '/'
  fill_in :name, with: "Cathal"
  click_button 'Fight!'
end

def start_battle
  enter_name
  click_button "START BATTLE!"
end

def challenger_moves
  start_battle
  click_button "MAKE A MOVE!"
end

def at_halfway
  challenger_moves
  click_button "BACK TO BATTLE!"
end

def machine_moves
  at_halfway
  click_button "SEE WHAT PSYDUCK ROLLS"
end

def see_results
  machine_moves
  click_button "SEE RESULTS"
end

def play_again
  see_results
  click_button "PLAY AGAIN CATHAL?"
end

def change_player
  see_results
  click_button "CHANGE PLAYER"
end
