def play_single
  visit('/')
  click_button('Single Player')
  fill_in :player1, with: 'Sid'
  click_button('Submit')
end
