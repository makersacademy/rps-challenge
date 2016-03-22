def sign_in_and_play
  visit('/')
  fill_in 'player1', with: "Simon"
  click_button 'DUEL'

end

def play_rock
  click_button 'ROCK'
end

def play_paper
  click_button 'PAPER'
end

def play_scissors
  click_button 'SCISSORS'
end
