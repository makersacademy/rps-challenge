def enter_one_name
  visit("/")
  click_on 'One Player'
  fill_in :player_one, with: 'Adam'
  click_button 'Submit'
end

def enter_two_names
  visit("/")
  click_on 'Two Player'
  fill_in :player_one, with: 'Mel'
  fill_in :player_two, with: 'Sue'
  click_button 'Submit'
end

def select_rock
  enter_one_name
  click_button 'Rock'
end

def two_player_draw
  click_button 'Rock'
  click_button 'Rock'
end

def two_player_p1_win
  click_button 'Rock'
  click_button 'Paper'
end
