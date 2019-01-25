def load_and_play
  visit '/'
  fill_in 'name', with: 'Lily'
  click_on 'Play'
end

def user_move_rock
  select 'rock', from: 'move'
  click_on 'Go!'
end
