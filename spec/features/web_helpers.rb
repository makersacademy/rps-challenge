def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Charlotte'
  click_button 'Submit'
end

def opp
  choice = ["rock", "paper", "scissors"].sample
end