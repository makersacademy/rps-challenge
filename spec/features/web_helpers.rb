def sign_in_and_play
  visit('/')
  fill_in('player_1', with: 'PlayerOne')
  fill_in('best_of', with: 5)
  click_button('Submit')
end

def play_winning_game
  2.times do
    srand(1)
    find("#rock").click
    click_button('Next')
  end
  srand(1)
  find("#rock").click
end

def play_losing_game
  2.times do
    srand(9)
    find("#rock").click
    click_button('Next')
  end
  srand(9)
  find("#rock").click
end
