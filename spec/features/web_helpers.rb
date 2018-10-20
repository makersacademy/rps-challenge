def enter_names
  visit('/')
  fill_in :player_1_name, with: 'Todd'
  fill_in :player_2_name, with: 'James'
end

def sign_in_and_play_standard
  enter_names
  choose('Standard')
  click_button 'Submit'
end

def sign_in_and_play_extra
  enter_names
  choose('Extra')
  click_button 'Submit'
end

def sign_in_and_play_custom
  enter_names
  choose('Custom')
  click_button 'Submit'
end

def player_one_game
  choose('Rock')
  click_button('Submit')
  choose('Paper')
  click_button('Submit')
end
