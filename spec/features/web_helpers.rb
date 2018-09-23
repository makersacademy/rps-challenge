def sign_in_one_player
  visit('/')
  click_button 'One Player!'
  fill_in(:player_name_1, with: 'Billy')
  click_button 'Play!'
end

def sign_in_two_players
  visit('/')
  click_button 'Two Player!'
  fill_in(:player_name_1, with: 'Billy')
  fill_in(:player_name_2, with: 'Barry')
  click_button 'Play!'
end

def select_move(move)
  select(move, from: 'possible_moves').select_option
  click_button 'Go!'
end
