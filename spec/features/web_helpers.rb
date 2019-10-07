def load_and_play
  visit '/'
  select 'Battle computer', from: 'type'
  click_on 'Play'
  fill_in 'name', with: 'Lily'
  click_on 'Play'
end

def user_move_rock
  select 'rock', from: 'move'
  click_on 'Go!'
end

def load_and_play_two_player
  visit '/'
  select '2 player', from: 'type'
  click_on 'Play'
  fill_in 'name', with: 'Lily'
  fill_in 'name2', with: 'James'
  click_on 'Play'
end
