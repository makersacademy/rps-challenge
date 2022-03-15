def pass_and_play
  visit("/")
  click_button "Pass and Play (2 player mode)"
end

def pass_and_play_submit_names
  visit("/")
  click_button "Pass and Play (2 player mode)"
  fill_in :player_1_name, with: "Chris"
  fill_in :player_2_name, with: "Coding"
  click_button 'Submit'
end

def solo_game
  visit("/")
  click_button "Solo Game"
end

def solo_submit_name
  visit("/")
  click_button "Solo Game"
  fill_in :player_1_name, with: "Chris"
  click_button 'Submit'
end

def solo_submit_name_select_rock
  visit("/")
  click_button "Solo Game"
  fill_in :player_1_name, with: "Chris"
  click_button 'Submit'
  click_button "Rock"
end
