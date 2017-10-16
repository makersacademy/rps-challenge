def sign_in_and_play_single_player
  visit('/')
  click_button 'single_player'
  fill_in :player1, with: 'Tom'
  click_button 'Submit'
end

def sign_in_and_play_multi_player
  visit('/')
  click_button 'multi_player'
  fill_in :player1, with: 'Tom'
  fill_in :player2, with: 'Andrew'
  click_button 'Submit'
end
