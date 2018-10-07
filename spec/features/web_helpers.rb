def begin_single_player_game
  visit('/')
  click_button "single_player"
  fill_in :player1_name, with: 'Dave'
  click_button "Submit"
end

def begin_multiplayer_game
  visit('/')
  click_button "multiplayer"
  fill_in :player1_name, with: 'Dave'
  fill_in :player2_name, with: 'Ben'
  click_button "Submit"
end
