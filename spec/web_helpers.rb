def sign_in_and_play
  visit('/')
  fill_in :player_name, with: 'Max'
  click_button 'submit player name'
end

def sign_in_and_play_multiplayer
  visit('/')
  fill_in :player_name, with: 'Max'
  fill_in :player2_name, with: 'Charlotte'
  click_button 'submit player name'
end

def both_choose_rock
  fill_in :player_move, with: 'rock'
  fill_in :player2_move, with: 'rock'
  click_button 'Submit Move'
end

def both_choose_paper
  fill_in :player_move, with: 'paper'
  fill_in :player2_move, with: 'paper'
  click_button 'Submit Move'
end

def both_choose_scissors
  fill_in :player_move, with: 'scissors'
  fill_in :player2_move, with: 'scissors'
  click_button 'Submit Move'
end

def rock_and_scissors
  fill_in :player_move, with: 'rock'
  fill_in :player2_move, with: 'scissors'
  click_button 'Submit Move'
end

def rock_and_paper
  fill_in :player_move, with: 'rock'
  fill_in :player2_move, with: 'paper'
  click_button 'Submit Move'
end

def paper_and_rock
  fill_in :player_move, with: 'paper'
  fill_in :player2_move, with: 'rock'
  click_button 'Submit Move'
end

def paper_and_scissors
  fill_in :player_move, with: 'paper'
  fill_in :player2_move, with: 'scissors'
  click_button 'Submit Move'
end

def scissors_and_rock
  fill_in :player_move, with: 'scissors'
  fill_in :player2_move, with: 'rock'
  click_button 'Submit Move'
end

def scissors_and_paper
  fill_in :player_move, with: 'scissors'
  fill_in :player2_move, with: 'paper'
  click_button 'Submit Move'
end
