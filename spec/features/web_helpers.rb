def sign_in_and_play_single_player
  visit('/')
  click_button 'single_player'
  fill_in :player1, with: 'Tom'
  click_button 'Submit'
end

def sign_in_and_play_multi_player(player1name = "Tom", player2name = "Andrew")
  visit('/')
  click_button 'multi_player'
  fill_in :player1, with: player1name
  fill_in :player2, with: player2name
  click_button 'Submit'
end

def first_player_chooses_rock
  click_button 'rock'
end

def second_player_chooses_scissors
  click_button 'scissors'
end
