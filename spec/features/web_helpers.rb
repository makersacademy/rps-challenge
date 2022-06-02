def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Joe'
  fill_in :player_2_name, with: 'Dan'
  click_button 'Submit'
end

def player_1_rock_p2_scissors
  fill_in :player_1_choice, with: 'rock'
  fill_in :player_2_choice, with: 'scissors'
  click_button 'Play'
end

def player_1_paper_p2_scissors
  fill_in :player_1_choice, with: 'paper'
  fill_in :player_2_choice, with: 'scissors'
  click_button 'Play'
end

def player_1_scissors_p2_scissors
  fill_in :player_1_choice, with: 'scissors'
  fill_in :player_2_choice, with: 'scissors'
  click_button 'Play'
end

def player_2_rock_p1_paper
  fill_in :player_1_choice, with: 'paper'
  fill_in :player_2_choice, with: 'rock'
  click_button 'Play'
end

def player_2_paper_p1_scissors
  fill_in :player_1_choice, with: 'scissors'
  fill_in :player_2_choice, with: 'paper'
  click_button 'Play'
end

def player_2_scissors_p1_rock
  fill_in :player_1_choice, with: 'rock'
  fill_in :player_2_choice, with: 'scissors'
  click_button 'Play'
end