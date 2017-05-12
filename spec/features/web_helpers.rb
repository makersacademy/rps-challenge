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

def sign_in_2_players_and_play
  visit('/')
  fill_in('player_1', with: 'PlayerOne')
  fill_in('player_2', with: 'PlayerTwo')
  fill_in('best_of', with: 5)
  click_button('Submit')
end

def play_2_player
  2.times do
    find("#rock").click
    find("#paper").click
    click_button('Next')
  end
  find("#rock").click
  find("#paper").click
end
