def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Moxie'
  click_button 'Submit'
end

def choose_rock
  choose 'rock'
  click_button 'Submit'
end

def choose_paper
  choose 'paper'
  click_button 'Submit'
end

def choose_scissors
  choose 'scissors'
  click_button 'Submit'
end
