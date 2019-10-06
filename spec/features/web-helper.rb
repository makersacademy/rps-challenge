def single_player_sign_in
  visit('/')
  click_button('Single Player Mode')
  fill_in :player1, with: 'Nathan'
  click_button('Start')
end
