def register_and_play
  visit('/')
  fill_in :player, with: 'player_name'
  click_button('Submit')
end

def enter_player_move
  fill_in('move', with: 'Rock')
  click_button('Play')
end
