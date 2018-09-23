def sign_in_one_player
  visit("/")
  click_button 'One Player!'
  fill_in(:player_name_1, with: "Billy")
  click_button 'Play!'
end

def select_move(move)
  select(move, from: 'possible_moves').select_option
  click_button 'Go!'
end
