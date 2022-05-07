def pass_and_play
  visit("/")
  click_button "Pass and Play (2 player mode)"
end

def pass_and_play_submit_names(name1, name2)
  visit("/")
  click_button "Pass and Play (2 player mode)"
  fill_in :player_1_name, with: name1
  fill_in :player_2_name, with: name2
  click_button 'Submit'
end

def solo_game
  visit("/")
  click_button "Solo Game"
end

def solo_submit_name(name)
  visit("/")
  click_button "Solo Game"
  fill_in :player_1_name, with: name
  click_button 'Submit'
end

def solo_submit_name_select_rock(name)
  visit("/")
  click_button "Solo Game"
  fill_in :player_1_name, with: name
  click_button 'Submit'
  click_button "Rock"
end
