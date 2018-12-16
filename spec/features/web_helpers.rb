def sign_in_and_play
  visit '/'
  fill_in :player_1, with: 'Gon'
  click_button 'Submit'
end

def choose_rock_and_submit
  choose 'rock'
  click_button 'Go!'
end

def choose_paper_and_submit
  choose 'paper'
  click_button 'Go!'
end

def choose_scissors_and_submit
  choose 'scissors'
  click_button 'Go!'
end
