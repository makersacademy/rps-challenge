def sign_in_and_play
  visit("/")
  fill_in(:player_name, with: "Billy")
  click_button 'Play!'
end

def select_move(move)
  select(move, from: 'possible_moves').select_option
  click_button 'Go!'
end
