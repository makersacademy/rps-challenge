def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Tom'
  click_button('Play')
end

def play_round
  click_button('Rock')
end

def play_again
  click_button('Play Again')
end

def play_multiple_rounds
  2.times do
    play_round
    play_again
  end
  play_round
end
