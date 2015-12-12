def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'Ed'
  click_button('Submit')
end

def play_a_round
  sign_in_and_play
  click_button('Scissors')
  click_button('Outcome')
  click_button('Play again')
end
