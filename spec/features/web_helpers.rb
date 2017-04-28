def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'PlayerOne')
  click_button('Submit')
end

def play_winning_game
  2.times do
    srand(3)
    click_button('ROCK')
    click_button('Next')
  end
  srand(3)
  click_button('ROCK')
end

def play_losing_game
  2.times do
    srand(1)
    click_button('ROCK')
    click_button('Next')
  end
  srand(1)
  click_button('ROCK')
end
