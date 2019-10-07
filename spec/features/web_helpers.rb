def sign_in_and_play
  visit('/')
  fill_in :player1_name, with: 'Mario'
  fill_in :player2_name, with: 'Luigi'
  click_button 'Play!'
end
