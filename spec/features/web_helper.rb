def single_player_sign_in
  visit('/')
  click_button('Single Player Mode')
  fill_in :player1, with: 'Nathan'
  click_button('Start')
end

def multiplayer_sign_in
  visit('/')
  click_button('Multiplayer Mode')
  fill_in :player1, with: 'Nathan'
  fill_in :player2, with: 'Rachel'
  click_button('Start')
end

def reveal_winner
  click_button 'Reveal Winner'
  click_button 'Reveal Winner'
end
