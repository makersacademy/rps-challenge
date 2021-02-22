def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Ken'
  # fill_in :player_2_name, with: 'Rohan'
  click_button 'Submit'
end

def make_moves
  fill_in :player_1_move, with: 'rock'
  # fill_in :move_2, with: 'paper'
  click_button 'Submit'
end