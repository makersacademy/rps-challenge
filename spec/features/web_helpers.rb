def sign_in_and_select_move
  visit('/')
  fill_in :player1, with: 'james'
  fill_in :move, with: 'rock'
  click_button 'submit'
end
