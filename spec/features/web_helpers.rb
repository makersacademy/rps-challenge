def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Joe'
  click_button 'Submit'
end

def player_1_chooses_rock
  fill_in :player_choice, with: 'rock'
  click_button 'Play'
end

def player_1_chooses_paper
  fill_in :player_choice, with: 'paper'
  click_button 'Play'
end

def player_1_chooses_scissors
  fill_in :player_choice, with: 'scissors'
  click_button 'Play'
end