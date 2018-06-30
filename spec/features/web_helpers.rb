def play_computer
  visit('/')
  click_button('computer')
end

def play_multiplayer
  visit('/')
  click_button('multiplayer')
end

def sign_in_and_play
  fill_in 'player', with: 'Josu'
  click_button('Start round!')
end

def both_sign_in_and_play
  fill_in 'player', with: 'Josu'
  fill_in 'player2', with: 'Jaime'
  click_button('Start round!')
end
